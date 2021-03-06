module BCDice
  module GameSystem
    class MeikyuKingdom
      # 王国名決定表１(D66)
      def mk_kingdom_name_1_table(num)
        table = [
          [11, "暗黒"],
          [12, "王政"],
          [13, "超"],
          [14, "共和制"],
          [15, "古代"],
          [16, "社会主義"],
          [22, "自由"],
          [23, "新（ネオ）"],
          [24, "神聖（セント、聖）"],
          [25, "正統"],
          [26, "絶対主義"],
          [33, "大"],
          [34, "天階"],
          [35, "深階"],
          [36, "第三"],
          [44, "中央"],
          [45, "帝政"],
          [46, "統一"],
          [55, "独立"],
          [56, "東"],
          [66, "立憲"],
        ]
        return get_table_by_number(num, table)
      end

      # 王国名決定表２(D66)
      def mk_kingdom_name_2_table(num)
        table = [
          [11, "英雄"],
          [12, "連合"],
          [13, "グランドゼロ"],
          [14, "迷宮（ダンジョン）"],
          [15, "災厄"],
          [16, "魔神（デーモン）"],
          [22, "征服"],
          [23, "中華"],
          [24, "ドラゴン（龍）"],
          [25, "猫"],
          [26, "バナナ"],
          [33, "ファンタジー"],
          [34, "冒険"],
          [35, "魔法（マジカル）"],
          [36, "超人"],
          [44, "無敵"],
          [45, "路地裏"],
          [46, "ローマ"],
          [55, "（好きな単語表で決定）"],
          [56, "（プレイ会場の地名　例：ネリマ）"],
          [66, "（国王の名前。後で決定）"],
        ]
        return get_table_by_number(num, table)
      end

      # 王国名決定表３(D66)
      def mk_kingdom_name_3_table(num)
        table = [
          [11, "王国（キングダム）"],
          [12, "王朝"],
          [13, "会社（公社）"],
          [14, "学園（学校）"],
          [15, "合衆国"],
          [16, "共同体"],
          [22, "共和国"],
          [23, "星"],
          [24, "公国"],
          [25, "市（街、シティ、ポリス）"],
          [26, "自治国"],
          [33, "植民地"],
          [34, "帝国"],
          [35, "同盟"],
          [36, "首長国"],
          [44, "幕府"],
          [45, "領"],
          [46, "村"],
          [55, "横丁（亭）"],
          [56, "ランド"],
          [66, "連邦"],
        ]
        return get_table_by_number(num, table)
      end
    end
  end
end
