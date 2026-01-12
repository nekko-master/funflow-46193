class Target < ActiveHash::Base
  self.data = [
    # アトラクション
    { id: 1, name: 'トランジットスチーマーライン（メディテレーニアンハーバー発）', category: 'attraction', area: 'mediterranean_harbor' },
    { id: 2, name: 'ソアリン：ファンタスティック・フライト', category: 'attraction', area: 'mediterranean_harbor', dpa: true },
    { id: 3, name: 'フォートレス・エクスプロレーション', category: 'attraction', area: 'mediterranean_harbor' },
    { id: 4, name: 'ヴェネツィアン・ゴンドラ', category: 'attraction', area: 'mediterranean_harbor' },
    { id: 5, name: 'ザ・レオナルドチャレンジ', category: 'attraction', area: 'mediterranean_harbor' },
    { id: 6, name: 'タートル・トーク', category: 'attraction', area: 'american_waterfront', pp: true },
    { id: 7, name: 'タワー・オブ・テラー', category: 'attraction', area: 'american_waterfront', dpa: true },
    { id: 8, name: 'エレクトリックレールウェイ（アメリカンウォーターフロント発）', category: 'attraction', area: 'american_waterfront' },
    { id: 9, name: 'トランジットスチーマーライン（一周）（アメリカンウォーターフロント発）', category: 'attraction', area: 'american_waterfront' },
    { id: 10, name: 'トイ・ストーリー・マニア！', category: 'attraction', area: 'american_waterfront', dpa: true },
    { id: 11, name: 'ビッグシティ・ヴィークル', category: 'attraction', area: 'american_waterfront' },
    { id: 12, name: 'アクアトピア', category: 'attraction', area: 'port_discovery' },
    { id: 13, name: 'エレクトリックレールウェイ（ポートディスカバリー発）', category: 'attraction', area: 'port_discovery' },
    { id: 14, name: 'ニモ＆フレンズ・シーライダー', category: 'attraction', area: 'port_discovery', pp: true },
    { id: 15, name: 'インディ・ジョーンズ', category: 'attraction', area: 'lost_river_delta', pp: true },
    { id: 16, name: 'トランジットスチーマーライン（ロストリバーデルタ発）', category: 'attraction', area: 'lost_river_delta' },
    { id: 17, name: 'レイジングスピリッツ', category: 'attraction', area: 'lost_river_delta', pp: true },
    { id: 18, name: 'アナとエルサのフローズンジャーニー', category: 'attraction', area: 'fantasy_springs', dpa: true },
    { id: 19, name: 'ラプンツェルのランタンフェスティバル', category: 'attraction', area: 'fantasy_springs', dpa: true },
    { id: 20, name: 'ピーターパンのネバーランドアドベンチャー', category: 'attraction', area: 'fantasy_springs', dpa: true },
    { id: 21, name: 'フェアリー・ティンカーベルのビジーバギー', category: 'attraction', area: 'fantasy_springs' },
    { id: 22, name: 'キャラバンカルーセル', category: 'attraction', area: 'arabian_coast' },
    { id: 23, name: 'ジャスミンのフライングカーペット', category: 'attraction', area: 'arabian_coast' },
    { id: 24, name: 'シンドバッド・ストーリーブック・ヴォヤッジ', category: 'attraction', area: 'arabian_coast' },
    { id: 25, name: 'マジックランプシアター', category: 'attraction', area: 'arabian_coast', pp: true },
    { id: 26, name: 'アリエルのプレイグラウンド', category: 'attraction', area: 'mermaid_lagoon' },
    { id: 27, name: 'ジャンピン・ジェリーフィッシュ', category: 'attraction', area: 'mermaid_lagoon' },
    { id: 28, name: 'スカットルのスクーター', category: 'attraction', area: 'mermaid_lagoon' },
    { id: 29, name: 'フランダーのフライングフィッシュコースター', category: 'attraction', area: 'mermaid_lagoon' },
    { id: 30, name: 'ブローフィッシュ・バルーンレース', category: 'attraction', area: 'mermaid_lagoon' },
    { id: 31, name: 'マーメイドラグーンシアター', category: 'attraction', area: 'mermaid_lagoon' },
    { id: 32, name: 'ワールプール', category: 'attraction', area: 'mermaid_lagoon' },
    { id: 33, name: '海底2万マイル', category: 'attraction', area: 'mysterious_island', pp: true },
    { id: 34, name: 'センター・オブ・ジ・アース', category: 'attraction', area: 'mysterious_island', dpa: true },
    #
    # レストラン
    { id: 35, name: 'カフェ・ポルトフィーノ', category: 'restaurant', area: 'mediterranean_harbor' },
    { id: 36, name: 'ゴンドリエ・スナック', category: 'restaurant', area: 'mediterranean_harbor' },
    { id: 37, name: 'ザンビーニ・ブラザーズ・リストランテ', category: 'restaurant', area: 'mediterranean_harbor', mobile_order: true },
    { id: 38, name: 'マゼランズ', category: 'restaurant', area: 'mediterranean_harbor' },
    { id: 39, name: 'マンマ・ビスコティーズ・ベーカリー', category: 'restaurant', area: 'mediterranean_harbor' },
    { id: 40, name: 'リストランテ・ディ・カナレット', category: 'restaurant', area: 'mediterranean_harbor' },
    { id: 41, name: 'リフレスコス', category: 'restaurant', area: 'mediterranean_harbor', mobile_order: true },
    { id: 42, name: 'ポップコーンワゴン（ソアリン前）', category: 'restaurant', area: 'mediterranean_harbor', pp: true },
    { id: 43, name: 'S.S.コロンビア・ダイニングルーム', category: 'restaurant', area: 'american_waterfront' },
    { id: 44, name: 'ケープコッド・クックオフ', category: 'restaurant', area: 'american_waterfront', mobile_order: true },
    { id: 45, name: 'ケープコッド・クックオフ（ショーレストラン）', category: 'restaurant', area: 'american_waterfront' },
    { id: 46, name: 'ケープコッド・コンフェクション', category: 'restaurant', area: 'american_waterfront' },
    { id: 47, name: 'ドックサイドダイナー', category: 'restaurant', area: 'american_waterfront', mobile_order: true },
    { id: 48, name: 'テディ・ルーズベルト・ラウンジ', category: 'restaurant', area: 'american_waterfront' },
    { id: 49, name: 'テディ・ルーズベルト・ラウンジテラス席', category: 'restaurant', area: 'american_waterfront' },
    { id: 50, name: 'デランシー・ケータリング', category: 'restaurant', area: 'american_waterfront' },
    { id: 51, name: 'ニューヨーク・デリ', category: 'restaurant', area: 'american_waterfront', mobile_order: true },
    { id: 52, name: 'バーナクル・ビルズ', category: 'restaurant', area: 'american_waterfront' },
    { id: 53, name: 'ハイタイド・トリート', category: 'restaurant', area: 'american_waterfront' },
    { id: 54, name: 'ハドソンリバー・ハーベスト', category: 'restaurant', area: 'american_waterfront', mobile_order: true },
    { id: 55, name: 'パパダキス・フレッシュフルーツ', category: 'restaurant', area: 'american_waterfront' },
    { id: 56, name: 'リバティ・ランディング・ダイナー', category: 'restaurant', area: 'american_waterfront' },
    { id: 57, name: 'レストラン櫻', category: 'restaurant', area: 'american_waterfront', mobile_order: true },
    { id: 58, name: 'レストラン櫻テラス席', category: 'restaurant', area: 'american_waterfront' },
    { id: 59, name: 'ポップコーンワゴン（ケープコッド・クックオフ前）', category: 'restaurant', area: 'american_waterfront' },
    { id: 60, name: 'ポップコーンワゴン（ドックサイドステージ前）', category: 'restaurant', area: 'american_waterfront' },
    { id: 61, name: 'ポップコーンワゴン（リドアイル前）', category: 'restaurant', area: 'american_waterfront' },
    { id: 62, name: 'ポップコーンワゴン（リバティ・ランディング・ダイナー前）', category: 'restaurant', area: 'american_waterfront' },
    { id: 63, name: '', category: 'restaurant', area: 'american_waterfront' },
    { id: 64, name: 'シーサイドスナック', category: 'restaurant', area: 'port_discovery' },
    { id: 65, name: 'ブリーズウェイ・バイツ', category: 'restaurant', area: 'port_discovery' },
    { id: 66, name: 'ベイサイド・テイクアウト', category: 'restaurant', area: 'port_discovery' },
    { id: 67, name: 'ホライズンベイ・レストラン', category: 'restaurant', area: 'port_discovery' },
    { id: 68, name: 'ポップコーンワゴン（アクアトピア横）', category: 'restaurant', area: 'port_discovery' },
    { id: 69, name: 'エクスペディション・イート', category: 'restaurant', area: 'lost_river_delta' },
    { id: 70, name: 'トロピック・アルズ', category: 'restaurant', area: 'lost_river_delta' },
    { id: 71, name: 'ミゲルズ・エルドラド・キャンティーナ', category: 'restaurant', area: 'lost_river_delta', mobile_order: true },
    { id: 72, name: 'ユカタン・ベースキャンプ・グリル', category: 'restaurant', area: 'lost_river_delta', mobile_order: true },
    { id: 73, name: 'ユカタン・ベースキャンプ・グリル（テイクアウトカウンター）', category: 'restaurant', area: 'lost_river_delta', mobile_order: true },
    { id: 74, name: 'ロストリバークックハウス', category: 'restaurant', area: 'lost_river_delta' },
    { id: 75, name: 'ポップコーンワゴン（ハンバーステージ横）', category: 'restaurant', area: 'lost_river_delta' },
    { id: 76, name: 'アレンデール・ロイヤルバンケット', category: 'restaurant', area: 'fantasy_springs', mobile_order: true },
    { id: 77, name: 'オーケンのオーケーフード', category: 'restaurant', area: 'fantasy_springs' },
    { id: 78, name: 'スナグリーダックリング', category: 'restaurant', area: 'fantasy_springs', mobile_order: true },
    { id: 79, name: 'ルックアウト・クックアウト', category: 'restaurant', area: 'fantasy_springs', mobile_order: true },
    { id: 80, name: 'ポップコーンワゴン（フェアリー・ティンカーベルのビジーバギー前）', category: 'restaurant', area: 'fantasy_springs' },
    { id: 81, name: 'オープンセサミ', category: 'restaurant', area: 'arabian_coast' },
    { id: 82, name: 'カスバ・フードコート', category: 'restaurant', area: 'arabian_coast', mobile_order: true },
    { id: 83, name: 'サンタンズ・オアシス', category: 'restaurant', area: 'arabian_coast' },
    { id: 84, name: 'ポップコーンワゴン（アラビアンコースト前）', category: 'restaurant', area: 'arabian_coast' },
    { id: 85, name: 'セバスチャンのカプリソキッチン', category: 'restaurant', area: 'mermaid_lagoon', mobile_order: true },
    { id: 86, name: 'ポップコーンワゴン（コーヴ・オブ・ワンダー前）', category: 'restaurant', area: 'mermaid_lagoon' },
    { id: 87, name: 'ポップコーンワゴン（スカットルのスクーター前）', category: 'restaurant', area: 'mermaid_lagoon' },
    { id: 88, name: 'ヴォルケイニア・レストラン', category: 'restaurant', area: 'mysterious_island' },
    { id: 89, name: 'ノーチラスギャレー', category: 'restaurant', area: 'mysterious_island', mobile_order: true },
    { id: 90, name: 'リフレッシュメント・ステーション', category: 'restaurant', area: 'mysterious_island' },
    #
    # ショー
    { id: 91, name: 'ダンス・ザ・グローブ！', category: 'show', area: 'american_waterfront', dpa: true, entry_request: true },
    { id: 92, name: 'ドリームス・テイク・フライト', category: 'show', area: 'lost_river_delta', dpa: true, entry_request: true },
    #
    # パレード
    { id: 93, name: 'ニューデイ、ニュードリームス（花火）', category: 'parade', area: 'park_wide' },
    { id: 94, name: 'スカイ・フル・オブ・カラーズ（花火）', category: 'parade', area: 'park_wide' },
    { id: 95, name: 'ダッフィー＆フレンズのカラフルハピネスジャーニー', category: 'parade', area: 'park_wide' },
    { id: 96, name: 'ニューイヤーズ・グリーティング', category: 'parade', area: 'mediterranean_harbor' },
    { id: 97, name: 'ビリーブ！～シー・オブ・ドリームス～', category: 'parade', area: 'mediterranean_harbor', dpa: true }

  ]

  include ActiveHash::Associations
  has_many :plan_steps

  # getter メソッドを明示
  def dpa
    self[:dpa] || false
  end

  def pp
    self[:pp] || false
  end

  def entry_request
    self[:entry_request] || false
  end

  def mobile_order
    self[:mobile_order] || false
  end
end
