[statedef -2]

[State 3000, Super A]
type = varset
triggerall = time=1||movecontact=2
trigger1 = stateno = [1000,1999]
var(12)=(random%4=0)


[State 3000, Super A]
type = varset
trigger1 = stateno!=[1000,1999]
var(12)=0
ignorehitpause = 1 

[State 5100, shake]
type = EnvShake
triggerall = var(12) = 1
trigger1 = movehit = 1 || projhit = 1
trigger2 = helper(1010),movehit
time = 16
freq = 240
ampl = 3
phase = -1
ignorehitpause = 1 

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(12) = 1
trigger1 = movehit = 1 || projhit = 1
trigger2 = helper(1010),movehit
value = s400,5
ignorehitpause = 1 

[State 230, 1]
type = varset
triggerall = var(12) = 1
trigger1 = movehit = 1 || projhit = 1
trigger2 = helper(1010),movehit
var(12) = 0
ignorehitpause = 1 


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = var(12) = 1
flag = nojugglecheck
ignorehitpause = 1 

[State -2]
Type = PlaySnd
TriggerAll = Alive = 1
TriggerAll = Time = 1
Trigger1 = StateNo = 5120
Trigger1 = Anim = 5120
Trigger2 = StateNo = 5120
Trigger2 = Anim = 5121
Value = s11, 1

[state -2, VarSet]
type = varset
trigger1 = 1
fvar(0) = 1.0

[state -2, VarSet];‹ÕÔ·
type = varset
trigger1 = enemynear,movetype = H
trigger1 = fvar(1) >= 1
fvar(0) = (100.0 - (fvar(1) * 5.0)) / 100.0

[state a]
type = varset
triggerall = fvar(0) <= 0.4
trigger1 = stateno = [2000,4999]
fvar(0) = 0.4

[state a]
type = varset
trigger1 = fvar(0) <= 0.2
fvar(0) = 0.2

[state -2, VarAdd]
type = varadd
triggerall = enemynear,movetype = H
triggerall = (stateno != [800,899])
triggerall = (stateno != [2000,4999])
trigger1 = movehit = 1
fvar(1) = 1

[state -2, VarSet]
type = varset
trigger1 = enemynear,ctrl || enemynear,movetype != H
trigger2 = roundstate != 2
fvar(1) = 0

[state a]
type = attackmulset
trigger1 = 1
value = fvar(0)

;îÌÉÅÇÃÉQÉWÅHÇ†ÇËÇ™ÇΩÇ≠Ç‡ÇÁÇ¡ÇƒÇ®Ç≠ÇÊ

[state -2,ÉtÉâÉCÉìÉOÇ∑ÇÈïsìÕÇ´é“Ç÷ÇÃÉyÉiÉãÉeÉB]
type=poweradd
triggerall=roundstate<2
trigger1=movetype=h
value=gethitvar(damage)*100

;===========================================================================
[State -2, KillMAX]
type = VarSet
trigger1 = Life = 0
trigger2 = roundstate != 2
v = 30
value = 0

[State -2, KillMAX]
type = VarSet
trigger1 = Life = 0
trigger2 = roundstate != 2
v = 23
value = 0

;==================================================================================
;Advanced Mode addition code
[State -2, StartOnLeft]
type = VarSet
trigger1 = var(30) = 0
trigger1 = Pos X < 0
v = 30
value = 1

[State -2, StartOnRight]
type = VarSet
trigger1 = var(30) = 0
trigger1 = Pos X >= 0
v = 30
value = 2

[State -2, CountDown]
type = VarSet
trigger1 = var(40) < 0
var(40) = 0
ignorehitpause = 1

[State -2, CountDown]
type = VarAdd
trigger1 = var(40) > 0
v = 40
ignorehitpause = 1
value = -1

[State -2, ExplodCountdown]
type = ModifyExplod
trigger1 = Var(40) != 0
ID = 4102
scale = (1100 - Var(40)) / 1100.0,1
ontop = 1


[State -2, BarRemovalAnimLeft]; P1, no tocar
type = Explod
trigger1 = Var(40) <= 0 && Var(30) = 1 && NumExplod(4100) != 0
anim = 4101
postype = left
pos = 7,208
ontop = 1
supermove = 1
ignorehitpause = 1
ignoresuperpause = 1
bindtime = 30
ownpal = 1

[State -2, BarRemovalAnimRight]
type = Explod
trigger1 = Var(40) <= 0 && Var(30) = 2 && NumExplod(4100) != 0
anim = 4106
postype = right
pos = -84,208
ontop = 1
supermove = 1
ignorehitpause = 1
ignoresuperpause = 1
bindtime = 30
ownpal = 1

[State -2, RemoveMAXCounterBar]
type = RemoveExplod
trigger1 = Var(40) <= 0 && NumExplod(4100) != 0
id = 4102

[State -2, RemoveMAXBar]
type = RemoveExplod
trigger1 = Var(40) <= 0 & NumExplod(4100) != 0
id = 4100

[State a];ñ≈
type = palfx
triggerall = var(40) > 0
trigger1 = gametime % 14 = 0
time = 1
add = 96,96,0
color = 186
ignorehitpause = 1

[State a];ñ≈
type = palfx
triggerall = var(40) > 0
trigger1 = gametime % 14 = 1
trigger2 = gametime % 14 = 13
time = 1
add = 84,84,0
color = 196
ignorehitpause = 1

[State a];ñ≈
type = palfx
triggerall = var(40) > 0
trigger1 = gametime % 14 = 2
trigger2 = gametime % 14 = 12
time = 1
add = 72,72,0
color = 206
ignorehitpause = 1

[State a];ñ≈
type = palfx
triggerall = var(40) > 0
trigger1 = gametime % 14 = 3
trigger2 = gametime % 14 = 11
time = 1
add = 60,60,0
color = 216
ignorehitpause = 1

[State a];ñ≈
type = palfx
triggerall = var(40) > 0
trigger1 = gametime % 14 = 4
trigger2 = gametime % 14 = 10
time = 1
add = 48,48,0
color = 226
ignorehitpause = 1

[State a];ñ≈
type = palfx
triggerall = var(40) > 0
trigger1 = gametime % 14 = 5
trigger2 = gametime % 14 = 9
time = 1
add = 36,36,0
color = 236
ignorehitpause = 1

[State a];ñ≈
type = palfx
triggerall = var(40) > 0
trigger1 = gametime % 14 = 6
trigger2 = gametime % 14 = 8
time = 1
add = 24,24,0
color = 246
ignorehitpause = 1

[State a];ñ≈
type = palfx
triggerall = var(40) > 0
trigger1 = gametime % 14 = 7
time = 1
add = 12,12,0
color = 256
ignorehitpause = 1

;===========================================================================

[state -2,écëúè¡ãé]
type=afterimagetime
trigger1=movetype=h
time=0


[state 6100, Explod]
type = Explod
triggerall = p2movetype = H
triggerall = !Movereversed
triggerall = movehit = 1
triggerall = Random < 200
trigger1 = stateno = 1100
trigger2 = stateno = 1105
trigger3 = stateno = 1110
trigger4 = stateno = 1122
trigger5 = stateno = 1200
trigger6 = stateno = 1210
trigger7 = stateno = 1300
trigger8 = stateno = 1310
trigger9 = stateno = 1511
anim = 7120 + random%2
id = 7100
sprpriority = 5
postype = p2
pos = 20 - (random%40),-20 - (random%90)
bindtime = 1
ownpal = 1
random = 100,100
ignorehitpause = 1 

[state 6100, Explod]
type = Explod
triggerall = p2movetype = H
triggerall = !Movereversed
trigger1 = projhit12510 = 1
anim = 7120 + random%2
id = 7100
sprpriority = 5
postype = p2
pos = 20 - (random%40),-20 - (random%90)
bindtime = 1
ownpal = 1
random = 100,100
ignorehitpause = 1 

[state 6100, Explod]
type = Explod
triggerall = var(29) = 2
trigger1 = p2StateNo = 5100 && enemy,time = 1
trigger2 = p2stateno = 5611
trigger2 = ((Enemy,Anim = [5610,5611]) || (Enemy,Anim = [5615,5616])) && Enemy,AnimElem = 2
trigger3 = p2stateno = 5614 && enemy,time = 1
trigger4 = p2stateno = 5616 && enemy,time = 1
trigger5 = p2stateno = 5690 && enemy,time = 1
anim = 7122
id = 7106
sprpriority = 2
postype = p2
pos = 0, 0
facing = -1
ownpal = 1
Persistent = 0


;===========================================================================

[state -2,ÉfÉoÉbÉOópé¶]
type=displaytoclipboard
trigger1=1
text="var(58) = %d, p2bodydist x = %d"
params=var(58),floor(p2bodydist x)
ignorehitpause=1

[state -2,ÉfÉoÉbÉOópé¶2]
type=appendtoclipboard
trigger1=numenemy
text=" %d"
params=ifelse(var(1),enemynear,gethitvar(hitcount)-var(1)+var(3)+1,0)
ignorehitpause=1

[State -2, VarSet]
type = VarSet
trigger1 = RoundState = 0
trigger2 = var(31) = 25
var(31) = 0

[State -2, VarAdd]
type = VarAdd
trigger1 = var(31) >= 1
trigger1 = Enemy,HitShakeOver
var(31) = 1

[State -2, Pause]
type = Pause
triggerall = var(31) >= 2
triggerall = p2life > 0
trigger1 = Time % 2 = 0
time = 1


[statedef -3]

[State -3] 
type = VarSet
triggerall = Var(6) != 1
trigger1 = command = "longjump"
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = prevstateno = 100
trigger2 = command = "holdfwd"
v = 6
value = 1


[State -3, sysvar]
type = VarSet
trigger1 = Var(6) = 1
trigger1 = stateno = 38 || stateno = 39 || stateno = 40
trigger1 = AnimTime = 0 
var(6) = ifelse(sysvar(1)=0, 2, ifelse(sysvar(1)=1, 3, 4))

[State -3, var OFF]
type = VarSet
triggerall = Time = 2
trigger1 = stateno = 50
trigger2 = stateno != [40,59]
v = 6
value = 0

[State -3, 5];ÉnÉCÉWÉÉÉìÉvè¡ãé
type = varset
trigger1 = stateno = 52
trigger1 = time = 0
v = 6
value = 0

; è¨ÉWÉÉÉìÉvèàóù
[State -3, 5];è¨ÉWÉÉÉìÉvîªíË
type = varset
trigger1 = stateno = 40
trigger1 = command != "holdup"
v = 26
value = 1

[State -3, 5];è¨ÉWÉÉÉìÉvè¡ãé
type = varset
trigger1 = stateno = 40
trigger1 = command = "holdup"
v = 26
value = 0

[State -3, 5]
type = velset
trigger1 = stateno = 50
trigger1 = anim = 42
trigger1 = time = 1
trigger1 = var(6) >= 1
x = 5
;y = -9


[State -3, 5]
type = velset
trigger1 = stateno = 50
trigger1 = anim = 43
trigger1 = time = 1
trigger1 = var(6) >= 1
x = -5
;y = -9

[State -3, 5];è¨ÉWÉÉÉìÉv
type = veladd
trigger1 = stateno = 50
trigger1 = time = 1
trigger1 = var(26) = 1
y = 3

[State -3, 5]
type = AfterImage
trigger1 = stateno = 50
trigger1 = time = 1
trigger1 = var(6) >= 1
time = 10
trans = add1
timegap = 1
framegap = 2
length = 8
palbright = 12,12,12
palcontrast = 225,225,225
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 1,1,1

[State 0, VarSet]
type = VarSet
trigger1 = enemynear,statetype = S && enemynear,statetype = C
trigger2 = enemynear,anim != [5000,5999]
v = 10
value = 0


[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 7
value = 1.5

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 8
value = 1.2

