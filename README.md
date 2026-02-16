# Joseph Joestar (joe_as) — Hermit Purple

## Character Introduction

**Joseph Joestar** (Josefu Jōsutā) is a MUGEN fighting game character based on Hirohiko Araki's *JoJo's Bizarre Adventure* series. This character is a fan-made adaptation for the MUGEN engine, featuring Joseph in his Part 3 (Stardust Crusaders) incarnation with his Stand **Hermit Purple**.

### Original Creator

- **Original Character:** Joseph by **Men'sClub**
- **Editors / Port Authors:** Ramkun + Naza15 + TheMasterFlippy (Anomi Polis + Naza15 + TheMasterFlippy)
- **Version Date:** March 29, 2010
- **MUGEN Version:** 1.0; June 14, 2003
- **Display Name:** Joseph_HP (Joseph Hermit Purple)

### Character Storyline & Origin

Joseph Joestar is the protagonist of *JoJo's Bizarre Adventure Part 2: Battle Tendency* and a major character in *Part 3: Stardust Crusaders*. He is the grandson of Jonathan Joestar and the mentor to Jotaro Kudo. In Part 3, Joseph awakens his Stand **Hermit Purple**, a vine-like ability that can be used for reconnaissance, divination (via photography), and combat. Hermit Purple manifests as thorny vines that extend from Joseph's hands and can deliver electrical shocks, bind opponents, or create projectiles.

The MUGEN port implements Joseph's Hermit Purple moveset with special moves (Cracker Volley, Overdrive, Red Vine, Thorn Vine), supers (Hermit Purple - Ripple Overdrive, Hermit Purple - Boomerang Cracker, etc.), and a unique **var(40)** system that modifies move properties when activated. The character uses a 6-button layout (A/B/C/X/Y/Z) with KOF-style command inputs.

---

## Documentation Index

All related documentation is indexed in [docs/INDEX.md](docs/INDEX.md).

| Document | Description |
|----------|-------------|
| [docs/INDEX.md](docs/INDEX.md) | Full documentation index |
| [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md) | System architecture, fight mode, skills, animations, counter parties |
| [docs/TRANSLATION.md](docs/TRANSLATION.md) | Japanese/Korean → English translation reference for CNS, CMD, DEF comments |
| [docs/log.md](docs/log.md) | Creator update history (changelog) |

---

## File Structure

| File | Description |
|------|-------------|
| `joe_as.def` | Main definition, palette/sprite/sound bindings |
| `state/joseph.cmd` | Input commands, state -1 (global) input handling |
| `joseph.cns` | Core constants, variables, data |
| `state/joseph.st` | Intro, defeat, special states |
| `state/menscommon.cns` | Common states (stand, crouch, jump, guard, hit) |
| `state/N.st` | Normals (standing, crouching, jumping attacks) |
| `state/S.st` | Special moves (Cracker Volley, Overdrive, Hermit Purple) |
| `state/H.st` | Super moves |
| `state/helper.st` | Helper states (AI, To Be Continued) |
| `state/-2.st` | Config (movetype, input buffer) |
| `EX.cns` | Hermit Purple mode (var(40)) variants |
| `unotag.cns` | Tag/team mode states |
| `joseph.air` | Animation definitions |
| `joseph.sff` | Sprite data |
| `joseph.snd` | Sound data |

---

## System Architecture Summary

For detailed architecture (fight mode, skills, animations, counter parties, var(40) system), see [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md).

---

## License

### Creative Circle License

This character is an **edition from the original author** (Men'sClub) and is released under the **Creative Circle License**.

This MUGEN character is a fan-made adaptation of Joseph Joestar from *JoJo's Bizarre Adventure*. All original character designs, names, and related intellectual property belong to **Hirohiko Araki** and **Shueisha**.

- This work is distributed as a **Creative Circle** (dōjin) work—a fan-made adaptation of the original manga/game character.
- The original creator (Men'sClub) retains rights to the MUGEN implementation.
- Use and distribution should respect the original author's terms and the MUGEN community guidelines.
- For commercial or extensive derivative use, please contact the original creator.
