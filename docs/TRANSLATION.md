# Translation Reference — Joseph Joestar (joe_as)

This document contains translations of all non-English comments found in CNS, CMD, DEF, ST, AIR files. Source files use **Shift-JIS (CP932)** for Japanese and **EUC-KR** for Korean. When viewed as UTF-8, text may appear as garbled characters (mojibake).

**Note:** The original Korean files `읽어보세요.txt` (Please Read) and `Joseph_Command.txt` have been removed. Their full content is preserved in this document and in [log.md](log.md).

---

## File Names (Korean → English)

| Original (Korean) | English |
|-------------------|---------|
| 읽어보세요.txt | Please Read |
| Joseph_Command.txt | Joseph Command Reference |

---

## Original Korean File Content (읽어보세요.txt)

**Source:** `읽어보세요.txt` (Please Read)

```
Original Character : Joseph by Men'sClub
Editor : Anomi Polis + Naza15 + TheMasterFlippy

[Character Settings]
- A + Y for Hermit Purple mode. When activated, gain power gauge bonuses and see opponent's info.
- When using Hermit Purple mode, 25% chance of Cracker activation. 1.5x damage boost applies.
- AILEVEL can be used for AI difficulty. Set option - Difficulty to 1~8.
- MUGEN 1.0 or later required. Cannot use in older MUGEN.
```

---

## Original Korean Command Reference (Joseph_Command.txt)

**Source:** `Joseph_Command.txt`

### Normal Commands
- Overdrive: 236 + A (or B when close)
- Clacker: 2 + A

### Special Commands
- Red Vine: 236 + X or Y
- Hermit Purple (far): 214236 + X or Y
- Hermit Purple (mid): 236214 + A (2-hit input)
- Hermit Purple (close): 236214 + B (2-hit input)
- Thorn Vine: 236214 + X or Y
- Cracker Volley: 236214 + A or B
- Hermit Purple - Ripple Overdrive: 214236 + X or Y (or 214 + X or Y)

### Super Commands
- Hermit Purple - Boomerang Cracker: 214236 + A or B
- Hermit Purple - Ripple Overdrive: 236236 + A or B
- Hermit Purple - Boomerang Cracker: 214236214236 + A or B

### MAX Super
- Hermit Purple: 236236 + XY
- Cracker: 236236 + AB
- Thorn Vine: 214214 + X or Y

---

## General Fighting Game Terms (Japanese → English)

| Japanese (Shift-JIS) | Romaji | English |
|---------------------|--------|---------|
| パンチ | Panchi | Punch |
| ガード | Gaado | Guard |
| 2ndの判定(KO判定) | — | 2nd character (KO判定) |
| ガード(数字制限) | — | Guard (number limit) |
| ダッシュ | Dasshu | Dash |
| 低ダッシュ | Tei Dasshu | Low Dash |
| 専用用1 | Senyou You 1 | Special use 1 |
| 専用用2 | Senyou You 2 | Special use 2 |
| 下側防御値 | Kawa Gawa Bougyo Chi | Lower defense value |
| 横側防御値 | Yoko Gawa Bougyo Chi | Side defense value |
| 気絶持久 | Kizetsu Jikyuu | Stun persistence |

---

## State / Statedef Comment Mappings (joseph.cns, joseph.cmd)

| Original Comment (Japanese) | English |
|----------------------------|---------|
| FF | Forward Dash |
| BB | Back Dash |
| recovery | Recovery |
| holdfwd | Hold Forward |
| holdback | Hold Back |
| holdup | Hold Up |
| holddown | Hold Down |
| 6強 | 6 Strong (Forward + A) |
| 3強 | 3 Strong (Down-Forward + A) |
| 立ち強 | Stand Strong |
| 立ち中 | Stand Medium |
| 立ち弱 | Stand Light |
| 2中 | Crouch Medium |
| 2強 | Crouch Strong |
| 2弱 | Crouch Light |
| 2S | Crouch S |
| J中 | Jump Medium |
| J強 | Jump Strong |
| J弱 | Jump Light |
| JS | Jump S |
| 投げ | Throw |
| ガード | Guard |

---

## State / Statedef Comment Mappings (menscommon.cns)

| Original Comment | English |
|------------------|---------|
| メンズクラブ | Men'sClub |
| 無敵 | Invincible |
| ダッシュ設定 | Dash setting |
| 後ろダッシュ | Back Dash |

---

## State / Statedef Comment Mappings (joseph.st, N.st, S.st)

| Original Comment | English |
|------------------|---------|
| ジョジョ立ち | JoJo Stand |
| 汎用 | Generic |
| ジョジョ1 | JoJo 1 |
| ジョジョ2 | JoJo 2 |
| 相手がジョジョ来た時、俺にそれは無理だって言う | When opponent is JoJo, "That's impossible for me" |
| キャンセル | Cancel |
| 立ち強 | Stand Strong |
| 立ち中 | Stand Medium |
| 立ち弱 | Stand Light |
| 効果音 | Sound effect |
| 当たり判定 | Hit detection |
| 終了 | End |
| クラッカー | Cracker |
| 終了 | End |
| ガード開始 | Guard start |
| ガードが来た | Guard came |
| クラッカーボレー | Cracker Volley |

---

## Korean Comment Mappings (unotag.cns, EX.cns)

| Original (Korean) | English |
|-------------------|---------|
| 븴 | Width |
| 멹륶귟돶 | Sound |
| 맳 | Sound |
| 긏깋긞긇 | Helper |
| 멟릋 | VelSet |
| 긭긞긣믦 | HitDef |
| 뢎뿹 | ChangeState |
| 뚂믦 | BindToRoot |
| 뵽믦 | HitDef |
| 돶귩궶귞궥 | Sound |
| 긆긫긤깋귽긳갏 | Sound |
| 긇긞궻긄긲긃긏긣 | Explod |
| 뵯롅돶 | Sound |
| 뭙 | Projectile |
| 쁀똤 | ChangeState |
| 뎓뼰궢 | AssertSpecial (noshadow) |

---

## EX.cns Japanese Comment

| Original | English |
|----------|---------|
| ビット相手くらい空中 | Hit opponent roughly in air |

---

## H.st Korean Comment

| Original | English |
|----------|---------|
| 뷅귂벞뗰 | Section header (likely "Special" or similar) |

---

## Mojibake / Shift-JIS Comment Mappings (UTF-8 Display)

Source files use **Shift-JIS (CP932)**. When viewed as UTF-8, Japanese comments appear as garbled characters (mojibake). This table maps mojibake patterns and their English equivalents.

### joseph.cmd / state/joseph.cmd

| Mojibake (as seen in UTF-8) | Original (Shift-JIS) | English |
|-----------------------------|----------------------|---------|
| 後ろへ行くb | 後ろへ行く | Back Dash |
| 汎用立ち | 汎用立ち | Generic Stand |
| キャンセル | キャンセル | Cancel |
| キーボード | キーボード | Keyboard |
| 汎用コマンド前 | 汎用コマンド前 | Generic Command (Front) |
| 汎用コマンド後 | 汎用コマンド後 | Generic Command (Back) |
| 汎用コマンド対象 | 汎用コマンド対象 | Generic Command (Target) |
| 汎用コマンド両方 | 汎用コマンド両方 | Generic Command (Both) |
| GCFRoll前 | 汎用コマンド前 (Guard Cancel) | GCFRoll (Guard Cancel Forward Roll) |

### joseph.st / state/joseph.st

| Mojibake | Original | English |
|----------|----------|---------|
| ジョジョ立ち | ジョジョ立ち | JoJo Stand |
| お待たせいたしました＠＠ | お待たせいたしました | Sorry to keep you waiting |
| 勝者が決まった時、僕はここに走っている | 勝者が決まった時、僕はここに走っている | When the winner is decided, I'm running here |
| キャンセル | キャンセル | Cancel |
| 回復 | 回復 | Recovery |
| メンズクラブ | メンズクラブ | Men'sClub |
| 耳に届く音 | 耳に届く音 | Sound that reaches the ear |

### state/-2.st

| Mojibake | Original | English |
|----------|----------|---------|
| ジョジョの28番ごめんください | ジョジョの28番ごめんください | JoJo No.28, thank you (credit notice) |
| オーバードライブ:ジョジョ仕様 | オーバードライブ:ジョジョ仕様 | Overdrive: JoJo specification |

### state/N.st, S.st, H.st

| Mojibake | Original | English |
|----------|----------|---------|
| 効果音 | 効果音 | Sound effect |
| 当たり判定 | 当たり判定 | Hit detection |
| 終了 | 終了 | End |
| キャンセル | キャンセル | Cancel |
| 汎用:前 | 汎用:前 | Generic: Front |
| 汎用:後 | 汎用:後 | Generic: Back |
| 汎用:対象 | 汎用:対象 | Generic: Target |
| 汎用:両方 | 汎用:両方 | Generic: Both |
| 声を鳴らす | 声を鳴らす | Play sound / Make sound |
| 予想したのJO | 予想したのJO | Expected JO (super move) |
| キャンセル:ジョジョ仕様 | キャンセル:ジョジョ仕様 | Cancel: JoJo specification |
| オーバードライブ:ジョジョ仕様 | オーバードライブ:ジョジョ仕様 | Overdrive: JoJo specification |
| 回復 | 回復 | Recovery |
| パラメータ変更(上げ) | パラメータ変更(上げ) | Parameter change (raise) |
| メンズクラブ | メンズクラブ | Men'sClub |
| メンズクラブ重さ | メンズクラブ重さ | Men'sClub weight |
| メンズクラブ速度 | メンズクラブ速度 | Men'sClub speed |

### state/menscommon.cns

| Mojibake | Original | English |
|----------|----------|---------|
| メンズクラブ | メンズクラブ | Men'sClub |
| ダッシュ | ダッシュ | Dash |

### joseph.air

| Mojibake | Original | English |
|----------|----------|---------|
| 専用立ち | 専用立ち | Special stand |
| 立っている時の当たり判定 | 立っている時の当たり判定 | Hit detection when standing |
| 蹴りが来ている時の当たり判定 | 蹴りが来ている時の当たり判定 | Hit detection when kick is coming |
| 立身から蹴りへ | 立身から蹴りへ | From stand to kick |
| 蹴りが腰状態から上がる | 蹴りが腰状態から上がる | Kick rises from waist state |
| 前歩行 | 前歩行 | Forward walk |
| 汎用コマンド(前後) | 汎用コマンド(前後) | Generic command (front/back) |
| 汎用コマンド(対象) | 汎用コマンド(対象) | Generic command (target) |
| 汎用コマンド(両方) | 汎用コマンド(両方) | Generic command (both) |
| 回復 | 回復 | Recovery |
| 上ヒット仰け(上あ) | 上ヒット仰け(上あ) | Hit up face-up (front) |
| 上ヒット仰け(後ろあ) | 上ヒット仰け(後ろあ) | Hit up face-up (back) |
| 上ヒット仰け(遠い) | 上ヒット仰け(遠い) | Hit up face-up (far) |
| 上ヒット仰けから地面を叩いて起き(上あ) | 上ヒット仰けから地面を叩いて起き(上あ) | Arise from face-up hitting ground (front) |
| 上ヒット仰けから地面を叩いて起き(後ろあ) | 上ヒット仰けから地面を叩いて起き(後ろあ) | Arise from face-up hitting ground (back) |
| 上ヒット仰けから地面を叩いて起き(遠い) | 上ヒット仰けから地面を叩いて起き(遠い) | Arise from face-up hitting ground (far) |
| 下ヒット仰け(上あ) | 下ヒット仰け(上あ) | Hit down face-up (front) |
| 下ヒット仰け(後ろあ) | 下ヒット仰け(後ろあ) | Hit down face-up (back) |
| 下ヒット仰け(遠い) | 下ヒット仰け(遠い) | Hit down face-up (far) |
| 下ヒット仰けから地面を叩いて起き(上あ) | 下ヒット仰けから地面を叩いて起き(上あ) | Arise from face-down hitting ground (front) |
| 下ヒット仰けから地面を叩いて起き(後ろあ) | 下ヒット仰けから地面を叩いて起き(後ろあ) | Arise from face-down hitting ground (back) |
| 下ヒット仰けから地面を叩いて起き(遠い) | 下ヒット仰けから地面を叩いて起き(遠い) | Arise from face-down hitting ground (far) |
| 蹴りが腰ヒット仰け(上あ) | 蹴りが腰ヒット仰け(上あ) | Kick waist hit face-up (front) |
| 蹴りが腰ヒット仰け(後ろあ) | 蹴りが腰ヒット仰け(後ろあ) | Kick waist hit face-up (back) |
| 蹴りが腰ヒット仰け(遠い) | 蹴りが腰ヒット仰け(遠い) | Kick waist hit face-up (far) |
| 蹴りが腰ヒット仰けから地面を叩いて起き(上あ) | 蹴りが腰ヒット仰けから地面を叩いて起き(上あ) | Arise from kick waist hit (front) |
| 蹴りが腰ヒット仰けから地面を叩いて起き(後ろあ) | 蹴りが腰ヒット仰けから地面を叩いて起き(後ろあ) | Arise from kick waist hit (back) |
| 蹴りが腰ヒット仰けから地面を叩いて起き(遠い) | 蹴りが腰ヒット仰けから地面を叩いて起き(遠い) | Arise from kick waist hit (far) |
| 壁に張り付いている時のヒット仰け(横E前) | 壁に張り付いている時のヒット仰け(横E前) | Hit face-up when stuck to wall (side) |
| 壁に張り付いている時に攻撃ヒット仰け起き | 壁に張り付いている時に攻撃ヒット仰け起き | Arise from attack hit when stuck to wall |
| 地に落ちる | 地に落ちる | Fall to ground |
| 上に向く | 上に向く | Face upward |

### EX.cns Korean Comment (State 440)

| Original (Korean) | English |
|-------------------|---------|
| 긚긡?긣빾뛛 | End / Return to stand (corrupted: likely 종료 or similar) |

---

## Skill Names (Japanese → English)

| Japanese | Romaji | English |
|----------|--------|---------|
| クラッカーボレー | Kurakkā Borē | Cracker Volley |
| オーバードライブ | Ōbādoraibu | Overdrive |
| 隠者の紫 | Inja no Murasaki | Hermit Purple |
| 赤い蔓 | Akai Tsuru | Red Vine |
| 棘の蔓 | Toge no Tsuru | Thorn Vine |
| 隠者の紫 掴み | Inja no Murasaki Tsukami | Hermit Purple Grab |

---

## License Terms (Japanese → English)

| Japanese | English |
|----------|---------|
| 同人サークル | Creative Circle (dōjin circle) |
| 同人 | Dōjin (fan-made / amateur creative work) |
