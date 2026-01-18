class DiagnosisService
  PATTERNS = {
    # 1
    'attraction_early_buy_yes' => {
      dpa_attraction: {
        name: 'アナとエルサのフローズンジャーニー',
        memo: nil
      },
      dpa_show: {
        name: 'ビリーブ！～シー・オブ・ドリームス～',
        memo: nil
      },
      first: {
        name: 'センター・オブ・ジ・アース',
        memo: nil
      },
      pp: {
        name: 'レイジングスピリッツ',
        memo: nil
      },
      lunch: {
        name: 'スナグリーダックリング',
        memo: '10:30頃のモバイルオーダー'
      },
      dinner: {
        name: 'ニューヨーク・デリ',
        memo: '18:30頃のモバイルオーダー、DPA席に入場次第食事'
      }
    },
    # 2
    'attraction_early_buy_no' => {
      dpa_attraction: {
        name: 'アナとエルサのフローズンジャーニー',
        memo: nil
      },
      dpa_show: {
        name: 'ビリーブ！～シー・オブ・ドリームス～',
        memo: nil
      },
      first: {
        name: 'スカットルのスクーター',
        memo: nil
      },
      pp: {
        name: 'ニモ＆フレンズ・シーライダー',
        memo: nil
      },
      lunch: {
        name: 'スナグリーダックリング',
        memo: '10:30頃のモバイルオーダー'
      },
      dinner: {
        name: 'ニューヨーク・デリ',
        memo: '18:30頃のモバイルオーダー、DPA席に入場次第食事'
      }
    },
    # 3
    'attraction_early_no_buy_yes' => {
      dpa_attraction: {
        name: nil,
        memo: nil
      },
      dpa_show: {
        name: nil,
        memo: nil
      },
      first: {
        name: 'センター・オブ・ジ・アース',
        memo: nil
      },
      pp: {
        name: 'レイジングスピリッツ',
        memo: nil
      },
      lunch: {
        name: 'スナグリーダックリング',
        memo: '10:30頃のモバイルオーダー'
      },
      dinner: {
        name: 'ザンビーニ・ブラザーズ・リストランテ',
        memo: '16:30頃のモバイルオーダー'
      }
    },
    # 4
    'attraction_early_no_buy_no' => {
      dpa_attraction: {
        name: nil,
        memo: nil
      },
      dpa_show: {
        name: nil,
        memo: nil
      },
      first: {
        name: 'スカットルのスクーター',
        memo: nil
      },
      pp: {
        name: 'ニモ＆フレンズ・シーライダー',
        memo: nil
      },
      lunch: {
        name: 'スナグリーダックリング',
        memo: '10:30頃のモバイルオーダー'
      },
      dinner: {
        name: 'ザンビーニ・ブラザーズ・リストランテ',
        memo: '16:30頃のモバイルオーダー'
      }
    },

    # 5
    'attraction_normal_buy_yes' => {
      dpa_attraction: {
        name: 'アナとエルサのフローズンジャーニー',
        memo: 'アナ雪のDPAが売り切れの場合は、ソアリンのDPAを購入。'
      },
      dpa_show: {
        name: 'ビリーブ！～シー・オブ・ドリームス～',
        memo: nil
      },
      first: {
        name: 'スカットルのスクーター',
        memo: nil
      },
      pp: {
        name: 'レイジングスピリッツ',
        memo: 'レイジングのPPが発見終了の場合は、ニモのPPを取得'
      },
      lunch: {
        name: 'セバスチャンのカプリソキッチン',
        memo: '10:30頃のモバイルオーダー'
      },
      dinner: {
        name: 'ニューヨーク・デリ',
        memo: '18:30頃のモバイルオーダー、DPA席に入場次第食事'
      }
    },
    # 6
    'attraction_normal_buy_no' => {
      dpa_attraction: {
        name: 'アナとエルサのフローズンジャーニー',
        memo: 'アナ雪のDPAが売り切れの場合は、ソアリンのDPAを購入。'
      },
      dpa_show: {
        name: 'ビリーブ！～シー・オブ・ドリームス～',
        memo: nil
      },
      first: {
        name: 'スカットルのスクーター',
        memo: nil
      },
      pp: {
        name: 'ニモ＆フレンズ・シーライダー',
        memo: nil
      },
      lunch: {
        name: 'セバスチャンのカプリソキッチン',
        memo: '10:30頃のモバイルオーダー'
      },
      dinner: {
        name: 'ニューヨーク・デリ',
        memo: '18:30頃のモバイルオーダー、DPA席に入場次第食事'
      }
    },
    # 7
    'attraction_normal_no_buy_yes' => {
      dpa_attraction: {
        name: nil,
        memo: nil
      },
      dpa_show: {
        name: nil,
        memo: nil
      },
      first: {
        name: 'スカットルのスクーター',
        memo: nil
      },
      pp: {
        name: 'レイジングスピリッツ',
        memo: 'レイジングのPPが発見終了の場合は、ニモのPPを取得'
      },
      lunch: {
        name: 'セバスチャンのカプリソキッチン',
        memo: '10:30頃のモバイルオーダー'
      },
      dinner: {
        name: 'ザンビーニ・ブラザーズ・リストランテ',
        memo: '16:30頃のモバイルオーダー'
      }
    },
    # 8
    'attraction_normal_no_buy_no' => {
      dpa_attraction: {
        name: nil,
        memo: nil
      },
      dpa_show: {
        name: nil,
        memo: nil
      },
      first: {
        name: 'スカットルのスクーター',
        memo: nil
      },
      pp: {
        name: 'ニモ＆フレンズ・シーライダー',
        memo: nil
      },
      lunch: {
        name: 'セバスチャンのカプリソキッチン',
        memo: '10:30頃のモバイルオーダー'
      },
      dinner: {
        name: 'ザンビーニ・ブラザーズ・リストランテ',
        memo: '16:30頃のモバイルオーダー'
      }
    },

    # 9
    'show_early_buy_yes' => {
      dpa_attraction: {
        name: 'アナとエルサのフローズンジャーニー',
        memo: nil
      },
      dpa_show: {
        name: 'ビリーブ！～シー・オブ・ドリームス～',
        memo: nil
      },
      first: {
        name: 'センター・オブ・ジ・アース',
        memo: nil
      },
      pp: {
        name: 'レイジングスピリッツ',
        memo: nil
      },
      lunch: {
        name: 'ニューヨーク・デリ',
        memo: '10:00頃のモバイルオーダー、場所取りしながらパレードを待つ'
      },
      dinner: {
        name: 'ドックサイドダイナー',
        memo: '18:30頃のモバイルオーダー、DPA席に入場次第食事'
      }
    },
    # 10
    'show_early_buy_no' => {
      dpa_attraction: {
        name: 'アナとエルサのフローズンジャーニー',
        memo: nil
      },
      dpa_show: {
        name: 'ビリーブ！～シー・オブ・ドリームス～',
        memo: nil
      },
      first: {
        name: 'スカットルのスクーター',
        memo: nil
      },
      pp: {
        name: 'ニモ＆フレンズ・シーライダー',
        memo: nil
      },
      lunch: {
        name: 'ニューヨーク・デリ',
        memo: '10:00頃のモバイルオーダー、場所取りしながらパレードを待つ'
      },
      dinner: {
        name: 'ドックサイドダイナー',
        memo: '18:30頃のモバイルオーダー、DPA席に入場次第食事'
      }
    },
    # 11
    'show_early_no_buy_yes' => {
      dpa_attraction: {
        name: nil,
        memo: nil
      },
      dpa_show: {
        name: nil,
        memo: nil
      },
      first: {
        name: 'センター・オブ・ジ・アース',
        memo: nil
      },
      pp: {
        name: 'レイジングスピリッツ',
        memo: nil
      },
      lunch: {
        name: 'ニューヨーク・デリ',
        memo: '10:00頃のモバイルオーダー、場所取りしながらパレードを待つ'
      },
      dinner: {
        name: 'ドックサイドダイナー',
        memo: '17:00頃のモバイルオーダー、場所取りしながらパレードを待つ'
      }
    },
    # 12
    'show_early_no_buy_no' => {
      dpa_attraction: {
        name: nil,
        memo: nil
      },
      dpa_show: nil,
      first: {
        name: 'スカットルのスクーター',
        memo: nil
      },
      pp: {
        name: 'ニモ＆フレンズ・シーライダー',
        memo: nil
      },
      lunch: {
        name: 'ニューヨーク・デリ',
        memo: '10:00頃のモバイルオーダー、場所取りしながらパレードを待つ'
      },
      dinner: {
        name: 'ドックサイドダイナー',
        memo: '17:00頃のモバイルオーダー、場所取りしながらパレードを待つ'
      }
    },

    # 13
    'show_normal_buy_yes' => {
      dpa_attraction: {
        name: 'アナとエルサのフローズンジャーニー',
        memo: 'アナ雪のDPAが売り切れの場合は、ソアリンのDPAを購入。'
      },
      dpa_show: {
        name: 'ビリーブ！～シー・オブ・ドリームス～',
        memo: nil
      },
      first: {
        name: 'スカットルのスクーター',
        memo: nil
      },
      pp: {
        name: 'レイジングスピリッツ',
        memo: 'レイジングのPPが発見終了の場合は、ニモのPPを取得'
      },
      lunch: {
        name: 'ニューヨーク・デリ',
        memo: '10:00頃のモバイルオーダー、場所取りしながらパレードを待つ'
      },
      dinner: {
        name: 'ドックサイドダイナー',
        memo: '18:30頃のモバイルオーダー、DPA席に入場次第食事'
      }
    },
    # 14
    'show_normal_buy_no' => {
      dpa_attraction: {
        name: 'アナとエルサのフローズンジャーニー',
        memo: 'アナ雪のDPAが売り切れの場合は、ソアリンのDPAを購入。'
      },
      dpa_show: {
        name: 'ビリーブ！～シー・オブ・ドリームス～',
        memo: nil
      },
      first: {
        name: 'スカットルのスクーター',
        memo: nil
      },
      pp: {
        name: 'ニモ＆フレンズ・シーライダー',
        memo: nil
      },
      lunch: {
        name: 'ニューヨーク・デリ',
        memo: '10:00頃のモバイルオーダー、場所取りしながらパレードを待つ'
      },
      dinner: {
        name: 'ドックサイドダイナー',
        memo: '18:30頃のモバイルオーダー、DPA席に入場次第食事'
      }
    },
    # 15
    'show_normal_no_buy_yes' => {
      dpa_attraction: {
        name: nil,
        memo: nil
      },
      dpa_show: {
        name: nil,
        memo: nil
      },
      first: {
        name: 'スカットルのスクーター',
        memo: nil
      },
      pp: {
        name: 'レイジングスピリッツ',
        memo: 'レイジングのPPが発見終了の場合は、ニモのPPを取得'
      },
      lunch: {
        name: 'ニューヨーク・デリ',
        memo: '10:00頃のモバイルオーダー、場所取りしながらパレードを待つ'
      },
      dinner: {
        name: 'ドックサイドダイナー',
        memo: '17:00頃のモバイルオーダー、場所取りしながらパレードを待つ'
      }
    },
    # 16
    'show_normal_no_buy_no' => {
      dpa_attraction: {
        name: nil,
        memo: nil
      },
      dpa_show: {
        name: nil,
        memo: nil
      },
      first: {
        name: 'スカットルのスクーター',
        memo: nil
      },
      pp: {
        name: 'ニモ＆フレンズ・シーライダー',
        memo: nil
      },
      lunch: {
        name: 'ニューヨーク・デリ',
        memo: '10:00頃のモバイルオーダー、場所取りしながらパレードを待つ'
      },
      dinner: {
        name: 'ドックサイドダイナー',
        memo: '17:00頃のモバイルオーダー、場所取りしながらパレードを待つ'
      }
    }
  }

  APP_OPERATION_TIME = {
    early:  '09:00',
    normal: '09:30'
  }.freeze

  def self.call(focus:, morning:, dpa:, thrill:)
    key = [focus, morning, dpa, thrill].join('_')
    pattern = PATTERNS[key]
    return unless pattern

    app_time = APP_OPERATION_TIME[morning.to_sym]

    pattern.transform_values do |value|
      if value.is_a?(Hash)
        value.merge(time: app_time)
      else
        value
      end
    end
  end
end
