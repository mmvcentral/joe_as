;–Y‚ê‚Ê‘z‚¢(‰Œ‚)
[statedef 3000]
type=s
movetype=a
physics=s
velset=0,0
anim=3000
ctrl=0
poweradd=-2000

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <= 30
value = SCA

[State 0, VarSet]
type = VarSet
trigger1 = var(40) > 0
v = 40
value = 0

[state 3000,ˆÃ]
type=superpause
trigger1= time = 0
pos=15,-75
anim= -1
time=30
movetime = 30
darken=0
p2defmul=1

[State 2100, 8]
type = explod
trigger1 = time = 0
anim = 4040
pos = 30,-110
sprpriority = -4
ownpal = 1
bindtime = 1
supermove = 1

[State 2100, 9]
type = explod
trigger1 = time = 0
anim = 4030
pos = 30,-110
sprpriority = 4
ownpal = 1
bindtime = 1
supermove = 1

[State 2100, 6]
type = EnvColor
trigger1 = time = 0
value = 0,0,0
time = 30
under = 1

[State 2100, 10]
type = PlaySnd
trigger1 = Time = 0
value = s2000,0

[state 3000,–³“G]
type=nothitby
trigger1= time = [1,30]
value=sca

[state 3000,‰Œ‚]
type=hitdef
triggerall=roundstate=2
trigger1=animelemtime(8)=0
attr= S,HT
damage=7,0
animtype=up
pausetime=3,6
sparkno=s6103
guard.sparkno=s6128
sparkxy=0,-110
hitsound=s5,4
guardsound=s6,0
ground.type=high
ground.velocity=-0.8,-12
air.velocity=-0.8,-12
guard.velocity=-3
airguard.velocity=-3,-3
ground.slidetime=12
ground.hittime=12
air.hittime=12
p2facing=1
yaccel=0.4
p2facing=1
fall=1
fall.recover=0
kill=0
priority=6,hit
id=3000

[state 3000,–½’†]
type=changestate
triggerall=roundstate=2
triggerall=animelemtime(9)=0
trigger1=movehit
trigger1=numtarget(3000)
value=3010

[state 3000,¸”s]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;–Y‚ê‚Ê‘z‚¢(¬Œ÷)
[statedef 3010]
type=s
movetype=a
physics=s
anim=3010

[state 3010,ƒKƒh”F¯‹——£]
type=attackdist
trigger1=1
value=0

[state 3010,‘ÎÛƒXƒeƒg]
type=targetstate
trigger1=time=0
value=3020
id=3000

[state 3010,‚±‚Á‚¿‚ğŒü‚©‚¹‚é]
type=targetfacing
trigger1=animelemtime(16)<60
value=-1
id=3000

[state 3010,‘ÎÛ‚Ì‘¬“x]
type=targetvelset
trigger1=time=0
x=-0.8
y=-12
id=3000

[state 3010,”wŒi‚ğˆÃ‚­]
type=bgpalfx
trigger1=time=0
time=42
mul=128,128,128

[state 3010,İ‚è‚µ“ú‚ÌƒVƒU]
type=explod
trigger1=time=0
anim=8000
id=8000
pos=floor(ifelse(facing=1,screenpos x,320-screenpos x)),0
postype=back
bindtime=-1
supermovetime=42
pausemovetime=42
ontop=1
ownpal=1

[state 3010,¼¨°»Ş§]
type=playsnd
trigger1=time=0
value=3000,0
channel=0

[state 3010,ˆê’â]
type=pause
trigger1=time=0
time=42

[state 3010,‘ÎÛ‚ÌˆÊ’u]
type=targetbind
trigger1=animelemno(0)=16
pos=100,-20
id=3000

[state 3010,”wŒi‰‰o—pƒwƒ‹ƒp]
type=helper
trigger1=animelemtime(16)=0
helpertype=normal
name="omoide_BG"
ID=3000
pos=0,0
postype=back
stateno=3012
ownpal=1

[state 3010,·×°İ]
type=explod
trigger1=animelemtime(16)=-9
anim=8011
id=8011
pos=100,-80
postype=p1
scale=const(size.xscale),const(size.yscale)
bindtime=-1
ontop=1
ownpal=1

[state 3010,˜A‘±ƒqƒbƒg:ƒƒW]
type=targetlifeadd
triggerall=animelemtime(16)=[0,59]
trigger1=animelemtime(16)%12=0
value=-50
kill=0
id=3000

[state 3010,˜A‘±ƒqƒbƒg:”íƒƒQƒW‘‰Á]
type=targetpoweradd
triggerall=animelemtime(16)=[0,59]
trigger1=animelemtime(16)%12=0
value=25
id=3000

[state 3010,˜A‘±ƒqƒbƒg:ƒqƒbƒg”]
type=hitadd
triggerall=animelemtime(16)=[0,60]
trigger1=animelemtime(16)%12=0
value=numtarget(3000)

[state 3010,˜A‘±ƒqƒbƒg:ƒqƒbƒg”]
type=varadd
triggerall=var(1)
triggerall=animelemtime(16)=[0,60]
trigger1=animelemtime(16)%12=0
var(3)=1

[state 3010,˜A‘±ƒqƒbƒg:—ƒqƒbƒg‰¹]
type=playsnd
triggerall=animelemtime(16)=[0,59]
trigger1=animelemtime(16)%12=0
value=5,4

[state 3010,˜A‘±ƒqƒbƒg:—ƒqƒbƒgƒXƒpƒN]
type=explod
triggerall=animelemtime(16)=[0,60]
trigger1=animelemtime(16)%12=0
anim=6103
pos=0,-60
postype=p2
ontop=1
ownpal=1

[state 3010,ƒtƒBƒjƒbƒVƒ…:ƒƒW]
type=targetlifeadd
trigger1=animelemtime(16)=60
value=-100
id=3000

[state 3010,ƒtƒBƒjƒbƒVƒ…:”íƒƒQƒW‘‰Á]
type=targetpoweradd
trigger1=animelemtime(16)=60
value=55
id=3000

[state 3010,ƒtƒBƒjƒbƒVƒ…:—ƒqƒbƒg‰¹]
type=playsnd
trigger1=animelemtime(16)=60
value=5,105

[state 3010,‘ÎÛƒXƒeƒg•ÏX]
type=targetstate
trigger1=animelemtime(16)=60
value=3021
id=3000

[state 3010,¡‚à‰ä‚ªS‚Éc]
type=playsnd
trigger1=animelemtime(17)=0
value=3000,2
channel=0

[state 3010,ƒJƒƒ‰ŒÅ’è]
type=screenbound
trigger1=animelemtime(17)>=0
trigger2=anim=0
value=0

[state 3010,‘Ò]
type=changestate
trigger1=animtime=0
value=3011

;---------------------------------------------------------------------------
;–Y‚ê‚Ê‘z‚¢(I—¹Œã‘Ò)
[statedef 3011]
type=s
movetype=i
phisics=s
ctrl=0
anim=0

[state 3011,ƒXƒeƒW”wŒi‚ğ‰B‚·]
type=assertspecial
trigger1=!target,stateno=5602
trigger1=!target,stateno=5100
trigger1=numtarget(3000)
flag=nobg
flag2=nofg

[state 3011,ƒJƒƒ‰ŒÅ’è]
type=screenbound
trigger1=1
value=0

[state 3011,ƒGƒtƒFƒNƒgÁ‹]
type=removeexplod
trigger1=target,stateno=5602
trigger2=target,stateno=5100
trigger3=!numtarget(3000)

[state 3011,I—¹]
type=changestate
trigger1=target,stateno=5602
trigger2=target,stateno=5100
trigger3=!numtarget(3000)
value=60

;---------------------------------------------------------------------------
;–Y‚ê‚Ê‘z‚¢:‘ÎÛ‘¤
[statedef 3020]
type=a
movetype=h
phisics=n
ctrl=0

[state 3020,‚·‚è”²‚¯]
type=playerpush
trigger1=1
value=0

[state 3020,–³“G]
type=nothitby
trigger1=1
value=sca

[state 3020,ƒAƒjƒ•ÏX(‘Å‚¿ã‚°)]
type=changeanim
trigger1=time<30
value=ifelse(selfanimexist(5051),5051,5030)

[state 3020,d—Í]
type=veladd
trigger1=!gethitvar(isbound)
y=0.4

[state 3020,ƒAƒjƒ•ÏX(—‰º)]
type=changeanim
trigger1=selfanimexist(5060)||selfanimexist(5061)
trigger1=time<57
trigger1=vel y>0
persistent=0
value=ifelse(selfanimexist(5061),5061,5060)

[state 3020,ƒAƒjƒ•ÏX(‚Á”ò‚Ô)]
type=changeanim
trigger1=time=57
value=ifelse(selfanimexist(5035),5035,5030)

;---------------------------------------------------------------------------
;–Y‚ê‚Ê‘z‚¢:‘ÎÛ‘¤(•Ç‚Á”ò‚Ñ)
[statedef 3021]
type=a
movetype=h
physics=n
ctrl=0

[state 3021,‚·‚è”²‚¯]
type=playerpush
trigger1=1
value=0

[state 3021,–³“G]
type=nothitby
trigger1=1
value=sca

[state 3021,ƒAƒjƒ•ÏX]
type=changeanim2
trigger1=time=0
value=5410

[state 3021,‹ò‚ç‚¢d—Í]
type=veladd
trigger1=1
y=0.2

[state 3021,‹ò‚ç‚¢‘¬“x]
type=velset
trigger1=time=0
x=-14
y=-5

[state 3021,‚Á”ò‚Ñ‚·‚¬‚éê‡‚ÍƒJƒƒ‰ŒÅ’è]
type=screenbound
trigger1=time>40
value=0

[state 3021,•Ç‚É‚Ô‚Â‚©‚Á‚Ä—‰º‚Ö]
type=changestate
trigger1=backedgebodydist<10
trigger2=frontedgebodydist<10
value=5602

[state 3021,•Ç‚Ü‚Å”ò‚Î‚¸‚É—‰º]
type=selfstate
trigger1=pos y>=0
trigger1=vel y>0
value=5100

;---------------------------------------------------------------------------
;–Y‚ê‚Ê‘z‚¢:”wŒi
[statedef 3012]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 3012,ƒXƒeƒW”wŒi‚ğ‰B‚·]
type=assertspecial
trigger1=1
flag=nobg
flag2=nofg

[state 3012,”wŒi1-1]
type=explod
trigger1=time=0
anim=6010
id=6010
postype=back
pos=0,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,”wŒi1-2]
type=explod
trigger1=time=0
anim=6010
id=6010
postype=back
pos=512,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,”wŒi2-1]
type=explod
trigger1=time=0
anim=6011
id=6011
postype=back
pos=0,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,”wŒi2-2]
type=explod
trigger1=time=0
anim=6011
id=6011
postype=back
pos=512,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,”wŒi3-1]
type=explod
trigger1=time=0
anim=6012
id=6012
postype=back
pos=0,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,”wŒi3-2]
type=explod
trigger1=time=0
anim=6012
id=6012
postype=back
pos=512,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,”wŒi4-1]
type=explod
trigger1=time=0
anim=6013
id=6013
postype=back
pos=0,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,”wŒi4-2]
type=explod
trigger1=time=0
anim=6013
id=6013
postype=back
pos=512,0
scale=1,240.0/287
removetime=-1
bindtime=-1
sprpriority=-10
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,‘z‚¢o‚Ì“úX1]
type=explod
trigger1=time=0
anim=8005
id=8005
postype=back
pos=240,60
removetime=-1
bindtime=60
sprpriority=-9
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,‘z‚¢o‚Ì“úX2]
type=explod
trigger1=time=12
anim=8006
id=8006
postype=back
pos=80,180
removetime=-1
bindtime=48
sprpriority=-9
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,‘z‚¢o‚Ì“úX3]
type=explod
trigger1=time=24
anim=8007
id=8007
postype=back
pos=240,180
removetime=-1
bindtime=36
sprpriority=-9
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,‘z‚¢o‚Ì“úX4]
type=explod
trigger1=time=36
anim=8008
id=8008
postype=back
pos=80,60
removetime=-1
bindtime=24
sprpriority=-9
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,‘z‚¢o‚Ì“úX:ƒVƒ]
type=explod
trigger1=time=48
anim=8010
id=8010
postype=back
pos=160,240
removetime=-1
bindtime=-1
sprpriority=-8
pausemovetime=2147483647
supermovetime=2147483647

[state 3012,I—¹]
type=changestate
trigger1=root,stateno!=[3010,3011]
value=3013

[state 3012,I—¹]
type=changestate
triggerall=winko
trigger1	=enemy,name="iggy"	;ƒCƒM
trigger1	=enemy,authorname="Gal129"
trigger2	=enemy,name="Avdul"	;ƒAƒ”ƒhƒDƒ‹
trigger2	=enemy,authorname="Izumo"
trigger3	=enemy,name="Kakyoin"	;‰Ô‹
trigger3	=enemy,authorname="Izumo"
trigger4	=enemy,name="Polnareff"	;ƒ‹ƒiƒŒƒt
trigger4	=enemy,authorname="Izumo"
trigger5	=enemy,name="Shadow Dio"	;‰eDIO
trigger5	=enemy,authorname="kikurage"
trigger6	=enemy,name="Young Joseph +"	;áƒWƒ‡ƒZƒt
trigger6	=enemy,authorname="Men'sClub"
trigger7	=enemy,name="petshop"	;ƒyƒbƒgƒVƒ‡ƒbƒv
trigger7	=enemy,authorname="rei"
trigger8	=enemy,name="DIO BRANDO"	;ƒnƒCDIO
trigger8	=enemy,authorname="Shio"
trigger9	=enemy,name="blackpolnareff"	;ƒAƒkƒ‹
trigger9	=enemy,authorname="Warusaki3"
trigger10	=enemy,name="dio"	;DIO
trigger10	=enemy,authorname="Warusaki3"
trigger11	=enemy,name="final dio"	;DIO
trigger11	=enemy,authorname="Warusaki3"
trigger12	=enemy,name="Jotaro Kujo"	;³‘¾˜Y
trigger12	=enemy,authorname="Warusaki3"
trigger13	=enemy,name="shadow dio"	;‰eDIO
trigger13	=enemy,authorname="Warusaki3"
trigger14	=enemy,name="vanillaice"	;ƒ”ƒjƒ‰
trigger14	=enemy,authorname="Warusaki3"
trigger15	=enemy,name="Hol horse"	;ƒzƒ‹ƒzƒX
trigger15	=enemy,authorname="y.y"
trigger16	=enemy,name="Hol horse & Boingo"	;ƒzƒ‹ƒC
trigger16	=enemy,authorname="y.y"
trigger17	=enemy,name="joseph"	;ƒWƒ‡ƒZƒt
trigger17	=enemy,authorname="y.y"
trigger18	=enemy,name="jotaro"	;³‘¾˜Y
trigger18	=enemy,authorname="y.y"
trigger19	=enemy,name="Kujo Jotaro (Part4)"	;³‘¾˜Y(4•”)
trigger19	=enemy,authorname="y.y"
value=3013

;---------------------------------------------------------------------------
;Á‹
[statedef 3013]
anim=99999
type=u
movetype=i
phtsics=n
ctrl=0

[state 3013,Á‹]
type=removeexplod
trigger1=time=0

[state 3013,I—¹]
type=destroyself
triggerall=ishelper
trigger1=time=0

;===========================================================================
;ƒGƒCƒWƒƒ‚ÌÔÎ
[statedef 3100]
type=s
movetype=a
physics=s
velset=0,0
anim=3100
ctrl=0
poweradd=-2000

[State 0, VarSet]
type = VarSet
trigger1 = var(40) > 0
v = 40
value = 0

[state 3100,–³“G]
type=nothitby
trigger1=time=[0,1]
value=sca

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <= 30
value = SCA

[state 3100,ˆÃ]
type=superpause
trigger1=time=0
pos=-20,-75
anim=-1
time=45
movetime = 29
darken=0
p2defmul=1

[State 2100, 8]
type = explod
trigger1 = time = 0
anim = 4040
pos = 0,-100
sprpriority = -4
ownpal = 1
bindtime = 1
supermove = 1

[State 2100, 9]
type = explod
trigger1 = time = 0
anim = 4030
pos = 0,-100
sprpriority = 4
ownpal = 1
bindtime = 1
supermove = 1

[State 2100, 6]
type = EnvColor
trigger1 = time = 0
value = 0,0,0
time = 45
under = 1

[State 2100, 10]
type = PlaySnd
trigger1 = Time = 0
value = s2000,0

[State 2100, 10]
type = PlaySnd
trigger1 = Time = 0
value = s0,5

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 30
channel = -1

[state 3010,‚Ş‚º‚¥”g–ä‚Ìƒrƒg!]
type=playsnd
trigger1=animelemtime(2)=0
value=3100,0
channel=0

[state 3010,ÔÎ]
type=explod
trigger1=animelemtime(2)=0
anim=8100
pos=0,0
postype=p1
bindtime=-1
sprpriority=1
ownpal=1
removeongethit=1

[state 3010,Œø‰Ê‰¹2]
type=playsnd
trigger1=animelem = 7
value=3100,2

[state 3100,ƒKƒh”F¯‹——£]
type=attackdist
trigger1=1
value=0

[State 2900, 1];
type = helper
trigger1 = animelem = 7
id = 12500
persistent = 0
name = "muni"
pos = 60,-85
postype = P1
stateno = 12500
helpertype = normal
keyctrl = 0
ownpal = 1
size.xscale = 1
size.yscale = 1

[state 3100,ƒJƒƒ‰ŒÅ’è]
type=screenbound
trigger1=animelem = 7
value=0

[state 3100,I—¹]
type=changestate
trigger1 = animtime = 0
value=60


[Statedef 12500]
type = S
movetype = A
physics = N
anim = 12500
velset = 0,0
ctrl = 0
sprpriority = 99

[State 1010]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1010]
type = NotHitBy
trigger1 = time >= 0
value = SCA, AA, AT, AP

[State 240, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 12500, 1
volume = 100

[State 240, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 12500, 2

;---------------------[ë·…ê·‚ë²ë—°]
[State 1000, 2]
type = Projectile
trigger1 = time = 0
attr = S, HA
projanim = 12510
projhitanim = -1
projid = 12510
projpriority = 999999999
projsprpriority = 999999999
;projedgebound = 220
projremove = 1
projremovetime = 5
postype = p2
offset = 0,0
velocity = 0
animtype  = diagup
damage    = 250,10
getpower = 0,0
givepower = 0,0
guardflag = MA
hitflag = MAF
pausetime = 2,4
guard.pausetime = 11,14
sparkno = s6103
guard.sparkno = s6128
sparkxy = 0,-50
hitsound   = s5,4
guardsound = s6,0
ground.type = low
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -6,-6.5
air.velocity = -6,-6.8
fall = 1
fall.recover = 0
envshake.time = 15
envshake.ampl = 5
envshake.freq = 100
envshake.phase = 120
palfx.time = 30
palfx.add = 153,138,0
palfx.mul = 240,240,240
palfx.sinadd = 100,100,100,5
palfx.invertall = 1
palfx.color = 0

[State 1005,]
type = parentVarSet
trigger1 = projhit12510 = 1
var(29) = 2

[State 1010]
type = DestroySelf
trigger1 = animtime = 0

;===========================================================================
;ƒuƒb‰ó‚·‚Ù‚ÇƒVƒ…ƒg(‰Œ‚)

[statedef 4010]
type=s
movetype=a
physics=s
velset=0,0
anim=4010
ctrl = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <= 25
value = SCA


[State 0, VarSet]
type = VarSet
trigger1 = var(40) > 0
v = 40
value = 0

[State 2100, 10]
type = PlaySnd
trigger1 = Time = 0
value = s2000,0

[state 4000,ƒzƒ‰ƒzƒ‰s‚­‚º‚¥]
type=playsnd
trigger1=animelem = 4
value = s4010,0
channel=0

[state 3000,ˆÃ]
type=superpause
trigger1= time = 0
pos=15,-75
anim= -1
poweradd=-2000
time=25
movetime = 25
darken=0
p2defmul=1

[State 2100, 8]
type = explod
trigger1 = time = 0
anim = 4040
pos = 30,-110
sprpriority = -4
ownpal = 1
bindtime = 1
supermove = 1

[State 2100, 9]
type = explod
trigger1 = time = 0
anim = 4030
pos = 30,-110
sprpriority = 4
ownpal = 1
bindtime = 1
supermove = 1

[State 2100, 6]
type = EnvColor
trigger1 = time = 0
value = 0,0,0
time = 30
under = 1


[state 4010,—ƒqƒbƒg‰¹]
type=playsnd
trigger1=animelemtime(4)>=0
trigger1=time%3=0
value=5,5
volume=-128

[state 4010,—ƒqƒbƒgƒXƒpƒN]
type=explod
trigger1=animelemtime(4)>=0
trigger1=time%3=0
anim=12200
pos=const(size.mid.pos.x),const(size.mid.pos.y)
postype=p2
random=100,100
ontop=1
ownpal=1

[state 4010,eŒ‚‰¹]
type=playsnd
trigger1=animelemtime(4)>=0
trigger1=time%3=0
value=4000,0

[state 4010,—¬‚ê’e]
type=projectile
trigger1=animelemtime(4)>=0
attr=s,hp
damage=5,1
getpower=0,0
animtype=hard
pausetime=0,0
offset=const(size.mid.pos.x)+(random-500)/5,const(size.mid.pos.y)+(random-500)/5
postype=p2
projid=4012
projanim=4012
projhits=1
projremovetime=3
guardflag=ma
sparkno=s6103
guard.sparkno=s6128
sparkxy=0,0
hitsound=-1;s5,5
guardsound=-1;s6,0
ground.type=high
ground.slidetime=10
ground.hittime=10
air.hittime=10
ground.velocity=-0.5,-0.8
air.velocity=0,-0.8
fall = 1

[state 4010,I—¹]
type=changestate
trigger1=time>=102
trigger1=time%3=0
;trigger1=target(4000),life=1
value=0
ctrl = 1


;ƒuƒb‰ó‚·‚Ù‚ÇƒVƒ…ƒg:‘ÎÛ‘¤


[Statedef 3500]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= -1000
velset = 0,0
anim = 3500
ctrl = 0
sprpriority = 2

[State 0, VarSet]
type = VarSet
trigger1 = var(40) > 0
v = 40
value = 0

[state 3000]
type = nothitby
trigger1 = time = 0
value = SCA
time = 43

[state 3000]
type = playsnd
trigger1 = time = 3
value = 2000,0


[State 2000, SuperPause]
type = SuperPause
trigger1 = time = 0
anim = -1
movetime = 43
time = 43
darken = 0
p2defmul = 1

[State 2000]
type = AssertSpecial
trigger1 = Time = [0,30]
flag = NoFG
flag2 = NOBG

[State 2100, 8]
type = explod
trigger1 = time = 0
anim = 4025
pos = 30,-110
sprpriority = -4
ownpal = 1
bindtime = 1
supermove = 1

[State 2100, 9]
type = explod
trigger1 = time = 0
anim = 4020
pos = 30,-110
sprpriority = 4
ownpal = 1
bindtime = 1
supermove = 1

[State 2000, 7]
type = AfterImage
trigger1 = Time = 30
time = 17
palcolor = 0
palbright = 60,60,60
palcontrast = 120,120,250
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 6
FrameGap = 2
trans = add1



[State 5110, 7]
type = assertspecial
trigger1 = time = [3,42]
flag = nobg
flag2 = nofg

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
animtype  = Medium
damage    = 0
priority = 5
pausetime = 0,0
sparkno = s6103
sparkxy = -10,-90
hitsound   = s5,4
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
guard.velocity = -7
ground.velocity = -1*const(size.xscale),-11
air.velocity = -1*const(size.xscale),-11
airguard.velocity = -4*const(size.xscale),-4
fall = 1
p2facing = 1
p1stateno = 3571
p2stateno = 3773
kill = 0

[state 3000]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;-----------------------------------------------
;tƒqƒbƒg
[Statedef 3571]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3501
ctrl = 0
sprpriority = 2

[state 3000]
type = playsnd
trigger1 = animelem = 4
value = s0,6

[state 3000]
type = nothitby
trigger1 = 1
value = SCA

[state 3000]
type = targetbind
trigger1 = time = 0
pos = 30,-35
time = 1

[state 3000]
type = HitDef
trigger1 = animelem = 10
attr = S, HA
damage = 200,10
animtype = diagup
hitflag = MAF
guardflag = MA
sparkno = s6103
sparkxy = -20,-85
hitsound   = s5,4
guardsound = s6,0
pausetime = 35,47
ground.hittime = 25
ground.type = low
ground.slidetime = 25
fall = 1
ground.velocity = -10,-8
air.velocity = -4,-6
air.fall = 1
yaccel = .5
envshake.time = 20
envshake.ampl = 6
envshake.freq = 80
givepower = 0
getpower = 0


[State 210, 3]
type = ScreenBound
trigger1 = time >= 116
value = 0

[State 210, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3773]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1060, 2]
type = changeanim2
trigger1 = time = 0
value = 3503

[state 3000]
type = nothitby
trigger1 = 1
value = CA ,AP, AT, NA, SA

[State 1061, 2]
type = posset
trigger1 = 0
trigger1 = Pos Y < -75
y = -75

[State 1061, 2]
type = hitVelset
trigger1 = time = 0
x = -1

[State 1061, 2]
type = Velset
trigger1 = time = 0
y = -11

;[State 1061, 2]
;type = Velset
;trigger1 = time = 0
;trigger1 = Pos Y > -10
;x = -1
;y = -110

[State 1061, 1]
type = VelAdd
trigger1 = 1
y = .4

[State 210, 3]
type = ScreenBound
trigger1 = 1
value = 1

[State 1061, 2]
type = selfState
trigger1 = Vel Y > 0 && Pos Y >= 10
value = 5110


;--------------------------------------------------------

[Statedef 3200]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3200
ctrl = 0
poweradd = -1000

[State 0, VarSet]
type = VarSet
trigger1 = var(40) > 0
v = 40
value = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time <= 30
value = SCA

[state 3000]
type = playsnd
trigger1 = time = 3
value = 2000,0


[State 2000, SuperPause]
type = SuperPause
trigger1 = time = 0
anim = -1
movetime = 30
time = 30
darken = 0
p2defmul = 1

[State 2000]
type = AssertSpecial
trigger1 = Time = [0,30]
flag = NoFG
flag2 = NOBG


[State 2100, 8]
type = explod
trigger1 = time = 0
anim = 4025
pos = 0,-100
sprpriority = -4
ownpal = 1
bindtime = 1
supermove = 1

[State 2100, 9]
type = explod
trigger1 = time = 0
anim = 4020
pos = 0,-100
sprpriority = 4
ownpal = 1
bindtime = 1
supermove = 1

[State 2100, 6]
type = EnvColor
trigger1 = time = 0
value = 0,0,0
time = 30
under = 1



[State 191, Wood 1]
type = helper
trigger1 = animelem = 1
name = "sakushi"
helpertype = normal
stateno = 3212
id = 3212
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
p1stateno = 3201
p2stateno = 3214
fall = 1


[State 1051, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------
; «Ó?«È?Üâ?

[Statedef 3201]
type    = S
movetype= I
physics = S
anim = 1511
sprpriority = 2
velset = 0,0

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
stateno = 3213
id = 3213
postype = p1
pos = 0,0
sprpriority = 3


[State 3500, SFX]
type = PlaySnd
trigger1  = AnimElem = 1
trigger2  = AnimElem = 3
trigger3  = AnimElem = 5
trigger4  = AnimElem = 7
trigger5  = AnimElem = 9
trigger6  = AnimElem = 11
trigger7  = AnimElem = 13
trigger8  = AnimElem = 15
trigger9  = AnimElem = 17
trigger10  = AnimElem = 19
trigger11  = AnimElem = 21
trigger12 = AnimElem = 23
value = s1500,1

[State 3500, Lightning Ball1]
type = Explod
trigger1 = AnimElem = 1
anim = 12300
ownpal = 1
sprpriority = 4
postype = p1
removeongethit = 1
pos = 78,-76
bindtime = -1

[State 3500, Lightning Ball1]
type = Explod
trigger1 = AnimElem = 3
anim = 12310
ownpal = 1
sprpriority = 4
postype = p1
removeongethit = 1
pos = 78,-76
bindtime = -1

[State 3500, Lightning Ball1]
type = Explod
trigger1 = AnimElem = 5
anim = 12320
ownpal = 1
sprpriority = 4
postype = p1
removeongethit = 1
pos = 78,-76
bindtime = -1

[State 3500, Lightning Ball2]
type = Explod
trigger1 = AnimElem = 7
anim = 12300
ownpal = 1
sprpriority = 4
postype = p1
removeongethit = 1
pos = 63,-96
bindtime = -1

[State 3500, Lightning Ball3]
type = Explod
trigger1 = AnimElem = 9
anim = 12310
ownpal = 1
sprpriority = 4
postype = p1
removeongethit = 1
pos = 76,-56
bindtime = -1

[State 3500, Lightning Ball4]
type = Explod
trigger1 = AnimElem = 11
anim = 12320
ownpal = 1
sprpriority = 4
postype = p1
removeongethit = 1
pos = 56,-74
bindtime = -1

[State 3500, Lightning Ball5]
type = Explod
trigger1 = AnimElem = 13
anim = 12300
ownpal = 1
sprpriority = 4
postype = p1
removeongethit = 1
pos = 96,-88
bindtime = -1

[State 3500, Lightning Ball6]
type = Explod
trigger1 = AnimElem = 15
anim = 12310
ownpal = 1
sprpriority = 4
postype = p1
removeongethit = 1
pos = 78,-72
bindtime = -1

[State 3500, Lightning Ball7]
type = Explod
trigger1 = AnimElem = 17
anim = 12320
ownpal = 1
sprpriority = 4
postype = p1
removeongethit = 1
pos = 100,-56
bindtime = -1

[State 3500, Lightning Ball8]
type = Explod
trigger1 = AnimElem = 19
anim = 12300
ownpal = 1
sprpriority = 4
postype = p1
removeongethit = 1
pos = 100,-56
bindtime = -1

[State 1060, 5]
type = envshake
trigger1 = time % 3= 0
trigger1 = (time = [20,51])
time = 3
frep = 320
ampl = -6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 50*const(size.xscale), 0

[State 810, Hurt 11]
type = TargetLifeAdd
trigger1  = AnimElem = 1
trigger2  = AnimElem = 3
trigger3  = AnimElem = 5
trigger4  = AnimElem = 7
trigger5  = AnimElem = 9
trigger6  = AnimElem = 11
trigger7  = AnimElem = 13
trigger8  = AnimElem = 15
trigger9  = AnimElem = 17
trigger10 = AnimElem = 19
trigger11 = AnimElem = 21
trigger12 = AnimElem = 23
value = -10

[state 6100, Explod]
type = Explod
trigger1  = AnimElem = 1
trigger2  = AnimElem = 3
trigger3  = AnimElem = 5
trigger4  = AnimElem = 7
trigger5  = AnimElem = 9
trigger6  = AnimElem = 11
trigger7  = AnimElem = 13
trigger8  = AnimElem = 15
trigger9  = AnimElem = 17
trigger10 = AnimElem = 19
trigger11 = AnimElem = 21
trigger12 = AnimElem = 23
anim = 7120 + random%2
id = 7100
sprpriority = 5
postype = p2
pos = 20 - (random%40),-20 - (random%90)
bindtime = 1
ownpal = 1
random = 100,100
ignorehitpause = 1 

[State 810, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 21
value = -140

[State 1005,]
type = VarSet
trigger1 = AnimElem = 21
var(29) = 2

[State 1052, 5]
type = posadd
trigger1 = AnimTime = 0
x = 45*const(size.xscale)

[State 1052, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 3212]
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
trigger2 = parent,stateno != 3200

[Statedef 3214]
type    = S
movetype= H
physics = N
poweradd= 40
velset = 0,0
ctrl = 0
sprpriority = 1

[State 1060, 2]
type = changeanim2
trigger1 = time = 0
value = 1514

[State 1060, 2]
type = palfx
trigger1  = AnimElem = 1
time = 70
add = 153,138,0
mul = 240,240,240
sinadd = 100,100,100,5
invertall = 1

[State 1060, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1515


[Statedef 3213]
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
trigger2 = parent,stateno != 3201





[Statedef 3300]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= -1000
velset = 0,0
anim = 3300
ctrl = 0
sprpriority = 2

[State 0, VarSet]
type = VarSet
trigger1 = var(40) > 0
v = 40
value = 0

[state 3000]
type = nothitby
trigger1 = time = 0
value = SCA
time = 2

[state 3000]
type = playsnd
trigger1 = time = 0
value = 2000,0

[State 2000, SuperPause]
type = SuperPause
trigger1 = time = 0
anim = -1
movetime = 1
time = 30
darken = 0
p2defmul = 1

[State 2100, 8]
type = explod
trigger1 = time = 0
anim = 4025
pos = 0,-100
sprpriority = -4
ownpal = 1
bindtime = 1
supermove = 1

[State 2100, 9]
type = explod
trigger1 = time = 0
anim = 4020
pos = 0,-100
sprpriority = 4
ownpal = 1
bindtime = 1
supermove = 1

[State 2100, 6]
type = EnvColor
trigger1 = time = 0
value = 0,0,0
time = 30
under = 1

[State 810, Throw Sound]
type = playsnd
trigger1 = animelem = 9
value = 3300,0

[state 3003]
type = helper
trigger1 = time = 0
name = "hermit purple"
helpertype = normal
stateno = 12400
id = 12400
pos = 0,0
postype = p1
ownpal = 1
keyctrl = 0

[State 1050, 4]
type = HitDef
trigger1 = Time = 0
attr = S, SA
animtype = light
damage    = 200*ceil(ifelse(p2movetype = A,fvar(7),1)), 10
priority  = 5, Hit
guardflag = HA
pausetime = 27,27
guard.pausetime = 10,10
sparkno = s6103
guard.sparkno = s6128
sparkxy = -10,-100
hitsound   = s5,4
guardsound = s6,0
ground.type = high
ground.slidetime = 32
ground.hittime  = 32
guard.hittime  = 13
ground.velocity = -4*const(size.xscale),13
air.velocity = -13*const(size.xscale),13
fall = 1

[State 1050, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 12400]
type    = A
movetype= I
physics = N
velset = 0,0

[State 1065, 3]
type = sprpriority
trigger1 = parent,anim = 3300
trigger1 = parent,animelem = 1
value = 3

[State 1065, 3]
type = changeanim
trigger1 = parent,anim = 3300
trigger1 = parent,animelem = 1
value = 12400
;persistent = 0

[State 1065, 3]
type = changeanim
trigger1 = parent,anim = 3300
trigger1 = parent,animelem = 11
value = 12410
;persistent = 0

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 3300
trigger1 = parent,animelem = 1
pos = 30*const(size.xscale),0*const(size.yscale)
time = -1

[State 1065, 3]
type = bindtoparent
trigger1 = parent,anim = 3300
trigger1 = parent,animelem = 7
pos = -1*const(size.xscale),50*const(size.yscale)
time = -1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno != 3300