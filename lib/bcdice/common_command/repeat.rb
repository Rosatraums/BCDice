module BCDice
  module CommonCommand
    class Repeat
      PREFIX_PATTERN = /^(rep|repeat|x)\d+/.freeze

      COMMAND_REGEXP = /\A(?:rep|repeat|x)(\d+)(?: |$)/i.freeze
      REPEAT_LIMIT = 100

      class << self
        def eval(command, game_system, randomizer)
          cmd = parse(command)
          cmd&.roll(game_system, randomizer)
        end

        private

        def parse(command)
          m = COMMAND_REGEXP.match(command)
          return nil unless m

          trailer = command.split(" ", 2)[1]
          return nil if trailer.nil? || trailer.empty?

          new(
            times: m[1].to_i,
            trailer: trailer
          )
        end
      end

      def initialize(times:, trailer:)
        @times = times
        @trailer = trailer
      end

      def roll(game_system, randomizer)
        err = validate()
        return err if err

        results = Array.new(@times) do
          cmd = game_system.class.new(@trailer)
          cmd.randomizer = randomizer
          cmd.eval()
        end

        if results.count(nil) == @times
          return result_with_text("繰り返し対象のコマンドが実行できませんでした (#{@trailer})")
        end

        text = results.map.with_index(1) { |r, index| "\##{index}\n#{r.text}" }.join("\n")
        result_with_text(text)
      end

      private

      def validate
        if COMMAND_REGEXP.match?(@trailer)
          return result_with_text("Repeatコマンドの重複はできません")
        end

        if @times < 1 || REPEAT_LIMIT < @times
          return result_with_text("繰り返し回数は1以上、#{REPEAT_LIMIT}以下が指定可能です")
        end
      end

      def result_with_text(text)
        Result.new.tap do |r|
          r.text = text
        end
      end
    end
  end
end
