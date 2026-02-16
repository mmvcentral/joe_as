# Joseph Joestar (joe_as) — System Architecture Analysis

Detailed analysis of character fight mode, skills, animations, and counter parties.

---

## 1. File Structure & Module Mapping

| File | Purpose | State Ranges |
|------|---------|--------------|
| `joe_as.def` | Main definition, palette/sprite/sound bindings | — |
| `state/joseph.cmd` | Input commands, state -1 (global) input handling | — |
| `joseph.cns` | Core constants, variables, data | — |
| `state/joseph.st` | Intro, defeat, special states | 60, 160–162, 180–192, 196, 900–901, 5200, 5600–5602, 9920, 9925 |
| `state/menscommon.cns` | Common states (stand, crouch, jump, guard, hit) | 0–52, 100–106, 120–155, 170–191, 5000–5210, 5500, 5900 |
| `state/N.st` | Normals (standing, crouching, jumping) | 200–270, 300–301, 400–470, 500–501, 600–630, 700–701, 800–830, 104, 211, 240, 980–981 |
| `state/S.st` | Special moves | 990, 1000–1125, 1200–1210, 1300–1310, 1400–1423, 1500–1655, 379, 1901 |
| `state/H.st` | Super moves | 3000–3021, 3100, 3200–3214, 3300, 3500, 3571, 3773, 4010, 12400, 12500 |
| `state/helper.st` | Helper states (AI, To Be Continued) | 4999, 6031–6036, 6054, 6625, 30000 |
| `state/-2.st` | Config (movetype, input buffer) | Statedef -2, -3 |
| `EX.cns` | Hermit Purple mode (var(40)) variants | 21000–21695, 31142–31247 |
| `unotag.cns` | Tag/team mode states | 40652–40755 |

---

## 2. Fight Mode & State Machine Architecture

### 2.1 State Type Categories

| Type | Meaning | Typical States |
|------|---------|----------------|
| **S** | Standing/Ground | 0, 100–106, 130–132, 200–254, 300–325, 400–561 |
| **C** | Crouching | 10–11, 131, 153 |
| **A** | Air | 132, 230–245, 600–630, 950 |
| **L** | Lying down | 5110, 5150 |

### 2.2 Movement & Control Flow

```
[Statedef 0] Stand
    ↓ FF / BB / holdfwd / holdup
[100] Run Fwd  [105] Run Back  [20] Walk  [40] Jump Start

[130–132] Guard (stand/crouch/air)
    ↓ command
[200–254] Normals  [300–325] Throws  [400–561] Specials  [3000+] Supers
```

### 2.3 var(40) — Hermit Purple Mode

`var(40)` is a special variable that activates **Hermit Purple mode** when > 0. When active:
- Special moves gain enhanced versions (e.g., 21100 vs 1000, 21200 vs 1200)
- Power cost modifiers apply (1.5x or 2x damage boost in some cases)
- Some moves have different state numbers (21xxx vs 1xxx)

| var(40) | Effect |
|---------|--------|
| 0 | Normal mode |
| > 0 | Hermit Purple mode active |

### 2.4 Fight Mode Input Flow

| Command | State | Description |
|---------|-------|-------------|
| FF | 100 | Forward dash |
| BB | 105 | Back dash |
| holdfwd + 6 | 800 | Generic walk forward |
| holdback + 4 | 810 | Generic walk back |
| A+Y (ground) | 980/981 | Hermit Purple mode activation |
| Y+B (ground) | 300/990 | Guard cancel |
| Y+B (air) | 301 | Air guard cancel |
| X+A | 900/901 | Recovery (forward/back) |
| X+A (air) | 5200 | Safe fall |

### 2.5 State -1 (Global Input) Priority

State -1 in `joseph.cmd` handles global input. Higher-priority triggers are checked first: FF → BB → walk → Hermit Purple → guard cancel → recovery.

---

## 3. Skills & State/Animation Mapping

### 3.1 Special Moves (state/S.st)

| Skill | Command | State(s) | Anim | Helper | Notes |
|-------|---------|----------|------|--------|-------|
| **Cracker Volley** | 214A / 214B | 1000, 1050 | 1000 | 1010, 1060 (Cracker) | Projectile; helper at elem 13 |
| **Overdrive** | 236A / 236B | 1100, 1105 | 1100, 1105 | — | Ripple; 1105 is variant |
| **Hermit Purple** | 623X / 623Y | 1200, 1210 | 1200, 1210 | — | Vine attack |
| **Red Vine** | 236X / 236Y | 1300, 1310 | 1300, 1310 | — | Vine attack |
| **Thorn Vine** | 214X / 214Y | 1400, 1410 | 1400, 1410 | 1404 (projectile) | Projectile; projid 1400 |
| **Clacker Volley** (close) | 214A / 214B (close) | 1500 | 1500 | 1500, 1511–1515 | Command throw |
| **Hermit Purple Grab** | 41236X / 41236Y | 1600, 1610 | 1600, 1610 | 31142, 31143, 31148 | Grab; Hermit Purple helper |

**Hermit Purple Mode Variants (EX.cns):**
- 21100, 21156–21158: Cracker Volley (var(40) > 0)
- 21200, 20311: Hermit Purple (var(40) > 0)
- 21300: Red Vine (var(40) > 0)
- 21400: Thorn Vine (var(40) > 0)
- 21500, 21511–21515: Clacker Volley (var(40) > 0)
- 21600, 21655, 21691, 21695: Hermit Purple Grab (var(40) > 0)

### 3.2 Super Moves (state/H.st)

| Skill | Command | State(s) | Anim | Notes |
|-------|---------|----------|------|-------|
| **Hermit Purple - Ripple Overdrive** | 236236A+B | 3000 | 3000 | Close range |
| **Hermit Purple - Ripple Overdrive** | 236236X+Y | 3100 | 3100 | Ranged |
| **Hermit Purple - Boomerang Cracker** | 214214X+Y | 4010 | 4010 | Ranged projectile |
| **Hermit Purple - Ripple Overdrive** | 236236A / 236236B | 3500 | 3500 | — |
| **Hermit Purple - Ripple Overdrive** | 2363214A / 2363214B | 3200 | 3200 | Half-circle |
| **Hermit Purple - Ripple Overdrive** | 236236X / 236236Y | 3300 | 3300 | — |
| **Hermit Purple - Ripple Overdrive** | 2363214A+B | 12500 | — | MAX Super |

### 3.3 Normals (state/N.st)

| Category | States | Anim Range | Notes |
|----------|--------|-------------|-------|
| Stand Light P | 200 | 200 | — |
| Stand Strong P | 210 | 210 | — |
| Stand Strong K | 220 | 220 | — |
| Stand 6P | 230 | 230 | Forward + A |
| Stand 2P | 400 | 400 | Crouch + X |
| Stand 2K | 410 | 410 | Crouch + A |
| Stand 2S | 420 | 420 | Crouch + Y |
| Stand 2B | 500 | 500 | Crouch + B |
| Jump X | 600 | 600 | Air X |
| Jump Y | 610 | 610 | Air Y |
| Jump A | 620 | 620 | Air A |
| Jump B | 700 | 700 | Air B |
| Jump 6A | 630 | 630 | Air forward + A |
| 3A | 430 | 430 | — |
| 6A | 230 | 230 | — |
| 2A | 410 | 410 | — |
| 2X | 400 | 400 | — |
| 2Y | 420 | 420 | — |
| 2B | 500 | 500 | — |
| Air X | 600 | 600 | — |
| Air Y | 610 | 610 | — |
| Air A | 620 | 620 | — |
| Air B | 700 | 700 | — |

### 3.4 Throws (joseph.cmd + state/N.st)

| Throw | Command | State | Anim | Notes |
|-------|---------|-------|------|-------|
| P Throw | 6/4 X (close) | 300 | 300, 301 | Ground |
| K Throw | 6/4 Y (close) | 301 | — | Ground |
| Clacker Volley | 214A/B (close) | 1500 | 1500 | Command throw |

### 3.5 Recovery & Guard Cancel

| Action | Command | State | Notes |
|--------|---------|-------|-------|
| Recovery | X+A | 900, 901 | — |
| Guard Cancel | Y+B | 300, 301, 990 | — |
| Safe Fall | X+A (air) | 5200 | — |

### 3.6 Per-Skill State Flow & Animation Counter-Parties

| Skill | State Flow | Anim | Counter-Party (opponent hit) |
|-------|------------|------|-----------------------------|
| **Cracker Volley** | 1000→1010 (helper) | 1000 | Helper 1010 spawns projectile; HitDef on parent |
| **Overdrive** | 1100→1101/1122/1123 | 1100, 1105 | Ripple hit; 310/311 for throw variant |
| **Hermit Purple** | 1200/1210 | 1200, 1210 | Vine HitDef; no helper |
| **Red Vine** | 1300/1310 | 1300, 1310 | Vine HitDef; Explod FX |
| **Thorn Vine** | 1400→1404 (proj) | 1400, 1410 | ProjID 1400; hits mid/far |
| **Clacker Volley** | 1500→1511–1515 | 1500 | Command throw; helpers 1512/1513 (wood) |
| **Hermit Purple Grab** | 1600→31142/31143/31148 | 1600, 1610 | Helper 11040/11041/11047; TargetBind |
| **Hermit Purple - Ripple Overdrive** | 3000/3100/3200/3300/3500 | 3000, 3100 | TargetLifeAdd, TargetPowerAdd, HitAdd |
| **Hermit Purple - Boomerang Cracker** | 4010 | 4010 | Projectile super |

---

## 4. Animation Counter-Parties & Hit/Defeat System

### 4.1 Animation ID Ranges (joseph.air)

| Range | Purpose |
|-------|---------|
| 0–47 | Idle, crouch, turn |
| 100–106 | Run, dash, back step |
| 120–132 | Walk, stand, air |
| 140–152 | Jump, land |
| 170–195 | Intro, taunt, lose |
| 200–254 | Normals |
| 300–325 | Throws |
| 950–1655 | Specials & supers |
| 1000–12100 | Explods / hit FX |
| 5000–5210 | Hit/defeat states |
| 5081–5171 | Liedead variants |

### 4.2 Animation ↔ State Counter-Parties

| Hit State | Anim | Anim IDs | Purpose |
|-----------|------|----------|---------|
| 5000 | HIT_LIGHT | 5000–5002 | Light hit (front, back, far) |
| 5010 | HIT_MEDIUM | 5010–5012 | Medium hit (front, back, far) |
| 5020 | HIT_HARD | 5020–5022 | Hard hit (front, back, far) |
| 5030 | HIT_BACK | 5030, 5035 | Back hit fall |
| 5040 | HIT_UP | 5040 | Wall hit up |
| 5050 | HIT_FALL | 5050 | Fall recovery |
| 5060 | HIT_FALL (IV) | 5061 | Fall recovery (IV variant) |
| 5070 | HIT_TRIP | 5070 | Trip knockdown |
| 5080 | HIT_LIEDOWN | 5080 | Lying down |
| 5090 | HIT_GETUP | 5090 | Get up from lie |
| 5100 | HIT_BOUNCE | 5100 | Ground bounce |
| 5110 | HIT_LIEDOWN (side) | 5110 | Liedown side |
| 5120 | HIT_GETUP | 5120 | Get up |

### 4.3 Helper IDs

| ID | Name | Purpose |
|----|------|---------|
| 1010 | Cracker | Cracker Volley projectile |
| 1000 | Cracker | Cracker Volley hit FX |
| 1512 | sakushi | Clacker Volley wood |
| 1513 | sakushi2 | Clacker Volley wood 2 |
| 11040 | hermit purple | Hermit Purple grab |
| 11041 | hermit purple | Hermit Purple grab |
| 11047 | hermit purple | Hermit Purple grab |
| 30000 | AI | AI controller |

### 4.4 Projectile IDs

| ID | Name | State |
|----|------|-------|
| 1400 | Thorn Vine | 1400, 1410 |
| 40770 | — | unotag.cns |

---

## 5. Command Input Reference

| Command Name | Input | State |
|--------------|-------|-------|
| 1000 | 214A | Cracker Volley |
| 1050 | 214B | Cracker Volley (far) |
| 1100 | 236A | Overdrive |
| 1105 | 236B | Overdrive (variant) |
| 1200 | 623X | Hermit Purple |
| 1210 | 623Y | Hermit Purple (far) |
| 1300 | 236X | Red Vine |
| 1310 | 236Y | Red Vine (far) |
| 1400 | 214X | Thorn Vine |
| 1410 | 214Y | Thorn Vine (far) |
| 1500 | 214A | Clacker Volley (close) |
| 1600 | 41236X | Hermit Purple Grab |
| 1610 | 41236Y | Hermit Purple Grab (far) |
| 3000 | 236236A+B | Super |
| 3100 | 236236X+Y | Super |
| 3200 | 2363214A/B | Super |
| 3300 | 236236X/Y | Super |
| 3500 | 236236A/B | Super |
| 4010 | 214214X+Y | Super |

---

## 6. Variable Reference (joseph.cns)

| Variable | Purpose |
|----------|---------|
| var(0) | Punch flag |
| var(1) | Guard state |
| var(2) | 2nd character (KO判定) — see TRANSLATION.md |
| var(3) | Guard (number limit) — see TRANSLATION.md |
| var(5) | Dash flag |
| var(6) | Low dash flag |
| var(7) | Special use 1 |
| var(8) | Special use 2 |
| var(40) | Hermit Purple mode |
| var(59) | AI |
| fvar(0) | Guard |
| fvar(1) | Lower defense value |
| fvar(2) | Side defense value |
| fvar(39) | Stun persistence |
