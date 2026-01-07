class DiagnosisService
  PATTERNS = {
    #1
    "attraction_early_buy_yes" => {
      dpa_attraction:{
        name: "アナとエルサのフローズンジャーニー",
        memo: nil
      },
      dpa_show:{
        name: "ビリーブ！～シー・オブ・ドリームス～",
        memo: nil
      }, 
      first:{
        name: "センター・オブ・ジ・アース",
        memo: nil
      }, 
      pp:{
        name: "レイジングスピリッツ",
        memo: nil
      },
      lunch:{
        name: "スナグリーダックリング",
        time: "10:30",
        memo: "モバイルオーダー"
      },
      dinner:{
        name: "ニューヨーク・デリ",
        time: "18:30",
        memo: "モバイルオーダー、DPA席に入場次第食事"
      },
    },
    #2
    "attraction_early_buy_no" => {
      dpa_attraction:{
        name: "アナとエルサのフローズンジャーニー",
        memo: nil
      },
      dpa_show:{
        name: "ビリーブ！～シー・オブ・ドリームス～",
        memo: nil
      }, 
      first:{
        name: "スカットルのスクーター",
        memo: nil
      }, 
      pp:{
        name: "ニモ＆フレンズ・シーライダー",
        memo: nil
      },
      lunch:{
        name: "スナグリーダックリング",
        time: "10:30",
        memo: "モバイルオーダー"
      },
      dinner:{
        name: "ニューヨーク・デリ",
        time: "18:30",
        memo: "モバイルオーダー、DPA席に入場次第食事"
      },
    },
    #3
    "attraction_early_no_buy_yes" => {
      dpa_attraction:{
        name: nil,
        memo: nil
      },
      dpa_show:{
        name: nil,
        memo: nil
      }, 
      first:{
        name: "センター・オブ・ジ・アース",
        memo: nil
      },
      pp:{
        name: "レイジングスピリッツ",
        memo: nil
      },
      lunch:{
        name: "スナグリーダックリング",
        time: "10:30",
        memo: "モバイルオーダー"
      },
      dinner:{
        name: "ザンビーニ・ブラザーズ・リストランテ",
        time: "16:30",
        memo: "モバイルオーダー"
      },
    },
    #4
    "attraction_early_no_buy_no" => {
      dpa_attraction:{
        name: nil,
        memo: nil
      },
      dpa_show:{
        name: nil,
        memo: nil
      },
      first:{
        name: "スカットルのスクーター",
        memo: nil
      }, 
      pp:{
        name: "ニモ＆フレンズ・シーライダー",
        memo: nil
      },
      lunch:{
        name: "スナグリーダックリング",
        time: "10:30",
        memo: "モバイルオーダー"
      },
      dinner:{
        name: "ザンビーニ・ブラザーズ・リストランテ",
        time: "16:30",
        memo: "モバイルオーダー"
      },
    },

    #5
    "attraction_normal_buy_yes" => {
      dpa_attraction:{
        name: "アナとエルサのフローズンジャーニー",
        memo: "アナ雪のDPAが売り切れの場合は、ソアリンのDPAを購入。"
      },
      dpa_show:{
        name: "ビリーブ！～シー・オブ・ドリームス～",
        memo: nil
      }, 
      first:{
        name: "スカットルのスクーター",
        memo: nil
      }, 
      pp:{
        name: "レイジングスピリッツ",
        memo: "レイジングのPPが発見終了の場合は、ニモのPPを取得"
      },
      lunch:{
        name: "セバスチャンのカプリソキッチン",
        time: "10:30",
        memo: "モバイルオーダー"
      },
      dinner:{
        name: "ニューヨーク・デリ",
        time: "18:30",
        memo: "モバイルオーダー、DPA席に入場次第食事"
      },
    },
    #6
    "attraction_normal_buy_no" => {
      dpa_attraction:{
        name: "アナとエルサのフローズンジャーニー",
        memo: "アナ雪のDPAが売り切れの場合は、ソアリンのDPAを購入。"
      },
      dpa_show:{
        name: "ビリーブ！～シー・オブ・ドリームス～",
        memo: nil
      }, 
      first:{
        name: "スカットルのスクーター",
        memo: nil
      }, 
      pp:{
        name:  "ニモ＆フレンズ・シーライダー",
        memo: nil
      },
      lunch:{
        name: "セバスチャンのカプリソキッチン",
        time: "10:30",
        memo: "モバイルオーダー"
      },
      dinner:{
        name: "ニューヨーク・デリ",
        time: "18:30",
        memo: "モバイルオーダー、DPA席に入場次第食事"
      },
    },
    #7
    "attraction_normal_no_buy_yes" => {
      dpa_attraction:{
        name: nil,
        memo: nil
      },
      dpa_show:{
        name: nil,
        memo: nil
      },
      first:{
        name: "スカットルのスクーター",
        memo: nil
      }, 
      pp:{
        name: "レイジングスピリッツ",
        memo: "レイジングのPPが発見終了の場合は、ニモのPPを取得"
      },
      lunch:{
        name: "セバスチャンのカプリソキッチン",
        time: "10:30",
        memo: "モバイルオーダー"
      },
      dinner:{
        name: "ザンビーニ・ブラザーズ・リストランテ",
        time: "16:30",
        memo: "モバイルオーダー"
      },
    },
    #8
    "attraction_normal_no_buy_no" => {
      dpa_attraction:{
        name: nil,
        memo: nil
      },
      dpa_show:{
        name: nil,
        memo: nil
      },
      first:{
        name: "スカットルのスクーター",
        memo: nil
      }, 
      pp:{
        name: "ニモ＆フレンズ・シーライダー",
        memo: nil
      },
      lunch:{
        name: "セバスチャンのカプリソキッチン",
        time: "10:30",
        memo: "モバイルオーダー"
      },
      dinner:{
        name: "ザンビーニ・ブラザーズ・リストランテ",
        time: "16:30",
        memo: "モバイルオーダー"
      },
    },

    #9
    "show_early_buy_yes" => {
      dpa_attraction:{
        name: "アナとエルサのフローズンジャーニー",
        memo: nil
      },
      dpa_show:{
        name: "ビリーブ！～シー・オブ・ドリームス～",
        memo: nil
      }, 
      first:{
        name: "センター・オブ・ジ・アース",
        memo: nil
      }, 
      pp:{
        name: "レイジングスピリッツ",
        memo: nil
      },
      lunch:{
        name: "ニューヨーク・デリ",
        time: "10:00",
        memo: "モバイルオーダー、場所取りしながらパレードを待つ"
      },
      dinner:{
        name: "ドックサイドダイナー",
        time: "18:30",
        memo: "モバイルオーダー、DPA席に入場次第食事"
      },
    },
    #10
    "show_early_buy_no" => {
      dpa_attraction:{
        name: "アナとエルサのフローズンジャーニー",
        memo: nil
      },
      dpa_show:{
        name: "ビリーブ！～シー・オブ・ドリームス～",
        memo: nil
      }, 
      first:{
        name: "スカットルのスクーター",
        memo: nil
      }, 
      pp:{
        name: "ニモ＆フレンズ・シーライダー",
        memo: nil
      },
      lunch:{
        name: "ニューヨーク・デリ",
        time: "10:00",
        memo: "モバイルオーダー、場所取りしながらパレードを待つ"
      },
      dinner:{
        name: "ドックサイドダイナー",
        time: "18:30",
        memo: "モバイルオーダー、DPA席に入場次第食事"
      },
    },
    #11
    "show_early_no_buy_yes" => {
      dpa_attraction:{
        name: nil,
        memo: nil
      },
      dpa_show:{
        name: nil,
        memo: nil
      },
      first:{
        name: "センター・オブ・ジ・アース",
        memo: nil
      }, 
      pp:{
        name: "レイジングスピリッツ",
        memo: nil
      },
      lunch:{
        name: "ニューヨーク・デリ",
        time: "10:00",
        memo: "モバイルオーダー、場所取りしながらパレードを待つ"
      },
      dinner:{
        name: "ドックサイドダイナー",
        time: "17:00",
        memo: "モバイルオーダー、場所取りしながらパレードを待つ"
      },
    },
    #12
    "show_early_no_buy_no" => {
      dpa_attraction:{
        name: nil,
        memo: nil
      },
      dpa_show: nil,
      first:{
        name: "スカットルのスクーター",
        memo: nil
      }, 
      pp:{
        name: "ニモ＆フレンズ・シーライダー",
        memo: nil
      },
      lunch:{
        name: "ニューヨーク・デリ",
        time: "10:00",
        memo: "モバイルオーダー、場所取りしながらパレードを待つ"
      },
      dinner:{
        name: "ドックサイドダイナー",
        time: "17:00",
        memo: "モバイルオーダー、場所取りしながらパレードを待つ"
      },
    },

    #13
    "show_normal_buy_yes" => {
      dpa_attraction:{
        name: "アナとエルサのフローズンジャーニー",
        memo: "アナ雪のDPAが売り切れの場合は、ソアリンのDPAを購入。"
      },
      dpa_show:{
        name: "ビリーブ！～シー・オブ・ドリームス～",
        memo: nil
      }, 
      first:{
        name: "スカットルのスクーター",
        memo: nil
      }, 
      pp:{
        name: "レイジングスピリッツ",
        memo: "レイジングのPPが発見終了の場合は、ニモのPPを取得"
      },
      lunch:{
        name: "ニューヨーク・デリ",
        time: "10:00",
        memo: "モバイルオーダー、場所取りしながらパレードを待つ"
      },
      dinner:{
        name: "ドックサイドダイナー",
        time: "18:30",
        memo: "モバイルオーダー、DPA席に入場次第食事"
      },
    },
    #14
    "show_normal_buy_no" => {
      dpa_attraction:{
        name: "アナとエルサのフローズンジャーニー",
        memo: "アナ雪のDPAが売り切れの場合は、ソアリンのDPAを購入。"
      },
      dpa_show:{
        name: "ビリーブ！～シー・オブ・ドリームス～",
        memo: nil
      }, 
      first:{
        name: "スカットルのスクーター",
        memo: nil
      }, 
      pp:{
        name: "ニモ＆フレンズ・シーライダー",
        memo: nil
      },
      lunch:{
        name: "ニューヨーク・デリ",
        time: "10:00",
        memo: "モバイルオーダー、場所取りしながらパレードを待つ"
      },
      dinner:{
        name: "ドックサイドダイナー",
        time: "18:30",
        memo: "モバイルオーダー、DPA席に入場次第食事"
      },
    },
    #15
    "show_normal_no_buy_yes" => {
      dpa_attraction:{
        name: nil,
        memo: nil
      },
      dpa_show:{
        name: nil,
        memo: nil
      },
      first:{
        name: "スカットルのスクーター",
        memo: nil
      }, 
      pp:{
        name: "レイジングスピリッツ",
        memo: "レイジングのPPが発見終了の場合は、ニモのPPを取得"
      },
      lunch:{
        name: "ニューヨーク・デリ",
        time: "10:00",
        memo: "モバイルオーダー、場所取りしながらパレードを待つ"
      },
      dinner:{
        name: "ドックサイドダイナー",
        time: "17:00",
        memo: "モバイルオーダー、場所取りしながらパレードを待つ"
      },
    },
    #16
    "show_normal_no_buy_no" => {
      dpa_attraction:{
        name: nil,
        memo: nil
      },
      dpa_show:{
        name: nil,
        memo: nil
      },
      first:{
        name: "スカットルのスクーター",
        memo: nil
      }, 
      pp:{
        name: "ニモ＆フレンズ・シーライダー",
        memo: nil
      },
      lunch:{
        name: "ニューヨーク・デリ",
        time: "10:00",
        memo: "モバイルオーダー、場所取りしながらパレードを待つ"
      },
      dinner:{
        name: "ドックサイドダイナー",
        time: "17:00",
        memo: "モバイルオーダー、場所取りしながらパレードを待つ"
      },
    },
  }

  def self.call(focus:, morning:, dpa:, thrill:)
    key = [focus, morning, dpa, thrill].join("_")
    PATTERNS[key]
  end
end