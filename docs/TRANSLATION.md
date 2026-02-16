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
