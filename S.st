;ÉKÉLÉÉÉì
[statedef 990]
type=s
movetype=a
physics=s
poweradd=120
velset=0,0
anim=1210
ctrl=0

[state 950,ñ≈]
type=palfx
trigger1=time<3
time=1
add=255,255,255
ignorehitpause=1

[state 950,ñ≥ìG]
type=nothitby
trigger1=animtime!=0
trigger1=animelemtime(14)<0
value=sca

[state 950,îgñ‰ÉbÅI]
type=playsnd
trigger1=animelemtime(7)=0
value=0,4
channel=0

[state 950,ÉRÉâå¯â âπ]
type=playsnd
trigger1=animelemtime(12)=0
value=1200,0

[state 950,ÉRÉâÇ™êÅÇ´èoÇ∑]
type=explod
trigger1=animelemtime(12)=0
anim=1201
pos=0,0
scale=const(size.xscale),const(size.yscale)
sprpriority=1
ownpal=1

[state 950,ÉqÉbÉgíË]
type=hitdef
trigger1=animelemtime(12)=2
attr=s,sa
animtype=up
damage=70,14
guardflag=ma
pausetime=11,11
sparkno=s6103
guard.sparkno=s6125
sparkxy=0,-110
hitsound=s5,4
guardsound=s6,0
ground.type=low
ground.slidetime=14
ground.hittime=14
air..hittime=14
ground.velocity=-1,-10.5
guard.velocity=-6
air.velocity=-1,-8.5
airguard.velocity=-4,-4.5
p2facing=1
fall=1
fall.recovertime=50
yaccel=0.4
;guard.kill=0

[state 950,ÉRÉìï‚ê≥äJén]
type=varset
triggerall=!var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 950,èIóπ]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;===========================================================================
;ÉNÉâÉbÉJÉuÉÅÉâÉì
[statedef 1000]
type=s
movetype=a
physics=s
poweradd=110
velset=0,0
anim=1000
ctrl=0


[state 1000,ê∫]
type=playsnd
trigger1=animelemtime(11)=0
value=1100,1
channel=0

[state 1000,ÉNÉâÉbÉJ]
type=Helper
trigger1=animelemtime(13)=0
helpertype=normal
name="Cracker"
ID=1010
pos=70,-85
postype=p1
stateno=1010
ownpal=1

[state 1000,èIóπ]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

[statedef 1050]
type=s
movetype=a
physics=s
poweradd=110
velset=0,0
anim=1000
ctrl=0


[state 1000,ê∫]
type=playsnd
trigger1=animelemtime(11)=0
value=1100,1
channel=0

[state 1000,ÉNÉâÉbÉJ]
type=Helper
trigger1=animelemtime(13)=0
helpertype=normal
name="Cracker"
ID=1010
pos=70,-85
postype=p1
stateno=1060
ownpal=1

[state 1000,èIóπ]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;ÉNÉâÉbÉJ1
[statedef 1010]
anim=1002
type=a
movetype=a
physics=n
ctrl=0
sprpriority=1

[state 1010,âeñ≥Çµ]
type=assertspecial
trigger1=1
flag=noshadow

[State 0, VelSet]
type = VelSet
trigger1 = time = [1,12]
x = 5

[State 0, VelSet]
type = VelSet
trigger1 = time >= 13
x = 0

[State 0, Explod]
type = Explod
trigger1 = numprojid(12000) = 0
trigger1 = time = 1
anim = 12000
ID = 12000
pos = 0,0
postype = p1  ;p2,front,back,left,right
scale = 1,1
sprpriority = 3
bindtime = -1
removetime = 75

[State 1531, âπÇÇ»ÇÁÇ∑]
type = PlaySnd
trigger1 = time%10 = 0
value = 12000,0
volume = 50

[state 1010,îªíË]
type=hitdef
trigger1 = parent,var(12) != 1
trigger1 = time = 0
attr=s,sp
damage=70,5
pausetime = 0,7
animtype=hard
guardflag=ma
sparkno=s6103
guard.sparkno=s6128
hitsound=s5,2
guardsound=s6,0
;guard.kill=0
ground.velocity=-4,-6
air.velocity=-4,-6
ground.cornerpush.veloff=0
ground.slidetime=27
ground.hittime=27
air.hittime=27
fall=1
p2facing=1

[state 1010,îªíË]
type=hitdef
trigger1 = parent,var(12) = 1
trigger1 = time = 0
attr=s,sp
damage=105,5
pausetime = 0,14
guard.pausetime = 0,7
animtype=hard
guardflag=ma
sparkno = s6108
guard.sparkno=s6128
hitsound=s5,2
guardsound=s6,0
;guard.kill=0
ground.velocity=-4,-6
air.velocity=-4,-6
ground.cornerpush.veloff=0
ground.slidetime=27
ground.hittime=27
air.hittime=27
fall=1
p2facing=1

[State 0, ParentVarAdd]
type = ParentVarAdd
trigger1 = movehit
v = 31
value = 1

[State 10000, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP

[State 10000, HitOverRide] 
type = HitOverRide
trigger1 = 1
slot = 0
stateno = 1020
attr = SCA, NP, SP, HP
time = -1

[State 10000, HitOverRide] 
type = changestate
trigger1 = movecontact
value = 1020

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 75
;ignorehitpause = 
;persistent = 

[Statedef 1020]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim=1002

[State 0, end]
type = removeexplod
trigger1 = time = 0
id= 12000

[State 4104,0]
type = nothitby
trigger1 = 1
value = SCA

[State 4104, ÎÂ]
type = stopsnd
trigger1 = !time
channel = 3

[State 0, assert]
type = velset
trigger1 = !time
x = -4
y = -3

[State 0, assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 195]
type = AssertSpecial
trigger1 = time > 10
trigger1 = !(gametime%2)
flag = invisible

[State 0, end]
type = velmul
trigger1 = time >= 8
x = .95

[State 0, end]
type = veladd
trigger1 = 1
y = .4

[State 0, end]
type = DestroySelf
trigger1 = pos y > 0

;---------------------------------------------------------------------------
[statedef 1060]
anim=1002
type=a
movetype=a
physics=n
ctrl=0
sprpriority=1

[state 1010,âeñ≥Çµ]
type=assertspecial
trigger1=1
flag=noshadow

[State 0, VelSet]
type = VelSet
trigger1 = time = [1,12]
x = 10

[State 0, VelSet]
type = VelSet
trigger1 = time >= 13
x = 0

[State 0, Explod]
type = Explod
trigger1 = numprojid(12000) = 0
trigger1 = time = 1
anim = 12000
ID = 12000
pos = 0,0
postype = p1  ;p2,front,back,left,right
scale = 1,1
sprpriority = 3
bindtime = -1
removetime = 75

[State 1531, âπÇÇ»ÇÁÇ∑]
type = PlaySnd
trigger1 = time%10 = 0
value = 12000,0
volume = 50

[state 1010,îªíË]
type=hitdef
triggerall = parent,var(12) != 1
trigger1 = time = 0
attr=s,sp
damage=70,5
pausetime = 0,7
animtype=hard
guardflag=ma
sparkno=s6103
guard.sparkno=s6128
hitsound=s5,2
guardsound=s6,0
;guard.kill=0
ground.velocity=-4,-6
air.velocity=-4,-6
ground.cornerpush.veloff=0
ground.slidetime=27
ground.hittime=27
air.hittime=27
fall=1
p2facing=1

[state 1010,îªíË]
type=hitdef
trigger1 = parent,var(12) = 1
trigger1 = time = 0
attr=s,sp
damage=105,5
pausetime = 0,14
guard.pausetime = 0,7
animtype=hard
guardflag=ma
sparkno = s6108
guard.sparkno=s6128
hitsound=s5,2
guardsound=s6,0
;guard.kill=0
ground.velocity=-4,-6
air.velocity=-4,-6
ground.cornerpush.veloff=0
ground.slidetime=27
ground.hittime=27
air.hittime=27
fall=1
p2facing=1


[State 0, ParentVarAdd]
type = ParentVarAdd
trigger1 = movehit
v = 31
value = 1

[State 10000, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP

[State 10000, HitOverRide] 
type = HitOverRide
trigger1 = 1
slot = 0
stateno = 1020
attr = SCA, NP, SP, HP
time = -1

[State 10000, HitOverRide] 
type = changestate
trigger1 = movecontact
value = 1020

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 75
;===========================================================================
;ÉNÉâÉbÉJÉîÉHÉåÉC1
[statedef 1100]
type=s
movetype=a
physics=s
poweradd=50
velset=0,0
anim=1100
ctrl=0
juggle = 10

[state 1100,ïù]
type=width
trigger1=1
edge=40,0
player=40,0

[state 1100,ëfêUÇËâπ]
type=playsnd
trigger1=animelemtime(3)=0
value=1000,0

[state 1100,ê∫]
type=playsnd
trigger1=animelemtime(2)=0
value=0,0
channel=0

[state 1100,ÉNÉâÉbÉJ]
type=helper
trigger1=animelemtime(3)=0
helpertype=normal
stateno=1101
id=1000
name="Cracker"

[state 1100,ëOêi]
type=velset
trigger1=animelemtime(2)=0
x=5

[State 0, VarSet]
type = Varadd
triggerall = var(12) != 1
trigger1 = movehit
trigger1 = enemynear,statetype = A
v = 10
value = 10
persistent = 0

[state 1100,ÉqÉbÉgíË]
type=hitdef
triggerall = var(12) != 1
trigger1=animelemtime(3)=0
trigger2=animelemtime(3)=3
trigger3=animelemtime(3)=6
trigger4=animelemtime(3)=9
attr=s,sa
animtype=medium
damage=10*ifelse(p2movetype = A,2,1),2
hitflag = MAFP
guardflag=ma
pausetime=5,10
sparkno=s7008
guard.sparkno=s6128
sparkxy=-10,-81
hitsound=s5,12
guardsound=s6,0
ground.type=low
ground.slidetime=18
ground.hittime=18
air.hittime=18
guard.hittime=12
ground.velocity=-2.2,0
air.velocity=-2.2,-3.2
;guard.kill=0
palfx.time = 20
palfx.add = 153,138,0
palfx.mul = 240,240,240
palfx.sinadd = 100,100,100,5
palfx.invertall = 1
palfx.color = 0
getpower = 10,5
givepower = 10,5

[state 1100,ÉqÉbÉgíË]
type=hitdef
triggerall = var(12) = 1
trigger1=animelemtime(3)=0
trigger2=animelemtime(3)=3
trigger3=animelemtime(3)=6
trigger4=animelemtime(3)=9
attr=s,sa
animtype=medium
damage=15*ifelse(p2movetype = A,2,1),2
hitflag = MAFP
guardflag=ma
pausetime=10,20
guard.pausetime = 5,10
sparkno = s6108
guard.sparkno=s6128
sparkxy=-10,-81
hitsound=s5,12
guardsound=s6,0
ground.type=low
ground.slidetime=18
ground.hittime=18
air.hittime=18
guard.hittime=12
ground.velocity=-2.2,0
air.velocity=-2.2,-3.2
;guard.kill=0
palfx.time = 20
palfx.add = 153,138,0
palfx.mul = 240,240,240
palfx.sinadd = 100,100,100,5
palfx.invertall = 1
palfx.color = 0
getpower = 10,5
givepower = 10,5

[State 1005,]
type = VarSet
trigger1 = movehit = 1
var(29) = 2

[state 1100,òAåg]
type=changestate
triggerall=animelem = 3,>= 5 && animelem = 3,<= 30
trigger1=command="1100" || command="1105"
value=1110

[state 1100,òAåg]
type=changestate
triggerall = animelem = 3,>= 5 && animelem = 3,<= 6
trigger1 = AILEVEL
trigger1 = movecontact
value=1110


[state 1100,èIóπ]
type=changestate
trigger1=animtime=0
value=0
ctrl=1


[statedef 1105]
type=s
movetype=a
physics=s
poweradd=50
velset=0,0
anim=1105
ctrl=0
juggle = 10

[State 1000, 1]
type = Varadd
triggerall = time = 0
triggerall = var(40) > 0
trigger1 = prevstateno = 210 || prevstateno = 220 || prevstateno = 410 || prevstateno = 500
trigger2 = prevstateno = 1200 || prevstateno = 1210
trigger3 = prevstateno = 1300 || prevstateno = 1310
trigger4 = prevstateno = 1645 || prevstateno = 1650 || prevstateno = 1695
var(40) = -160
ignorehitpause = 1
persistent = 1

[State 1000, 2]
type = PalFX
triggerall = var(40) > 0
triggerall = (GameTime%2) = 0 && time < 8
trigger1 = prevstateno = 210 || prevstateno = 220 || prevstateno = 410 || prevstateno = 500
trigger2 = prevstateno = 1200 || prevstateno = 1210
trigger3 = prevstateno = 1300 || prevstateno = 1310
trigger4 = prevstateno = 1645 || prevstateno = 1650 || prevstateno = 1695
time = 1
add = 256,256,256
mul = 256,256,256
sinadd = 256,256,256,1
invertall = 0
color = 256
ignorehitpause = 1

[state 1100,ïù]
type=width
trigger1=1
edge=40,0
player=40,0

[state 1100,ëfêUÇËâπ]
type=playsnd
trigger1=animelemtime(4)=0
value=1000,0

[state 1100,ê∫]
type=playsnd
trigger1=animelemtime(3)=0
value=0,0
channel=0

[state 1100,ÉNÉâÉbÉJ]
type=helper
trigger1=animelemtime(4)=0
helpertype=normal
stateno=1102
id=1000
name="Cracker"

[state 1100,ëOêi]
type=velset
trigger1=animelemtime(3)=0
x=7

[State 0, VarSet]
type = Varadd
triggerall = var(12) != 1
trigger1 = movehit
trigger1 = enemynear,statetype = A
v = 10
value = 10
persistent = 0

[state 1100,ÉqÉbÉgíË]
type=hitdef
triggerall = var(12) != 1
trigger1=animelemtime(4)=0
trigger2=animelemtime(4)=3
trigger3=animelemtime(4)=6
trigger4=animelemtime(3)=6
attr=s,sa
animtype=medium
damage=10*ifelse(p2movetype = A,2,1),2
hitflag = MAFP
guardflag=ma
pausetime=5,10
sparkno=s7008
guard.sparkno=s6128
sparkxy=-10,-81
hitsound=s5,12
guardsound=s6,0
ground.type=low
ground.slidetime=18
ground.hittime=18
air.hittime=18
guard.hittime=12
ground.velocity=-2.2,0
air.velocity=-2.2,-3.2
;guard.kill=0
palfx.time = 20
palfx.add = 153,138,0
palfx.mul = 240,240,240
palfx.sinadd = 100,100,100,5
palfx.invertall = 1
palfx.color = 0
getpower = 10,5
givepower = 10,5

[state 1100,ÉqÉbÉgíË]
type=hitdef
triggerall = var(12) = 1
trigger1=animelemtime(4)=0
trigger2=animelemtime(4)=3
trigger3=animelemtime(4)=6
trigger4=animelemtime(3)=6
attr=s,sa
animtype=medium
damage=15*ifelse(p2movetype = A,2,1),2
hitflag = MAFP
guardflag=ma
pausetime=10,20
guard.pausetime = 5,10
sparkno = s6108
guard.sparkno=s6128
sparkxy=-10,-81
hitsound=s5,12
guardsound=s6,0
ground.type=low
ground.slidetime=18
ground.hittime=18
air.hittime=18
guard.hittime=12
ground.velocity=-2.2,0
air.velocity=-2.2,-3.2
;guard.kill=0
palfx.time = 20
palfx.add = 153,138,0
palfx.mul = 240,240,240
palfx.sinadd = 100,100,100,5
palfx.invertall = 1
palfx.color = 0
getpower = 10,5
givepower = 10,5

[State 1005,]
type = VarSet
trigger1 = movehit = 1
var(29) = 2

[state 1100,òAåg]
type=changestate
triggerall=animelem = 4,>= 5 && animelem = 4,<= 30
trigger1=command="1100" || command="1105"
value=1122

[state 1100,òAåg]
type=changestate
triggerall = animelem = 4,>= 5 && animelem = 4,<= 6
trigger1 = AILEVEL
trigger1 = movecontact
value=1122

[state 1100,èIóπ]
type=changestate
trigger1=animtime=0
value=0
ctrl=1
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;ÉNÉâÉbÉJ1
[statedef 1101]
type=s
movetype=a
physics=s
anim=1003
sprpriority=2
ctrl=0

[state 1101,å≈íË]
type=bindtoroot
trigger1=1
facing=1
pos=103,-81

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1130
ID = 1130
pos = 0,0
postype = p1
sprpriority = 4
ownpal = 1
removeongethit = 1
bindtime = -2
removetime = -1

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1140
ID = 1140
pos = 0,0
postype = p1
sprpriority = 3
ownpal = 1
removeongethit = 1
bindtime = -2
removetime = -1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,animelemtime(4)=0
trigger2=root,stateno!=1100
id = 1130

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,animelemtime(4)=0
trigger2=root,stateno!=1100
id = 1140

[state 1101,èIóπ]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(4)=0
trigger2=root,stateno!=1100

[statedef 1102]
type=s
movetype=a
physics=s
anim=1003
sprpriority=2
ctrl=0

[state 1101,å≈íË]
type=bindtoroot
trigger1=1
facing=1
pos=103,-81

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1130
ID = 1130
pos = 0,0
postype = p1
sprpriority = 4
ownpal = 1
removeongethit = 1
bindtime = -2
removetime = -1

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1140
ID = 1140
pos = 0,0
postype = p1
sprpriority = 3
ownpal = 1
removeongethit = 1
bindtime = -2
removetime = -1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,animelemtime(5)=0
trigger2=root,stateno!=1105
id = 1130

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,animelemtime(5)=0
trigger2=root,stateno!=1105
id = 1140

[state 1101,èIóπ]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(5)=0
trigger2=root,stateno!=1105

;---------------------------------------------------------------------------
;ÉNÉâÉbÉJÉîÉHÉåÉC2
[statedef 1110]
type=s
movetype=a
physics=s
poweradd=50
velset=0,0
anim=1110
ctrl=0
juggle = 5

[state 1110,Ç∏ÇÍíºÇµÅH]
type=posadd
trigger1=time=0
x=40

[state 1110,ëfêUÇËâπ]
type=playsnd
trigger1=animelemtime(3)=0
value=1000,0

[state 1110,ê∫]
type=playsnd
trigger1=animelemtime(3)=0
value=1100,3
channel=0

[state 1110,ÉNÉâÉbÉJ]
type=helper
trigger1=animelemtime(3)=0
helpertype=normal
stateno=1111
id=1000
name="Cracker"

[state 1110,ëOêi]
type=velset
trigger1=animelemtime(3)=0
x=6

[State 0, VarSet]
type = Varadd
triggerall = var(12) != 1
trigger1 = movehit
trigger1 = enemynear,statetype = A
v = 10
value = 5
persistent = 0

[state 1110,ÉqÉbÉgíË]
type=hitdef
triggerall = var(12) != 1
trigger1=animelemtime(3)=0
trigger2=animelemtime(3)=3
trigger3=animelemtime(3)=6
trigger4=animelemtime(3)=9
attr=s,sa
animtype=medium
damage=10,5
hitflag = MAFP
guardflag=ma
pausetime=5,10
sparkno=s7008
guard.sparkno=s6128
sparkxy=-10,-90
hitsound=s5,12
guardsound=s6,0
ground.type=low
ground.slidetime=12
ground.hittime=12
air.hittime=12
guard.hittime=9
ground.velocity=-2.2,-3.2
air.velocity=-2.2,-3.2
;guard.kill=0
fall = 1
palfx.time = 20
palfx.add = 153,138,0
palfx.mul = 240,240,240
palfx.sinadd = 100,100,100,5
palfx.invertall = 1
palfx.color = 0

[state 1110,ÉqÉbÉgíË]
type=hitdef
triggerall = var(12) = 1
trigger1=animelemtime(3)=0
trigger2=animelemtime(3)=3
trigger3=animelemtime(3)=6
trigger4=animelemtime(3)=9
attr=s,sa
animtype=medium
damage=15,5
hitflag = MAFP
guardflag=ma
pausetime=10,20
guard.pausetime = 5,10
sparkno = s6108
guard.sparkno=s6128
sparkxy=-10,-90
hitsound=s5,12
guardsound=s6,0
ground.type=low
ground.slidetime=12
ground.hittime=12
air.hittime=12
guard.hittime=9
ground.velocity=-2.2,-3.2
air.velocity=-2.2,-3.2
;guard.kill=0
fall = 1
palfx.time = 20
palfx.add = 153,138,0
palfx.mul = 240,240,240
palfx.sinadd = 100,100,100,5
palfx.invertall = 1
palfx.color = 0

[State 1005,]
type = VarSet
trigger1 = movehit = 1
var(29) = 2

[state 1110,èIóπ]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;ÉNÉâÉbÉJ2
[statedef 1111]
type=s
movetype=a
physics=s
anim=1003
sprpriority=2
ctrl=0

[state 1111,å≈íË]
type=bindtoroot
trigger1=1
facing=1
pos=66,-90

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1130
ID = 1130
pos = 0,0
postype = p1
sprpriority = 4
ownpal = 1
removeongethit = 1
bindtime = -2
removetime = -1

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1140
ID = 1140
pos = 0,0
postype = p1
sprpriority = 3
ownpal = 1
removeongethit = 1
bindtime = -2
removetime = -1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,animelemtime(4)=0
trigger2=root,stateno!=1110
id = 1130

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,animelemtime(4)=0
trigger2=root,stateno!=1110
id = 1140


[state 1111,èIóπ]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(4)=0
trigger2=root,stateno!=1110

;---------------------------------------------------------------------------
;ÉNÉâÉbÉJÉîÉHÉåÉC3:è„íi
[statedef 1120]
type=s
movetype=a
physics=s
poweradd=110
velset=0,0
anim=1120
ctrl=0

[state 1120,ëfêUÇËâπ]
type=playsnd
trigger1=animelemtime(8)=0
value=1000,0


[state 1120,ÉNÉâÉbÉJ]
type=helper
trigger1=animelemtime(8)=0
helpertype=normal
stateno=1121
id=1000
name="Cracker"

[state 1120,ÉqÉbÉgíË]
type=hitdef
trigger1=animelemtime(8)=0
trigger2=animelemtime(8)=3
trigger3=animelemtime(8)=6
attr=s,sa
animtype=medium
damage=ifelse(hitcount,14,63),10
guardflag=ma
pausetime=5,5
sparkno=s6103
guard.sparkno=s6128
sparkxy=-10,-140
hitsound=s5,2
guardsound=s6,0
ground.type=low
ground.slidetime=9
ground.hittime=9
air.hittime=9
ground.velocity=-2.2,-6.2
air.velocity=-2.2,-6.2
fall=1
;guard.kill=0

[state 1120,ÉRÉìï‚ê≥äJén]
type=varset
triggerall=!var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 1120,èIóπ]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;ÉNÉâÉbÉJ3
[statedef 1121]
type=s
movetype=a
physics=s
anim=1003
sprpriority=2
ctrl=0

[state 1121,å≈íË]
type=bindtoroot
trigger1=1
facing=1
pos=33,-140

[state 1121,èIóπ]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(10)=0
trigger2=root,stateno!=1120

;---------------------------------------------------------------------------
;ÉNÉâÉbÉJÉîÉHÉåÉC3:â∫íi
[statedef 1122]
type=s
movetype=a
physics=s
poweradd=50
ctrl=0
velset=0,0
anim=1122
juggle = 5

[state 1122,ê∫]
type=playsnd
trigger1=animelemtime(3)=0
value=1100,3
channel=0

[state 1122,ëfêUÇËâπ]
type=playsnd
trigger1=animelemtime(9)=0
value=1000,0

[state 1122,ÉNÉâÉbÉJ]
type=helper
trigger1=animelemtime(9)=0
helpertype=normal
stateno=1123
id=1000
name="Cracker"

[State 0, VarSet]
type = Varadd
triggerall = var(12) != 1
trigger1 = movehit
trigger1 = enemynear,statetype = A
v = 10
value = 5
persistent = 0

[state 1122,ÉqÉbÉgíË]
type=hitdef
triggerall = var(12) != 1
trigger1=animelemtime(9)=0
trigger2=animelemtime(9)=3
trigger3=animelemtime(9)=6
attr=c,sa
animtype=medium
damage=10,5
hitflag = MAFP
guardflag=l
pausetime=5,10
sparkno=s7008
guard.sparkno=s6128
sparkxy=-10,-9
hitsound=s5,12
guardsound=s6,0
ground.type=low
ground.slidetime=12
ground.hittime=12
air.hittime=12
ground.velocity= -2.2
air.velocity=-2.2,-2.2
;guard.kill=0
air.fall = 1
palfx.time = 20
palfx.add = 153,138,0
palfx.mul = 240,240,240
palfx.sinadd = 100,100,100,5
palfx.invertall = 1
palfx.color = 0
getpower = 10,5
givepower = 10,5

[state 1122,ÉqÉbÉgíË]
type=hitdef
trigger1 = var(12) != 1
trigger1=animelemtime(9)=9
attr=c,sa
animtype=medium
damage=10,5
hitflag = MAFP
guardflag=l
pausetime=5,5
sparkno = s6108
guard.sparkno=s6128
sparkxy=-10,-9
hitsound=s5,12
guardsound=s6,0
ground.type=trip
ground.slidetime=12
ground.hittime=12
air.hittime=12
ground.velocity= -2.2,-2.2
air.velocity=-2.2,-2.2
;guard.kill=0
fall = 1
palfx.time = 20
palfx.add = 153,138,0
palfx.mul = 240,240,240
palfx.sinadd = 100,100,100,5
palfx.invertall = 1
palfx.color = 0
getpower = 10,5
givepower = 10,5

[state 1122,ÉqÉbÉgíË]
type=hitdef
triggerall = var(12) = 1
trigger1=animelemtime(9)=0
trigger2=animelemtime(9)=3
trigger3=animelemtime(9)=6
attr=c,sa
animtype=medium
damage=15,5
hitflag = MAFP
guardflag=l
pausetime=10,20
guard.pausetime = 5,10
sparkno=s7008
guard.sparkno=s6128
sparkxy=-10,-9
hitsound=s5,12
guardsound=s6,0
ground.type=low
ground.slidetime=12
ground.hittime=12
air.hittime=12
ground.velocity= -2.2
air.velocity=-2.2,-2.2
;guard.kill=0
air.fall = 1
palfx.time = 20
palfx.add = 153,138,0
palfx.mul = 240,240,240
palfx.sinadd = 100,100,100,5
palfx.invertall = 1
palfx.color = 0
getpower = 10,5
givepower = 10,5

[state 1122,ÉqÉbÉgíË]
type=hitdef
trigger1 = var(12) = 1
trigger1=animelemtime(9)=9
attr=c,sa
animtype=medium
damage=15,5
hitflag = MAFP
guardflag=l
pausetime=10,10
guard.pausetime = 5,5
sparkno=s6103
guard.sparkno=s6128
sparkxy=-10,-9
hitsound=s5,12
guardsound=s6,0
ground.type=trip
ground.slidetime=12
ground.hittime=12
air.hittime=12
ground.velocity= -2.2,-2.2
air.velocity=-2.2,-2.2
;guard.kill=0
fall = 1
palfx.time = 20
palfx.add = 153,138,0
palfx.mul = 240,240,240
palfx.sinadd = 100,100,100,5
palfx.invertall = 1
palfx.color = 0
getpower = 10,5
givepower = 10,5


[State 1005,]
type = VarSet
trigger1 = movehit = 1
var(29) = 2

[state 1122,èIóπ]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;2SÉNÉâÉbÉJ
[statedef 1123]
type=s
movetype=a
physics=s
anim=1002
sprpriority=2
ctrl=0

[state 1123,å≈íË]
type=bindtoroot
trigger1=1
facing=1
pos=75,-9

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1150
ID = 1150
pos = 0,0
postype = p1
sprpriority = 3
ownpal = 1
removeongethit = 1
bindtime = -2
removetime = -1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,animelemtime(11)=0
trigger2=root,stateno!=1122
id = 1150

[state 1123,èIóπ]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(11)=0
trigger2=root,stateno!=1122

;---------------------------------------------------------------------------
;ÉNÉâÉbÉJÉîÉHÉåÉC3:íÜíi
[statedef 1124]
type=a
movetype=a
physics=n
poweradd=110
velset=2,-2
anim=1124
ctrl=0

[state 1124,èdóÕ]
type=veladd
trigger1=1
y=0.12

[state 1124,ëfêUÇËâπ]
type=playsnd
trigger1=animelemtime(5)=0
value=1000,0

[state 1124,ê∫]
type=playsnd
trigger1=animelemtime(3)=0
value=0,3
channel=0

[state 1124,ÉNÉâÉbÉJ]
type=helper
trigger1=animelemtime(5)=0
helpertype=normal
stateno=1125
id=1000
name="Cracker"

[state 1124,ÉqÉbÉgíË]
type=hitdef
trigger1=animelemtime(5)=0
trigger2=animelemtime(5)=3
trigger3=animelemtime(5)=6
trigger4=var(0)&16
attr=a,sa
damage=ifelse(hitcount,14,63),7
guardflag=ha
pausetime=5,5
sparkno=s6103
guard.sparkno=s6128
sparkxy=-10,-81
hitsound=s5,2
guardsound=s6,0
ground.type=low
ground.slidetime=15
ground.hittime=15
air.hittime=15
ground.velocity=-2.2,0
air.velocity=-2.2,-3.2
;guard.kill=0

[state 1124,ÉRÉìï‚ê≥äJén]
type=varset
triggerall=!var(1)
trigger1=hitcount>1
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 1124,íÖín]
type=changestate
trigger1=pos y>=0
trigger1=vel y>0
value=52

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;JSÉNÉâÉbÉJ
[statedef 1125]
type=s
movetype=a
physics=s
anim=1003
sprpriority=2
ctrl=0

[state 1125,å≈íË]
type=bindtoroot
trigger1=1
facing=1
pos=50,-52

[state 1125,èIóπ]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(7)=0
trigger2=root,stateno!=1124

;===========================================================================
[statedef 1200]
type=s
movetype=a
physics=s
poweradd=110
ctrl=0
velset=0,0
anim=310
juggle = 12

[State 0, HitBy]
type = NotHitBy
trigger1 = time <= 10
value = SCA


[state 310,ëfêUÇËâπ]
type=playsnd
trigger1=animelemtime(8)=0
value=1000,0

[state 310,ê∫]
type=playsnd
trigger1=animelemtime(6)=0
value=1100,2
channel=0

[state 310,ÉNÉâÉbÉJ]
type=helper
trigger1=animelemtime(8)=1
helpertype=normal
stateno=311
id=1000
name="Cracker"

[State 0, VarSet]
type = Varadd
triggerall = var(12) != 1
trigger1 = movehit
trigger1 = enemynear,statetype = A
v = 10
value = 12
persistent = 0

[state 310,ÉqÉbÉgíË]
type=hitdef
triggerall = var(12) != 1
trigger1= animelem = 8
attr=s,sa
animtype=medium
damage = 80*ifelse(p2statetype = A && p2movetype != H,fvar(7),1),7
guardflag=ma
pausetime=5,5
sparkno=s7008
guard.sparkno=s6128
sparkxy=-10,-140
hitsound=s5,12
guardsound=s6,0
ground.type=low
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity=-2.5,-6
air.velocity=-2.5,-6
fall=1
fall.recover = 0
palfx.time = 20
palfx.add = 153,138,0
palfx.mul = 240,240,240
palfx.sinadd = 100,100,100,5
palfx.invertall = 1
palfx.color = 0
getpower = 60,30
givepower = 30,15

[state 310,ÉqÉbÉgíË]
type=hitdef
triggerall = var(12) = 1
trigger1= animelem = 8
attr=s,sa
animtype=medium
damage = 120*ifelse(p2statetype = A && p2movetype != H,fvar(7),1),7
guardflag=ma
pausetime=10,10
guard.pausetime = 5,5
sparkno = s6108
guard.sparkno=s6128
sparkxy=-10,-140
hitsound=s5,12
guardsound=s6,0
ground.type=low
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity=-2.5,-6
air.velocity=-2.5,-6
fall=1
fall.recover = 0
palfx.time = 20
palfx.add = 153,138,0
palfx.mul = 240,240,240
palfx.sinadd = 100,100,100,5
palfx.invertall = 1
palfx.color = 0
getpower = 60,30
givepower = 30,15

[State 1005,]
type = VarSet
trigger1 = movehit = 1
var(29) = 2


[state 310,èIóπ]
type=changestate
trigger1=animtime=0
value=0
ctrl=1



[statedef 1210]
type=s
movetype=a
physics=s
poweradd=110
ctrl=0
velset=0,0
anim=310
juggle = 12

[State 0, HitBy]
type = NotHitBy
trigger1 = time <= 12
value = SCA

[state 310,ëfêUÇËâπ]
type=playsnd
trigger1=animelemtime(8)=0
value=1000,0

[state 310,ê∫]
type=playsnd
trigger1=animelemtime(6)=0
value=1100,2
channel=0

[state 310,ÉNÉâÉbÉJ]
type=helper
trigger1=animelemtime(8)=1
helpertype=normal
stateno=312
id=1000
name="Cracker"

[State 0, VarSet]
type = Varadd
triggerall = var(12) != 1
trigger1 = movehit
trigger1 = enemynear,statetype = A
v = 10
value = 12
persistent = 0

[state 310,ÉqÉbÉgíË]
type=hitdef
triggerall = var(12) != 1
trigger1= animelem = 7
attr=s,sa
animtype=medium
damage = 20*ifelse(p2statetype = A && p2movetype != H,fvar(7),1),7
guardflag = MA
priority = 3, Hit
pausetime = 7,9
sparkno=s6102
guard.sparkno=s6128
sparkxy=-10,-70
hitsound=s5,2
guardsound=s6,0
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
guard.hittime  = 17
ground.velocity = -12*const(size.xscale),-6
air.velocity = -3.5*const(size.xscale),-6
getpower = 20,10
givepower = 10,5
fall=1
fall.recover = 0

[state 310,ÉqÉbÉgíË]
type=hitdef
triggerall = var(12) != 1
trigger1=animelemtime(8)=0
trigger2=animelemtime(8)=3
trigger3=animelemtime(8)=6
attr=s,sa
animtype=medium
damage = 20*ifelse(p2statetype = A && p2movetype != H,fvar(7),1),7
guardflag=ma
pausetime=5,5
sparkno=s7008
guard.sparkno=s6128
sparkxy=-10,-140
hitsound=s5,12
guardsound=s6,0
ground.type=low
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity=-2.5,-6
air.velocity=-2.5,-6
fall=1
fall.recover = 0
palfx.time = 20
palfx.add = 153,138,0
palfx.mul = 240,240,240
palfx.sinadd = 100,100,100,5
palfx.invertall = 1
palfx.color = 0
getpower = 20,10
givepower = 10,5

[state 310,ÉqÉbÉgíË]
type=hitdef
triggerall = var(12) = 1
trigger1= animelem = 7
attr=s,sa
animtype=medium
damage = 40*ifelse(p2statetype = A && p2movetype != H,fvar(7),1),7
guardflag = MA
priority = 3, Hit
pausetime = 14,18
guard.pausetime = 7,9
sparkno = s6108
guard.sparkno=s6128
sparkxy=-10,-70
hitsound=s5,2
guardsound=s6,0
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
guard.hittime  = 17
ground.velocity = -12*const(size.xscale),-6
air.velocity = -3.5*const(size.xscale),-6
getpower = 20,10
givepower = 10,5
fall=1
fall.recover = 0

[state 310,ÉqÉbÉgíË]
type=hitdef
triggerall = var(12) = 1
trigger1=animelemtime(8)=0
trigger2=animelemtime(8)=3
trigger3=animelemtime(8)=6
attr=s,sa
animtype=medium
damage = 40*ifelse(p2statetype = A && p2movetype != H,fvar(7),1),7
guardflag=ma
pausetime=10,10
guard.pausetime = 5,5
sparkno = s6108
guard.sparkno=s6128
sparkxy=-10,-140
hitsound=s5,12
guardsound=s6,0
ground.type=low
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity=-2.5,-6
air.velocity=-2.5,-6
fall=1
fall.recover = 0
palfx.time = 20
palfx.add = 153,138,0
palfx.mul = 240,240,240
palfx.sinadd = 100,100,100,5
palfx.invertall = 1
palfx.color = 0
getpower = 20,10
givepower = 10,5

[State 1005,]
type = VarSet
trigger1 = movehit = 1
var(29) = 2


[state 310,èIóπ]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;6SÉNÉâÉbÉJ
[statedef 311]
type=s
movetype=a
physics=s
anim=1003
sprpriority=2
ctrl=0

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1130
ID = 1130
pos = 0,0
postype = p1
sprpriority = 4
ownpal = 1
removeongethit = 1
bindtime = -2
removetime = -1

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1140
ID = 1140
pos = 0,0
postype = p1
sprpriority = 3
ownpal = 1
removeongethit = 1
bindtime = -2
removetime = -1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,animelemtime(10)=0
trigger2=root,stateno!=1200
id = 1130

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,animelemtime(10)=0
trigger2=root,stateno!=1200
id = 1140


[state 311,å≈íË]
type=bindtoroot
trigger1=1
facing=1
pos=33,-140

[state 311,èIóπ]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(10)=0
trigger2=root,stateno!=1200

[statedef 312]
type=s
movetype=a
physics=s
anim=1003
sprpriority=2
ctrl=0

[state 311,å≈íË]
type=bindtoroot
trigger1=1
facing=1
pos=33,-140

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1130
ID = 1130
pos = 0,0
postype = p1
sprpriority = 4
ownpal = 1
removeongethit = 1
bindtime = -2
removetime = -1

[State 0, Explod]
type = Explod
trigger1 = animelem = 1
anim = 1140
ID = 1140
pos = 0,0
postype = p1
sprpriority = 3
ownpal = 1
removeongethit = 1
bindtime = -2
removetime = -1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,animelemtime(10)=0
trigger2=root,stateno!=1210
id = 1130

[State 0, RemoveExplod]
type = RemoveExplod
trigger1=root,animelemtime(10)=0
trigger2=root,stateno!=1210
id = 1140

[state 311,èIóπ]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(10)=0
trigger2=root,stateno!=1210
;===========================================================================
;îgñ‰ÉJÉbÅEé„
[statedef 1300]
type=s
movetype=a
physics=s
poweradd=100
velset=0,0
anim=1300
ctrl=0
sprpriority= -2
juggle = 10

[state 1300,ÉIÉoÉhÉâÉCÉuÅI]
type=playsnd
trigger1=animelemtime(4)=0
value=1300,0
channel=0

[state 1300,ÉIÉoÉhÉâÉCÉuÅI]
type=playsnd
trigger1=animelemtime(4)=0
value=379,2
channel=2

[state 1300,ÉJÉbÇÃÉGÉtÉFÉNÉg]
type=explod
trigger1=animelem = 7
anim=12100
pos=100,-70
scale=0.5,0.5
sprpriority = 3
ownpal=1

[State 0, VarSet]
type = Varadd
triggerall = var(12) != 1
trigger1 = movehit
trigger1 = enemynear,statetype = A
v = 10
value = 10
persistent = 0

[state 1300,ÉqÉbÉgíË]
type=hitdef
triggerall = var(12) != 1
trigger1= animelem = 7
attr=s,sp
animtype=hard
damage=80,10
hitflag=MAFP
guardflag=ma
pausetime=15,16
sparkno=s7008
guard.sparkno=s6128
sparkxy=0,-65
hitsound=s5,12
guardsound=s6,0
ground.type=low
ground.slidetime=21
ground.hittime=21
air.hittime=21
ground.velocity=-10
ground.cornerpush.veloff=0
guard.velocity=-7
air.velocity=-3.5,-4.5
airguard.velocity=-3.5,-4.5
;guard.kill=0
guard.dist=250
air.fall = 1
palfx.time = 20
palfx.add = 153,138,0
palfx.mul = 240,240,240
palfx.sinadd = 100,100,100,5
palfx.invertall = 1
palfx.color = 0
getpower = 60,30
givepower = 30,15

[state 1300,ÉqÉbÉgíË]
type=hitdef
triggerall = var(12) = 1
trigger1= animelem = 7
attr=s,sp
animtype=hard
damage=120,10
hitflag=MAFP
guardflag=ma
pausetime=30,32
guard.pausetime = 15,16
sparkno = s6108
guard.sparkno=s6128
sparkxy=0,-65
hitsound=s5,12
guardsound=s6,0
ground.type=low
ground.slidetime=42
ground.hittime=42
air.hittime=42
guard.hittime=21
ground.velocity=-10
ground.cornerpush.veloff=0
guard.velocity=-7
air.velocity=-3.5,-4.5
airguard.velocity=-3.5,-4.5
;guard.kill=0
guard.dist=250
air.fall = 1
palfx.time = 20
palfx.add = 153,138,0
palfx.mul = 240,240,240
palfx.sinadd = 100,100,100,5
palfx.invertall = 1
palfx.color = 0
getpower = 60,30
givepower = 30,15

[State 1005,]
type = VarSet
trigger1 = movehit = 1
var(29) = 2

[state 1300,èIóπ]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;îgñ‰ÉJÉbÅEíÜ
[statedef 1310]
type=s
movetype=a
physics=s
poweradd=100
velset=0,0
anim=1310
ctrl=0
juggle = 10

[state 1310,ÉIÉoÉhÉâÉCÉuÅI]
type=playsnd
trigger1=animelemtime(4)=0
value=1300,0
channel=0

[state 1300,ÉIÉoÉhÉâÉCÉuÅI]
type=playsnd
trigger1=animelemtime(4)=0
value=379,2
channel=2

[state 1300,ÉJÉbÇÃÉGÉtÉFÉNÉg]
type=explod
trigger1=animelem = 7
anim=12100
pos=100,-70
scale=0.5,0.5
sprpriority = 3
ownpal=1

[State 0, VarSet]
type = Varadd
triggerall = var(12) != 1
trigger1 = movehit
trigger1 = enemynear,statetype = A
v = 10
value = 10
persistent = 0


[state 1300,ÉqÉbÉgíË]
type=hitdef
triggerall = var(12) != 1
trigger1= animelem = 7
attr=s,sp
animtype=hard
damage=80,10
hitflag=MAFP
guardflag=ma
pausetime=15,16
sparkno=s7008
guard.sparkno=s6128
sparkxy=0,-65
hitsound=s5,12
guardsound=s6,0
ground.type=low
ground.slidetime=21
ground.hittime=21
air.hittime=21
ground.velocity=-3.5,-4.5
ground.cornerpush.veloff=0
guard.velocity=-7
air.velocity=-3.5,-4.5
airguard.velocity=-3.5,-4.5
;guard.kill=0
guard.dist=250
fall = 1
palfx.time = 20
palfx.add = 153,138,0
palfx.mul = 240,240,240
palfx.sinadd = 100,100,100,5
palfx.invertall = 1
palfx.color = 0
getpower = 60,30
givepower = 30,15

[state 1300,ÉqÉbÉgíË]
type=hitdef
triggerall = var(12) = 1
trigger1= animelem = 7
attr=s,sp
animtype=hard
damage=120,10
hitflag=MAFP
guardflag=ma
pausetime=30,32
guard.pausetime = 15,16
sparkno = s6108
guard.sparkno=s6128
sparkxy=0,-65
hitsound=s5,12
guardsound=s6,0
ground.type=low
ground.slidetime=42
ground.hittime=42
air.hittime=42
guard.hittime=21
ground.velocity=-3.5,-4.5
ground.cornerpush.veloff=0
guard.velocity=-7
air.velocity=-3.5,-4.5
airguard.velocity=-3.5,-4.5
;guard.kill=0
guard.dist=250
fall = 1
palfx.time = 20
palfx.add = 153,138,0
palfx.mul = 240,240,240
palfx.sinadd = 100,100,100,5
palfx.invertall = 1
palfx.color = 0
getpower = 60,30
givepower = 30,15

[State 1005,]
type = VarSet
trigger1 = movehit = 1
var(29) = 2

[state 1310,èIóπ]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;===========================================================================
;ÉAÉCÉAÉìÉKÉìÅEé„
[statedef 1400]
type=s
movetype=a
physics=s
poweradd=100
velset=0,0
anim=1400
ctrl=0
juggle = 14

[state 1400,î≠éÀâπ]
type=playsnd
trigger1=animelemtime(5)=0
value=1400,0

[State 0, VarSet]
type = Varadd
triggerall = var(12) != 1
trigger1 = movehit
trigger1 = enemynear,statetype = A
v = 10
value = 14
persistent = 0

[state 1400,íe]
type=projectile
triggerall = var(12) != 1
trigger1=animelemtime(5)=0
attr=s,sp
damage=70,14
animtype=hard
pausetime=0,12
offset=75,-77
velocity=5,0
projid=1400
projanim=1404
projhitanim=1405
projremanim=1405
projhits=1
guardflag=ma
sparkno=s6103
guard.sparkno=s6128
sparkxy=0,0
hitsound=s5,2
guardsound=s6,0
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=15
ground.velocity=-6,0
air.velocity=-3,-4
;guard.kill=0
getpower = 60,30
givepower = 30,15

[state 1400,íe]
type=projectile
triggerall = var(12) = 1
trigger1=animelemtime(5)=0
attr=s,sp
damage=105,14
animtype=hard
pausetime=0,24
guard.pausetime = 0,12
offset=75,-77
velocity=5,0
projid=1400
projanim=1404
projhitanim=1405
projremanim=1405
projhits=1
guardflag=ma
sparkno = s6108
guard.sparkno=s6128
sparkxy=0,0
hitsound=s5,2
guardsound=s6,0
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=15
ground.velocity=-6,0
air.velocity=-3,-4
;guard.kill=0
getpower = 60,30
givepower = 30,15

[State 0, ParentVarAdd]
type = VarAdd
trigger1 = projhit1400 = 1
v = 31
value = 1

[state 1400,èIóπ]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;ÉAÉCÉAÉìÉKÉìÅEíÜ
[statedef 1410]
type=s
movetype=a
physics=s
poweradd=100
velset=0,0
anim=1400
ctrl=0
juggle = 14

[state 1410,î≠éÀâπ]
type=playsnd
trigger1=animelemtime(5)=0
value=1400,0

[State 0, VarSet]
type = Varadd
triggerall = var(12) != 1
trigger1 = movehit
trigger1 = enemynear,statetype = A
v = 10
value = 14
persistent = 0

[state 1410,íe]
type=projectile
triggerall = var(12) != 1
trigger1=animelemtime(5)=0
attr=s,sp
damage=70,14
animtype=hard
pausetime=0,12
offset=75,-77
velocity=10,0
projid=1400
projanim=1404
projhitanim=1406
projremanim=1406
projhits=1
guardflag=ma
sparkno=s6103
guard.sparkno=s6128
sparkxy=0,0
hitsound=s5,2
guardsound=s6,0
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=15
ground.velocity=-6,0
air.velocity=-3,-4
;guard.kill=0
getpower = 60,30
givepower = 30,15

[state 1410,íe]
type=projectile
triggerall = var(12) = 1
trigger1=animelemtime(5)=0
attr=s,sp
damage=105,14
animtype=hard
pausetime=0,24
guard.pausetime = 0,12
offset=75,-77
velocity=10,0
projid=1400
projanim=1404
projhitanim=1406
projremanim=1406
projhits=1
guardflag=ma
sparkno = s6108
guard.sparkno=s6128
sparkxy=0,0
hitsound=s5,2
guardsound=s6,0
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=15
ground.velocity=-6,0
air.velocity=-3,-4
;guard.kill=0
getpower = 60,30
givepower = 30,15

[State 0, ParentVarAdd]
type = VarAdd
trigger1 = projhit1400 = 1
v = 31
value = 1

[state 1410,èIóπ]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;ÉAÉCÉAÉìÉKÉìÅEã≠
[statedef 1420]
type=s
movetype=a
physics=s
poweradd=100
velset=0,0
anim=1420
ctrl=0

[state 1420,î≠éÀâπ]
type=playsnd
trigger1=animelemtime(12)=0
value=1400,0

[state 1420,íe]
type=Helper
trigger1=animelemtime(12)=0
helpertype=normal
name="Bowgun_Ball"
ID=1420
pos=-70,-85
postype=p1
facing=1
stateno=1421
keyctrl=0
ownpal=1

[state 1420,èIóπ]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;ÉAÉCÉAÉìÉKÉìÅEã≠:íe(ëOåi)
[statedef 1421]
anim=1403
type=u
movetype=a
physics=n
ctrl=0
velset=-6,0
sprpriority=3

[state 1421,îΩ]
type=turn
trigger1=time=0

[state 1421,îªíË]
type=hitdef
trigger1=time=0
trigger2=root,var(0)&16
attr=s,sp
damage=70,14
animtype=hard
pausetime=0,12
guardflag=ma
sparkno=s6103
guard.sparkno=s6128
sparkxy=0,0
hitsound=s5,2
guardsound=s6,0
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=15
ground.velocity=-2,0
air.velocity=-2,-1
;guard.kill=0
p2facing=1

[state 1421,îwåiÇ÷]
type=changestate
trigger1=facing*pos x>170
value=1422

[state 1421,2ÉqÉbÉgñ⁄Ç÷]
type=changestate
triggerall=ishelper
trigger1=movecontact
value=1423

[state 1421,ÉKïs]
type=assertspecial
triggerall=ishelper
trigger1=root,var(0)&8
flag=unguardable
ignorehitpause=1

[state 1421,ëŒãzååãSï‚ê≥]
type=attackmulset
triggerall=ishelper
trigger1=root,fvar(39)
value=root,fvar(39)
ignorehitpause=1

;---------------------------------------------------------------------------
;ÉAÉCÉAÉìÉKÉìÅEã≠:íe(îwåi)
[statedef 1422]
anim=1402
type=u
movetype=i
physics=n
ctrl=0
velset=-6,0
sprpriority=-3

[state 1422,îΩ]
type=turn
trigger1=time=0

[state 1422,è¡ñ≈]
type=destroyself
triggerall=ishelper
trigger1=time=0
trigger1=var(0)>=1

[state 1422,é¸âÒêîÇÃãL]
type=varadd
trigger1=time=0
var(0)=1

[state 1422,âúÇ…é¶Ç¡Ç€Ç≠]
type=offset
trigger1=1
y=-30

[state 1422,ëOñ Ç÷]
type=changestate
trigger1=facing*pos x>170
value=1421

;---------------------------------------------------------------------------
;ÉAÉCÉAÉìÉKÉìÅEã≠:íe(1ÉqÉbÉgå„)
[statedef 1423]
anim=1403
type=u
movetype=a
physics=n
ctrl=0
velset=6,0
sprpriority=3

[state 1423,îªíË]
type=hitdef
trigger1=time=3
trigger2=root,var(0)&16
attr=s,sp
damage=14,7
animtype=hard
pausetime=0,12
guardflag=ma
sparkno=s6103
guard.sparkno=s6128
sparkxy=0,0
hitsound=s5,2
guardsound=s6,0
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=15
ground.velocity=-2,0
air.velocity=-2,-1
;guard.kill=0

[state 1423,è¡ñ≈]
type=destroyself
triggerall=ishelper
trigger1=time>20

[state 1423,ÉRÉìï‚ê≥äJén]
type=parentvarset
triggerall=!root,var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 1423,ÉKïs]
type=assertspecial
triggerall=ishelper
trigger1=root,var(0)&8
flag=unguardable
ignorehitpause=1

[state 1423,ëŒãzååãSï‚ê≥]
type=attackmulset
triggerall=ishelper
trigger1=root,fvar(39)
value=root,fvar(39)
ignorehitpause=1

;===========================================================================
;ÉâÉWÉbÉN

;===============================================================================
; Power Charge:
;-------------------------------------------------------------------------------
;Carga

[Statedef 379]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 1900
sprpriority = 1

[State 730, Flash]
type = palfx
trigger1 = 1
time = 1
add = 25 + ceil(sin(time / 2.0 * pi) * 150), 25 + ceil(sin(time / 2.0 * pi) * 150), 100 + ceil(sin(time / 2.0 * pi) * 150)

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 6138
ID = 550
pos = -1,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = .3,.3
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 6138
ID = 550
pos = -1,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 1
ontop = 0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3000, ÉQÉWëùâ¡]
type = PowerAdd
trigger1 = 1;time%2
value = 5

[State 1000, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = Time = 0
value = 379, 1
loop = 1
channel = 2

[State 1000, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = Time = 0
value = 0, 5
channel = 0

[State 1010, ÉXÉeÉgïœçX]
type = ChangeState
trigger1 = time > 0
trigger1 = command != "hold_c"
value = 1901
;---------------------------------------------------------------------------
;îgñ‰ÇÃåƒãzEND
[Statedef 1901]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 0
sprpriority = 1

[State 0, StopSnd]
type = StopSnd
trigger1 = Time = 0
channel = 2
;ignorehitpause =
;persistent =


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 10
id = 550

[State 1010, ÉXÉeÉgïœçX]
type = ChangeState
trigger1 = time = 10
value = 0
ctrl = 1



[Statedef 1500]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1500
ctrl = 0
poweradd = 100

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time = [0,7]
value = SCA
;persistent = 

[State 191, Wood 1]
type = helper
trigger1 = animelem = 1
name = "sakushi"
helpertype = normal
stateno = 1512
id = 1512
postype = p1
pos = ceil(32*const(size.xscale)),ceil(-73*const(size.yscale))
sprpriority = 3

[State 230, 2]
type = HitDef
triggerall = p2stateNo != 40
triggerall = p2stateNo != [150,155]
trigger1 = p2bodydist x <= 30
trigger1 = Time = 0
attr = S, ST
hitflag = M
priority = 5, hit
hitsound = s1,6
sparkno = -1
sprpriority = 1
p2facing = 1
p1stateno = 1511
p2stateno = 1514
fall = 1


[State 1051, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------
; ´”?´»?‹‚?

[Statedef 1511]
type    = S
movetype= I
physics = S
anim = 1511
sprpriority = 2
velset = 0,0

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time = 0
value = 60

[State 810, Throw Sound]
type = playsnd
trigger1 = time = 1
value = 1500,0

[state 3000]
type = playsnd
trigger1 = time = 1
value = 1500,1

[State 191, Wood 1]
type = Explod
trigger1 = animelem = 21
anim = 6103
id = 6103
postype = p1
pos = ceil(92*const(size.xscale)),ceil(-80*const(size.yscale))
sprpriority = 4
ownpal = 1
supermovetime = 999999999
pausemovetime = 999999999

;[State 810, Throw Sound]
;type = playsnd
;trigger1 = animelem = 21
;value = 1,8

[State 810, Throw Sound]
type = playsnd
trigger1 = animelem = 21
value = 5,4
channel = 0

[State 810, Throw Sound]
type = width
trigger1 = 1
value = ceil(65*const(size.xscale)),0

[State 191, Wood 1]
type = helper
trigger1 = animelem = 1
name = "sakushi2"
helpertype = normal
stateno = 1513
id = 1513
postype = p1
pos = 0,0
sprpriority = 3

[State 191, Wood 1]
type = Explod
trigger1 = time % 15= 0
trigger1 = time < 51
anim = 1516
id = 1516
postype = p1
pos = ceil(32*const(size.xscale)),ceil(-73*const(size.yscale))
sprpriority = 4
vel = 4*const(size.xscale),0
ownpal = 1

[state 6100, Explod]
type = Explod
trigger1 = time % 15= 0
trigger1 = time < 51
anim = 7120 + random%2
id = 7100
sprpriority = 5
postype = p2
pos = 20 - (random%40),-20 - (random%90)
bindtime = 1
ownpal = 1
random = 100,100
ignorehitpause = 1 

[State 1005,]
type = VarSet
trigger1 = AnimElem = 21
var(29) = 2

[State 1060, 5]
type = envshake
trigger1 = time % 3= 0
trigger1 = (time = [20,51])
time = 3
freq = 320
ampl = -6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 50*const(size.xscale), 0

[State 810, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 21
value = -80

[State 1052, 5]
type = posadd
trigger1 = AnimTime = 0
x = 45*const(size.xscale)

[State 1052, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------
; ´”?´»?´œ?´ﬂ´√´»

[Statedef 1512]
type    = A
movetype= I
physics = N
anim = 1512
sprpriority = 3
velset = 0,0

[State 191, 2] 
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1065, 3]
type = bindtoparent
trigger1 = parent,animelem = 1
pos = 32*const(size.xscale),-73*const(size.yscale)
time = 8

[State 1065, 3]
type = bindtoparent
trigger1 = parent,animelem = 4
pos = 50*const(size.xscale),-75*const(size.yscale)
time = 3

[State 1065, 3]
type = bindtoparent
trigger1 = parent,animelem = 5
pos = 63*const(size.xscale),-39*const(size.yscale)
time = 10

[State 1065, 3]
type = bindtoparent
trigger1 = parent,animelem = 6
pos = 27*const(size.xscale),-66*const(size.yscale)
time = 5

[State 1052, 5]
type = destroyself
trigger1 = parent,AnimTime = 0
trigger2 = parent,stateno != 1500

;------------------
; ´”?´»?´œ?´ﬂ´√´»?™ƒ™´™ﬂ‡˜ÕÌ„¡

[Statedef 1513]
type    = A
movetype= I
physics = N
anim = 1513
sprpriority = 3
velset = 0,0

[State 191, 2] 
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1065, 3]
type = bindtoparent
trigger1 = parent,animelem = 1
pos = 0,0
time = 51

[State 1065, 3]
type = bindtoparent
trigger1 = parent,animelem = 19
pos = 53*const(size.xscale),-77*const(size.yscale)
time = 2

[State 1065, 3]
type = bindtoparent
trigger1 = parent,animelem = 20
pos = 46*const(size.xscale),-75*const(size.yscale)
time = 2

[State 1065, 3]
type = bindtoparent
trigger1 = parent,animelem = 21
pos = 44*const(size.xscale),-79*const(size.yscale)
time = 40

[State 1065, 3]
type = bindtoparent
trigger1 = parent,animelem = 22
pos = 67*const(size.xscale),-75*const(size.yscale)
time = 5

[State 1013,9]
type = SprPriority
trigger1 = parent,animelem = 19
value = 1

[State 1052, 5]
type = destroyself
trigger1 = parent,AnimTime = 0
trigger2 = parent,stateno != 1511

;---------------------------------------------------------------------------
; ´”?´»?ﬂ”‚¢™Ø™È™§Ú¢ﬂæ
[Statedef 1514]
type    = S
movetype= H
physics = N
poweradd= 40
velset = 0,0
ctrl = 0
sprpriority = 1

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time = 0
value = 30

[State 1060, 2]
type = changeanim2
trigger1 = time = 0
value = 1514

[State 1060, 2]
type = palfx
trigger1 = time = 5
trigger2 = time = 20
trigger3 = time = 35
trigger4 = time = 50
time = 10
add = 153,138,0
mul = 240,240,240
sinadd = 100,100,100,5
invertall = 1


[State 1060, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1515

;------------------
; ´”?´»?ﬂ”‚¢™Ø™È™§ÕˆÒÈ
[Statedef 1515]
type    = A
movetype= H
physics = N
velset = -2,-12

[State 1060, 2]
type = changeanim2
trigger1 = time = 0
value = 1515

[State 1060, 2]
type = posadd
trigger1 = time = 0
x = -30

[State 1061, 1]
type = VelAdd
trigger1 = 1
y = .5

[State 1061, 2]
type = selfState
trigger1 = Vel Y > 0 && Pos Y >= 10
value = 5110

;-------------------------------------------------------------------------------------------

[Statedef 1600]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1600
ctrl = 0
poweradd = 50

[State 3000, Super A]
type = varset
trigger1 = 1
var(12)=0

[State 1000, 1]
type = Varadd
triggerall = time = 0
triggerall = var(40) > 0
trigger1 = prevstateno = 210 || prevstateno = 220 || prevstateno = 410 || prevstateno = 500
trigger2 = prevstateno = 1100 || prevstateno = 1105 || prevstateno = 1110 || prevstateno = 1122
trigger3 = prevstateno = 1200 || prevstateno = 1210
trigger4 = prevstateno = 1300 || prevstateno = 1310
var(40) = -160
ignorehitpause = 1
persistent = 1

[State 1000, 2]
type = PalFX
triggerall = var(40) > 0
triggerall = (GameTime%2) = 0 && time < 8
trigger1 = prevstateno = 210 || prevstateno = 220 || prevstateno = 410 || prevstateno = 500
trigger2 = prevstateno = 1100 || prevstateno = 1105 || prevstateno = 1110 || prevstateno = 1122
trigger3 = prevstateno = 1200 || prevstateno = 1210
trigger4 = prevstateno = 1300 || prevstateno = 1310
time = 1
add = 256,256,256
mul = 256,256,256
sinadd = 256,256,256,1
invertall = 0
color = 256
ignorehitpause = 1

[state 3003]
type = helper
trigger1 = time = 0
name = "hermit purple"
helpertype = normal
stateno = 11040
id = 11040
pos = ceil(0*const(size.xscale)),ceil(0*const(size.yscale))
postype = p1
ownpal = 1
keyctrl = 0

[State 810, Throw Sound]
type = playsnd
trigger1 = animelem = 1
value = 1600,0
channel = 0

[State 810, Throw Sound]
type = playsnd
trigger1 = animelem = 7
value = 1600,2

[State 230, 2]
type = HitDef
trigger1 = animelem = 7
attr = S, SA
damage = 0, 0
pausetime = 0,0
guard.pausetime = 0,20
guard.sparkno=s6128
hitflag = M
guardflag = MA
sparkno = -1
sparkxy = -10,-70
hitsound   = -1
guardsound = s6,0
sprpriority = 1
ground.velocity = -5*const(size.xscale),0
guard.velocity = -5*const(size.xscale)
guard.hittime  = 6
guard.slidetime = 6
air.velocity = 0,0
p2facing = 1
p1stateno = 1641
p2stateno = 1643
ID = 1040

[State 1051, 2]
type = ChangeState
trigger1 = moveguarded || Movereversed
value = 1642


[State 1051, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 1641]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1641
ctrl = 0
sprpriority = 0

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time = 0
value = 50

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 810, Throw Sound]
type = width
trigger1 = 1
value = ceil(240*const(size.xscale)),0

[state 3003]
type = helper
trigger1 = time = 0
name = "hermit purple"
helpertype = normal
stateno = 11041
id = 11041
pos = 10,0
postype = p1
ownpal = 1
keyctrl = 0

[State 1051, 2]
type = ChangeState
trigger1 = animtime = 0
value = 1645

[State 191, Wood 1]
type = Explod
trigger1 = time = 6
anim = 11046
id = 11046
postype = p2
pos = 0,ceil(-30*const(size.yscale))
sprpriority = 3
removetime = -1
bindtime = -1
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[State 810, Bind 1]
type = TargetBind
trigger1 = p2dist X <= 224*const(size.xscale)
pos = 225*const(size.xscale), 0


[Statedef 1645]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1645
ctrl = 0
sprpriority = 0

[State 3000, Super A]
type = varset
trigger1 = 1
var(12)=0

[state 3003]
type = helper
trigger1 = time = 0
name = "hermit purple"
helpertype = normal
stateno = 11047
id = 11047
pos = 0,0
postype = p1
ownpal = 1
keyctrl = 0

[State 810, Throw Sound]
type = playsnd
trigger1 = animelem = 1
value = 1600,1
channel = 0

[State 191, Wood 1]
type = Explod
triggerall = prevstateno = 1641
trigger1 = numexplod(11046) = 0
trigger1 = time = 0
anim = 11046
id = 11046
postype = p2
pos = 0,ceil(-30*const(size.yscale))
sprpriority = 3
removetime = -1
bindtime = -1
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5071, 1]
type = removeexplod
trigger1 = animelem = 3
id = 11046

[State 810, Bind 1]
type = TargetBind
trigger1 = time = 0
pos = 120*const(size.xscale), 0
time = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = time = 5
pos = 97*const(size.xscale), 0
time = 1

[State 1051, 2]
type = targetstate
trigger1 = time = 0
value = 1646

[state 1100,òAåg]
type=changestate
triggerall=animelem = 3,>= 1 && animelem = 3,<= 12
trigger1=command="x" || command="y"
trigger1=command="holdfwd"
value=1650

[state 1100,òAåg]
type=changestate
triggerall=animelem = 3,>= 1 && animelem = 3,<= 3
trigger1=AILEVEL
value=1650


[State 1051, 2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 1643]
type    = S
movetype= H
physics = N
ctrl = 0
sprpriority = 2

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time = 0
value = 25

[State 1051, 2]
type = Changeanim2
trigger1 = time = 0
value = 1642

[State 1051, 2]
type = selfstate
trigger1 = time >= 180
value = 0
ctrl = 1

[Statedef 1646]
type    = S
movetype= H
physics = N
ctrl = 0
velset = 0,0
sprpriority = 2

[State 1051, 2]
type = Changeanim2
trigger1 = time = 0
value = 1643

[State 1065, 3]
type = sprpriority
trigger1 = time = 15
value = -1

[State 108, 0]
type = Velset
trigger1   = time = 5
x = 6*enemy,const(size.xscale)

[State 108, 0]
type = VelAdd
trigger1   = time >= 5
trigger1   = Vel X > 0
x = -0.24*enemy,const(size.xscale)

[State 108, 0]
type = Velset
trigger1   = time >= 5
trigger1   = Vel X < 0
x = 0

[State 1051, 2]
type = selfstate
trigger1 = time = 28
value = 0
ctrl = 1


[Statedef 11040]
type    = A
movetype= I
physics = N
velset = 0,0


[State 1065, 3]
type = sprpriority
trigger1 = parent,anim = 1600 
trigger1 = parent,animelem = 1
value = 3

[State 1065, 3]
type = changeanim
trigger1 = parent,anim = 1600
trigger1 = parent,animelem = 1
trigger1 = anim != 1512
value = 1512
;persistent = 0

[State 1065, 3]
type = changeanim
trigger1 = parent,anim = 1600 
trigger1 = parent,animelem = 6
value = 11040
;persistent = 0

[State 1065, 3]
type = changeanim
trigger1 = parent,anim = 1600
trigger1 = parent,animelem = 7
value = 11041
;persistent = 0

[State 1065, 3]
type = changeanim
trigger1 = parent,anim = 1600 
trigger1 = parent,animelem = 8
value = 11041
;persistent = 0


[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1600
trigger1 = parent,animelem = 1 || parent,animelem = 3
pos = -1*const(size.xscale),-84*const(size.yscale)
time = -1

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1600
trigger1 = parent,animelem = 2 || parent,animelem = 4
pos = -1*const(size.xscale),-85*const(size.yscale)
time = -1

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1600 
trigger1 = parent,animelem = 5
pos = 20*const(size.xscale),-64*const(size.yscale)
time = -1

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1600
trigger1 = parent,animelem = 6
pos = -10*const(size.xscale),-10*const(size.yscale)
time = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno != 1600
;ignorehitpause = 
;persistent = 


[Statedef 11041]
type    = A
movetype= I
physics = N
velset = 0,0

[State 1065, 3]
type = sprpriority
trigger1 = parent,anim = 1641
trigger1 = parent,animelem = 1
value = 1

[State 1065, 3]
type = changeanim
trigger1 = parent,anim = 1641
trigger1 = parent,animelem = 1
value = 11044
;persistent = 0

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1641
trigger1 = parent,animelem = 1
pos = 0,0
time = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno != 1641


[Statedef 11047]
type    = A
movetype= I
physics = N
velset = 0,0

[State 1065, 3]
type = sprpriority
trigger1 = parent,anim = 1645
trigger1 = parent,animelem = 1
value = 1

[State 1065, 3]
type = changeanim
trigger1 = parent,anim = 1645
trigger1 = parent,animelem = 1
value = 11047
;persistent = 0

[State 1065, 3]
type = changeanim
trigger1 = parent,anim = 1645
trigger1 = parent,animelem = 3
value = 11049
;persistent = 0

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1645
trigger1 = parent,animelem = 1
pos = -10*const(size.xscale),-65*const(size.yscale)
time = -1

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1645
trigger1 = parent,animelem = 2
pos = -57*const(size.xscale),-92*const(size.yscale)
time = -1

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1645
trigger1 = parent,animelem = 3
pos = -12*const(size.xscale),-79*const(size.yscale)
time = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno != 1645

[Statedef 1650]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
anim = 1650
sprpriority = 2


[State 440, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = animelem = 2
value = 1650, 0

[State 440, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = Time = 2
value = 1, 2

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 20003
anim = 20003
postype = p1
removetime = 25
shadow = 68,68,68
pos = 30, 10

[State 0, VarSet]
type = Varadd
triggerall = var(12) != 1
trigger1 = movehit
trigger1 = enemynear,statetype = A
v = 10
value = 5
persistent = 0

[State 195, hitdef]
type = hitdef
triggerall = var(12) != 1
trigger1 = AnimElem = 3
attr = C, SP
damage = 60,10
animtype = hard
getpower = 50
givepower = 30
guardflag = MA
hitflag = MAFP
pausetime = 28,28
guard.pausetime = 11,14
sparkno = s6103
guard.sparkno = s6128
sparkxy = -30, -50
hitsound = s5, 4
guardsound = s6,0
fall = 1
fall.recover = 0
ground.type = Low
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -1,-7

[State 195, hitdef]
type = hitdef
triggerall = var(12) = 1
trigger1 = AnimElem = 3
attr = C, SP
damage = 60,10
animtype = hard
getpower = 50
givepower = 30
guardflag = MA
hitflag = MAFP
pausetime = 56,56
guard.pausetime = 11,14
sparkno = s6108
guard.sparkno = s6128
sparkxy = -30, -50
hitsound = s5, 4
guardsound = s6,0
fall = 1
fall.recover = 0
ground.type = Low
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -1,-7

[State 440, ÉXÉe?ÉgïœçX]
type = ChangeState
triggerall = power >= ifelse(!var(40), 2000, 1000)
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = p2bodydist x <= 30
triggerall = random <=(AILEVEL*5)*var(58)
trigger1 = AnimTime = 0
value = 3000

[State 440, ÉXÉe?ÉgïœçX]
type = ChangeState
triggerall = power >= ifelse(!var(40), 1000, 0)
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = p2bodydist x <= 30
triggerall = random <=(AILEVEL*5)*var(58)
trigger1 = AnimTime = 0
value = 3500

[State 440, ÉXÉe?ÉgïœçX]
type = ChangeState
triggerall = power >= ifelse(!var(40), 2000, 1000)
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = random <=(AILEVEL*5)*var(58)
trigger1 = AnimTime = 0
value = 3100

[State 440, ÉXÉe?ÉgïœçX]
type = ChangeState
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = random <=(AILEVEL*9)*var(58)
trigger1 = AnimTime = 0
value = 1100

[State 440, ÉXÉe?ÉgïœçX]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------------

[Statedef 1610]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1610
ctrl = 0
poweradd = 50

[State 3000, Super A]
type = varset
trigger1 = 1
var(12)=0

[State 1000, 1]
type = Varadd
triggerall = time = 0
triggerall = var(40) > 0
trigger1 = prevstateno = 210 || prevstateno = 220 || prevstateno = 410 || prevstateno = 500
trigger2 = prevstateno = 1100 || prevstateno = 1105 || prevstateno = 1110 || prevstateno = 1122
trigger3 = prevstateno = 1200 || prevstateno = 1210
trigger4 = prevstateno = 1300 || prevstateno = 1310
var(40) = -160
ignorehitpause = 1
persistent = 1

[State 1000, 2]
type = PalFX
triggerall = var(40) > 0
triggerall = (GameTime%2) = 0 && time < 8
trigger1 = prevstateno = 210 || prevstateno = 220 || prevstateno = 410 || prevstateno = 500
trigger2 = prevstateno = 1100 || prevstateno = 1105 || prevstateno = 1110 || prevstateno = 1122
trigger3 = prevstateno = 1200 || prevstateno = 1210
trigger4 = prevstateno = 1300 || prevstateno = 1310
time = 1
add = 256,256,256
mul = 256,256,256
sinadd = 256,256,256,1
invertall = 0
color = 256
ignorehitpause = 1


[state 3003]
type = helper
trigger1 = time = 0
name = "hermit purple"
helpertype = normal
stateno = 11142
id = 11040
pos = ceil(0*const(size.xscale)),ceil(0*const(size.yscale))
postype = p1
ownpal = 1
keyctrl = 0

[State 810, Throw Sound]
type = playsnd
trigger1 = animelem = 1
value = 1600,0
channel = 0

[State 810, Throw Sound]
type = playsnd
trigger1 = animelem = 7
value = 1600,2

[State 230, 2]
type = HitDef
trigger1 = animelem = 7
attr = S, SA
damage = 0, 0
pausetime = 0,0
guard.pausetime = 0,20
guard.sparkno=s6128
hitflag = M
guardflag = MA
sparkno = -1
sparkxy = -10,-70
hitsound   = -1
guardsound = s6,0
sprpriority = 1
ground.velocity = -5*const(size.xscale),0
guard.velocity = -5*const(size.xscale)
guard.hittime  = 6
guard.slidetime = 6
air.velocity = 0,0
p2facing = 1
p1stateno = 1691
p2stateno = 1643
ID = 1040

[State 1051, 2]
type = ChangeState
trigger1 = moveguarded || Movereversed
value = 1642


[State 1051, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 1691]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1691
ctrl = 0
sprpriority = 0

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time = 0
value = 50

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 810, Throw Sound]
type = width
trigger1 = 1
value = ceil(240*const(size.xscale)),0

[state 3003]
type = helper
trigger1 = time = 0
name = "hermit purple"
helpertype = normal
stateno = 11143
id = 11041
pos = 0,0
postype = p1
ownpal = 1
keyctrl = 0

[State 1051, 2]
type = ChangeState
trigger1 = animtime = 0
value = 1695

[State 191, Wood 1]
type = Explod
trigger1 = time = 6
anim = 11046
id = 11046
postype = p2
pos = 0,ceil(-30*const(size.yscale))
sprpriority = 3
removetime = -1
bindtime = -1
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[State 810, Bind 1]
type = TargetBind
trigger1 = p2dist X <= 224*const(size.xscale)
pos = 225*const(size.xscale), 0


[Statedef 1695]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1695
ctrl = 0
sprpriority = 0

[State 3000, Super A]
type = varset
trigger1 = 1
var(12)=0

[state 3003]
type = helper
trigger1 = time = 0
name = "hermit purple"
helpertype = normal
stateno = 11148
id = 11047
pos = 0,0
postype = p1
ownpal = 1
keyctrl = 0

[State 810, Throw Sound]
type = playsnd
trigger1 = animelem = 1
value = 1600,1
channel = 0

[State 191, Wood 1]
type = Explod
triggerall = prevstateno = 1691
trigger1 = numexplod(11046) = 0
trigger1 = time = 0
anim = 11046
id = 11046
postype = p2
pos = 0,ceil(-30*const(size.yscale))
sprpriority = 3
removetime = -1
bindtime = -1
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5071, 1]
type = removeexplod
trigger1 = animelem = 3
id = 11046

[State 810, Bind 1]
type = TargetBind
trigger1 = time = 0
pos = 120*const(size.xscale), 0
time = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = time = 5
pos = 97*const(size.xscale), 0
time = 1

[State 1051, 2]
type = targetstate
trigger1 = time = 0
value = 1646

[state 1100,òAåg]
type=changestate
triggerall=animelem = 3,>= 1 && animelem = 3,<= 12
trigger1=command="x" || command="y"
trigger1=command="holdfwd"
value=1655

[state 1100,òAåg]
type=changestate
triggerall=animelem = 3,>= 1 && animelem = 3,<= 3
trigger1=AILEVEL
value=1655

[State 1051, 2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------

[Statedef 11142]
type    = A
movetype= I
physics = N
velset = 0,0


[State 1065, 3]
type = sprpriority
trigger1 = parent,anim = 1610
trigger1 = parent,animelem = 1
value = 3

[State 1065, 3]
type = changeanim
triggerall = anim != 1512
trigger1 = parent,anim = 1610
trigger1 = parent,animelem = 1
value = 1512
;persistent = 0

[State 1065, 3]
type = changeanim
trigger1 = parent,anim = 1610
trigger1 = parent,animelem = 6
value = 11040
;persistent = 0

[State 1065, 3]
type = changeanim
trigger1 = parent,anim = 1610
trigger1 = parent,animelem = 7
value = 11041
;persistent = 0


[State 1065, 3]
type = changeanim
trigger1 = parent,anim = 1610
trigger1 = parent,animelem = 8
value = 11042
;persistent = 0


[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1610
trigger1 = parent,animelem = 1 || parent,animelem = 3
pos = -1*const(size.xscale),-84*const(size.yscale)
time = -1

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1610
trigger1 = parent,animelem = 2 || parent,animelem = 4
pos = -1*const(size.xscale),-85*const(size.yscale)
time = -1

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1610
trigger1 = parent,animelem = 5
pos = 20*const(size.xscale),-64*const(size.yscale)
time = -1

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1610
trigger1 = parent,animelem = 6
pos = -10*const(size.xscale),-10*const(size.yscale)
time = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno != 1610

[Statedef 11143]
type    = A
movetype= I
physics = N
velset = 0,0

[State 1065, 3]
type = sprpriority
trigger1 = parent,anim = 1691
trigger1 = parent,animelem = 1
value = 1

[State 1065, 3]
type = changeanim
trigger1 = parent,anim = 1691
trigger1 = parent,animelem = 1
value = 11044
;persistent = 0

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1691
trigger1 = parent,animelem = 1
pos = 0,0
time = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno != 1691

[Statedef 11148]
type    = A
movetype= I
physics = N
velset = 0,0

[State 1065, 3]
type = sprpriority
trigger1 = parent,anim = 1695
trigger1 = parent,animelem = 1
value = 1

[State 1065, 3]
type = changeanim
trigger1 = parent,anim = 1695
trigger1 = parent,animelem = 1
value = 11047
;persistent = 0

[State 1065, 3]
type = changeanim
trigger1 = parent,anim = 1695
trigger1 = parent,animelem = 3
value = 11049
;persistent = 0

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1695
trigger1 = parent,animelem = 1
pos = -10*const(size.xscale),-65*const(size.yscale)
time = -1

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1695
trigger1 = parent,animelem = 2
pos = -57*const(size.xscale),-92*const(size.yscale)
time = -1

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1695
trigger1 = parent,animelem = 3
pos = -12*const(size.xscale),-79*const(size.yscale)
time = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno != 1695


;fail--------------------

[Statedef 1642]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1641
ctrl = 0
sprpriority = 0

[State 0, PowerAdd]
type = PowerAdd
trigger1 = time = 0
value = 25

[state 3003]
type = helper
trigger1 = time = 0
name = "hermit purple"
helpertype = normal
stateno = 11241
id = 11041
pos = 10,0
postype = p1
ownpal = 1
keyctrl = 0

[State 1051, 2]
type = ChangeState
trigger1 = animtime = 0
value = 1675


[Statedef 1675]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 1645
ctrl = 0
sprpriority = 0

[state 3003]
type = helper
trigger1 = time = 0
name = "hermit purple"
helpertype = normal
stateno = 11247
id = 11047
pos = 0,0
postype = p1
ownpal = 1
keyctrl = 0

[State 810, Throw Sound]
type = playsnd
trigger1 = animelem = 1
value = 5000,2
channel = 0

[State 1051, 2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 11241]
type    = A
movetype= I
physics = N
velset = 0,0

[State 1065, 3]
type = sprpriority
trigger1 = parent,anim = 1641
trigger1 = parent,animelem = 1
value = 1

[State 1065, 3]
type = changeanim
trigger1 = parent,anim = 1641
trigger1 = parent,animelem = 1
value = 11044
;persistent = 0

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1641
trigger1 = parent,animelem = 1
pos = 0,0
time = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno != 1642


[Statedef 11247]
type    = A
movetype= I
physics = N
velset = 0,0

[State 1065, 3]
type = sprpriority
trigger1 = parent,anim = 1645
trigger1 = parent,animelem = 1
value = 1

[State 1065, 3]
type = changeanim
trigger1 = parent,anim = 1645
trigger1 = parent,animelem = 1
value = 11047
;persistent = 0

[State 1065, 3]
type = changeanim
trigger1 = parent,anim = 1645
trigger1 = parent,animelem = 3
value = 11049
;persistent = 0

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1645
trigger1 = parent,animelem = 1
pos = -10*const(size.xscale),-65*const(size.yscale)
time = -1

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1645
trigger1 = parent,animelem = 2
pos = -57*const(size.xscale),-92*const(size.yscale)
time = -1

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 1645
trigger1 = parent,animelem = 3
pos = -12*const(size.xscale),-79*const(size.yscale)
time = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno != 1675


[Statedef 1655]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 50
ctrl = 0
anim = 1650
sprpriority = 2


[State 440, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = animelem = 2
value = 1650, 0

[State 440, âπÇñ¬ÇÁÇ∑]
type = PlaySnd
trigger1 = Time = 2
value = 1, 2

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 20003
anim = 20003
postype = p1
removetime = 25
shadow = 68,68,68
pos = 30, 10

[State 0, VarSet]
type = Varadd
triggerall = var(12) != 1
trigger1 = movehit
trigger1 = enemynear,statetype = A
v = 10
value = 5
persistent = 0

[State 195, hitdef]
type = hitdef
triggerall = var(12) != 1
trigger1 = AnimElem = 3
attr = C, SP
damage = 60,10
animtype = hard
getpower = 30,15
givepower = 15,5
guardflag = MA
hitflag = MAFP
pausetime = 28,28
guard.pausetime = 11,14
sparkno = s6103
guard.sparkno = s6128
sparkxy = -30, -50
hitsound = s5, 4
guardsound = s6,0
fall = 1
fall.recover = 0
ground.type = Low
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -1,-7

[State 195, hitdef]
type = hitdef
triggerall = var(12) = 1
trigger1 = AnimElem = 3
attr = C, SP
damage = 60,10
animtype = hard
getpower = 30,15
givepower = 15,5
guardflag = MA
hitflag = MAFP
pausetime = 56,56
guard.pausetime = 11,14
sparkno = s6108
guard.sparkno = s6128
sparkxy = -30, -50
hitsound = s5, 4
guardsound = s6,0
fall = 1
fall.recover = 0
ground.type = Low
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -1,-7

[State 440, ÉXÉe?ÉgïœçX]
type = ChangeState
triggerall = power >= ifelse(!var(40), 2000, 1000)
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = p2bodydist x <= 30
triggerall = random <=(AILEVEL*5)*var(58)
trigger1 = AnimTime = 0
value = 3000

[State 440, ÉXÉe?ÉgïœçX]
type = ChangeState
triggerall = power >= ifelse(!var(40), 1000, 0)
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = p2bodydist x <= 30
triggerall = random <=(AILEVEL*5)*var(58)
trigger1 = AnimTime = 0
value = 3500

[State 440, ÉXÉe?ÉgïœçX]
type = ChangeState
triggerall = power >= ifelse(!var(40), 2000, 1000)
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = random <=(AILEVEL*5)*var(58)
trigger1 = AnimTime = 0
value = 3100

[State 440, ÉXÉe?ÉgïœçX]
type = ChangeState
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = random <=(AILEVEL*9)*var(58)
trigger1 = AnimTime = 0
value = 1100

[State 440, ÉXÉe?ÉgïœçX]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1