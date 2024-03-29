class CognitiveDistortion < ActiveHash::Base
  # ActiveHashの機能を使用してデータを定義
  self.data = [
    { id: 1, name: '全か無か思考', description: 'ものごとを白か黒のどちらかで考える思考法。少しでもミスがあれば、完全な失敗と考えてしまう' },
    { id: 2, name: '一般化のし過ぎ', description: 'たったひとつの良くない出来事があると、世の中すべてこれだ、と考える' },
    { id: 3, name: '心のフィルター', description: 'たったひとつの良くないことにこだわって、そればかりくよくよ考え、現実を見る目が暗くなってしまう' },
    { id: 4, name: 'マイナス化思考', description: 'なぜか良い出来事を無視してしまうので、日々の生活がすべてマイナスのものになってしまう' },
    { id: 5, name: '結論の飛躍', description: '根拠もないのに悲観的な結論を出してしまう<br>1：心の読みすぎ（ある人があなたに悪く反応したと早合点してしまう）<br>2：先読みの誤り（事態は確実に悪くなる、と決めつける）' },
    { id: 6, name: '拡大解釈と過小評価', description: '自分の失敗を過大に考え、長所を過小評価する<br>逆に他人の成功を課題に評価し、他人の欠点を見逃す' },
    { id: 7, name: '感情的決めつけ', description: '自分の憂うつな感情は現実をリアルに反映している、と考える' },
    { id: 8, name: 'すべき思考', description: '何かやろうとする時に「～すべき」「～すべきでない」と考える<br>あたかもそうしないと罰でも受けるかのように感じ、罪の意識を持ちやすい<br>他人にこれを向けると、怒りや葛藤を感じる' },
    { id: 9, name: 'レッテル貼り', description: 'ミスを犯した時に、どうミスを犯したかを考える考える代わりに自分にレッテルを貼ってしまう' },
    { id: 10, name: '個人化', description: '何か良くないことが起こった時、自分に責任がないような場合にも自分のせいにしてしまう' }
  ]

  # ActiveHashの関連付けを実現するための記述
  include ActiveHash::Associations
  has_many :works

end