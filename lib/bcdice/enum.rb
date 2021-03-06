module BCDice
  # D66のダイス入れ替え
  module D66SortType
    NO_SORT = :no_sort # 入れ替えない
    ASC = :asc # 一の位が大きな出目になるよう、昇順にソートする
    DESC = :desc # 一の位が小さな出目になるよう、降順にソートする
  end

  # 割り算をした後の端数の扱い
  module RoundType
    CEIL = :ceil # 切り上げ
    FLOOR = :floor # 切り捨て
    ROUND = :round # 四捨五入
  end
end
