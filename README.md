# ahk-config / AutoHotkey 設定

## 目的

- 日本語キーボードを US 配列で使用
- タイルウインドウ操作
- 矢印/PageUp/PageDown/Home/End 等をホームポジションから離れずに押せるように
- よく使うアプリケーションの Launch or Focus

## 設定方法(HHKB-JP)

- 左Fn -> 左Ctrl / Contrl -> Caps になるようにディップスイッチで設定
- リソースを変更して次のようにマッピング
    - 変換キー -> F11
    - 無変換キー -> ESC
    - 左コントロールキー(左Fnキー） -> F12
    - Caps -> 左Control
    - [\_] -> 右シフト
    - 右シフト -> 右コントロール
    - ESC -> [半角/全角]
- Windows の設定で[英語101]キーボードを選択

## マッピング

  - Ctrl キーとの同時押し (ctrl.ahk)

      | FROM        | TO                          |
      |-------------|-----------------------------|
      | h           | Backspace (mintty 以外)     |
      | m           | Enter                       |

    - 代替

      | FROM        | TO                          |
      |-------------|-----------------------------|
      | NumpadEnter | ^m                          |
      | Help        | ^h                          |


  - 矢印/PgUp/PgDn/Home/Endキーマッピング（hjkl.ahk）

      | FROM          | TO                          |
      |---------------|-----------------------------|
      | h j k l       | 矢印キー                    |
      | 1 2 ... 0 - ^ | F1 F2 ... F10               |
      | i o           | PgUp PgDn                   |
      | , .           | Home End                    |
      | n             | Insert                      |
      | m             | Delete                      |
      | u             | AppsKey                     |

  - アプリケーション切り替え (app.ahk）

      | FROM          | TO                          |
      |---------------|-----------------------------|
      | a w s e d     | RWin+1 RWin+2 ... RWin+5    |
      | r f t g y     | RWin+6 RWin+7 ... RWin+0    |

  - 名前によるアプリケーション切り替え (app-by-name.ahk）

      | KEY | APPLICATION                 |
      |-----|-----------------------------|
      | a   | Explorer                    |
      | w   | -> RWin+2                   |
      | s   | Terminal(Mintty)            |
      | e   | Editor(Code)                |
      | d   | (Win+5)                     |
      | r   | -> RWin+6                   |
      | f   | -> RWin+7                   |
      | t   | (Win+8)                     |
      | g   | (Win+9)                     |

  - ウインドウコントロール （tile.ahk)

      | KEY         | Window                               |
      |-------------|--------------------------------------|
      | h j k l     | 1/2-{左 下 上 右}-メインディスプレイ |
      | 矢印        | 1/2-{左 下 上 右}-サブディスプレイ   |
      | 1 2         | 左-70%幅 右-90%幅                    |
      | 4 5         | 右-30%幅 左-70%幅                    |
      | SPC         | 中央 65%幅                           |
      | 8 9 0       | 1/3-サブディスプレイ 30%高           |
      | n           | メインディスプレイ最大化             |
      | m           | サブディスプレイ最大化               |

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
