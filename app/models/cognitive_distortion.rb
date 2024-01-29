class CognitiveDistortion < ActiveHash::Base
  # ActiveHashの機能を使用してデータを定義
  self.data = [
    { id: 1, name: '全か無か思考' },
    { id: 2, name: '一般化のし過ぎ' },
    { id: 3, name: '心のフィルター' },
    { id: 4, name: 'マイナス化思考' },
    { id: 5, name: '結論の飛躍' },
    { id: 6, name: '拡大解釈と過小評価' },
    { id: 7, name: '感情的決めつけ' },
    { id: 8, name: 'すべき思考' },
    { id: 9, name: 'レッテル貼り' },
    { id: 10, name: '個人化' }
  ]

  # ActiveHashの関連付けを実現するための記述
  include ActiveHash::Associations
  has_many :works
end