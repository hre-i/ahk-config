# ahk-config / AutoHotkey 設定

## 目的

- 日本語キーボードを US 配列で使用
- タイルウインドウ操作
- 矢印/PageUp/PageDown/Home/End 等をホームポジションから離れずに押せるように
- よく使うアプリケーションの Launch or Focus

## 設定方法(HHKB-JP)

- 左Fn -> 左Ctrl / Contrl -> Caps になるようにディップスイッチで設定
- リソースを変更して次のようにマッピング

    | FROM                | TO                    |
    |---------------------|-----------------------|
    | ¥＿ (00_7D)        | Escape (00_01)        |
    | Caps (00_3A)        | Left Ctrl (00_1D)     |
    | Escape (00_01)      | `~ (00_29)            |
    | Left Ctrl (00_1D)   | Right Alt (E0_38)     |
    | かな (00_70)        | Right Windows (E0_5C) |
    | Right Shift (00_36) | ＼＿ (00_73)          |
    | ＼＿_ (00_70)       | Left Shift (E0_5C)    |

- Windows の設定で[英語101]キーボードを選択

## マッピング

  - Ctrl キーとの同時押し (ctrl.ahk)

      | FROM        | TO                          |
      |-------------|-----------------------------|
      | h           | Backspace (mintty 以外)     |
      | m           | Enter                       |

  - 変換+?: 矢印/PgUp/PgDn/Home/Endキーマッピング（hjkl.ahk）

      | FROM          | TO            |
      |---------------|---------------|
      | h j k l       | 矢印キー      |
      | 1 2 ... 0 - ^ | F1 F2 ... F10 |
      | i o           | PgUp PgDn     |
      | , .           | Home End      |
      | n             | Insert        |
      | m             | Delete        |
      | u             | AppsKey       |


  - アプリケーション切り替え (app.ahk）

      | FROM          | TO                          |
      |---------------|-----------------------------|
      | a w s e d     | RWin+1 RWin+2 ... RWin+5    |
      | r f t g y     | RWin+6 RWin+7 ... RWin+0    |

  - RAlt(リソースにより左下に設定)+?: ウインドウコントロール （tile.ahk)

      | KEY         | Window                               |
      |-------------|--------------------------------------|
      | h j k l     | 1/2-{左 下 上 右}-メインディスプレイ |
      | 矢印        | 1/2-{左 下 上 右}-サブディスプレイ   |
      | 1 2         | 左-30%幅 左-70%幅                    |
      | 3 4         | 右-70%幅 右-30%幅                    |
      | SPC         | 中央 80%幅                           |
      | 8 9 0       | 1/3-サブディスプレイ 30%高           |
      | m           | メインディスプレイ最大化             |
      | Enter       | サブディスプレイ最大化               |

  - win.ahk

      | KEY         | Window                      |
      |-------------|-----------------------------|
      | RWIN + m    | WinMaximize                 |
      | RWIN + h    | WinMinimize,A               |
      | RWIN + j    | AltTab                      |
      | RWIN + k    | ShiftAltTab                 |
      | WIN + q     | Quit                        |

## キーコードメモ

SC079 ... 変換
SC07B ... 無変換
