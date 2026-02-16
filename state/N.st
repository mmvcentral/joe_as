;立弱
[statedef 200]
type=s
movetype=a
physics=s
velset=0,0
ctrl=0
anim=200

[state 200,素振り音]
type=playsnd
trigger1=animelemtime(3)=0
value=1,0

[state 200,ヒット定]
type=hitdef
trigger1=animelemtime(3)=0
trigger2=var(0)&16
attr=s,na
damage=28
guardflag=ma
pausetime=7,7
animtype=light
sparkno=s6100
guard.sparkno=s6125
sparkxy=-10,-76
hitsound=s5,0
guardsound=s6,0
ground.type=high
ground.slidetime=13
ground.hittime=13
air.hittime=13
ground.velocity=-4
air.velocity=-2,-3
getpower = 20,10
givepower = 10,5

[state 200,状態キャンセル]
type=ctrlset
trigger1=time=8
value=1

[state 200,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;立中
[statedef 210]
type=s
movetype=a
physics=s
poweradd=65
ctrl=0
velset=0,0
anim=210

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 10200
ID = 10200
pos = 29*const(size.xscale),-7*const(size.yscale)
postype = p1  ;p2,front,back,left,right
sprpriority = 2
bindtime = -2
ownpal = 1
removeongethit = 1

[state 210,素振り音]
type=playsnd
trigger1=animelemtime(4)=0
value=1,1

[state 210,声]
type=playsnd
trigger1=animelemtime(3)=0
value=0,0
channel=0

[state 210,ヒット定]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=var(0)&16
attr=s,na
animtype=medium
damage=56
guardflag=ma
pausetime=9,9
sparkno=s6101
guard.sparkno=s6125
sparkxy=-10,-70
hitsound=s5,2
guardsound=s6,0
ground.type=high
ground.slidetime=16
ground.hittime=16
air.hittime=16
ground.velocity=-6
air.velocity=-3,-3
getpower = 30,15
givepower = 15,5

[state 210,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;立強
[statedef 220]
type=s
movetype=a
physics=s
poweradd=65
ctrl=0
velset=0,0
anim=220

[state 220,素振り音]
type=playsnd
trigger1=animelemtime(7)=0
value=1,2

[state 220,声]
type=playsnd
trigger1=animelemtime(2)=0
value=0,1
channel=0

[state 220,軸位置移動]
type=posadd
trigger1=animelemtime(7)=0
x=12

[state 220,ヒット定]
type=hitdef
trigger1=animelemtime(7)=0
trigger2=var(0)&16
attr=s,na
animtype=medium
damage=71
guardflag=ma
pausetime=9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-60
hitsound=s5,3
guardsound=s6,0
ground.type=low
ground.slidetime=21
ground.hittime=21
air.hittime=21
ground.velocity=-9
air.velocity=-5,-3
getpower = 30,15
givepower = 15,5

[state 220,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;---------------------------------------------------------------------------
;6強
[statedef 230]
type=a
movetype=a
physics=n
poweradd=22
ctrl=0
velset=1.5,-2
anim=230

[state 230,重力]
type=veladd
trigger1= time > 17
y=0.65

[state 230,素振り音]
type=playsnd
trigger1=animelemtime(6)=0
value=1,2

[state 230,ヒット定]
type=hitdef
trigger1=animelemtime(6)=0
attr=a,na
guardflag=ha
animtype=hard
damage=63
pausetime=13,13
sparkno=s6102
guard.sparkno=s6125
sparkxy=-20,-62
hitsound=s5,3
guardsound=s6,0
ground.type=high
ground.slidetime=17
ground.hittime=17
air.hittime=17
ground.velocity=-4,-3
air.velocity=-4,-3
fall = 1
getpower = 40,20
givepower = 20,10


[state 230,着地]
type=changestate
trigger1=pos y>=0
trigger1=vel y>0
value=52

;---------------------------------------------------------------------------
;ッシュ弱
[statedef 250]
type=a
movetype=a
physics=n
poweradd=22
ctrl=0
velset=3,-2
anim=230

[state 250,重力]
type=veladd
trigger1=1
y=0.1

[state 250,素振り音]
type=playsnd
trigger1=animelemtime(6)=0
value=1,2

[state 250,声]
type=playsnd
trigger1=animelemtime(6)=0
value=0,3
channel=0

[state 250,ヒット定]
type=hitdef
trigger1=animelemtime(6)=0
trigger2=var(0)&16
attr=a,na
guardflag=ha
animtype=hard
damage=70
pausetime=9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy=-20,-62
hitsound=s5,0
guardsound=s6,0
ground.type=high
ground.slidetime=11
ground.hittime=11
air.hittime=11
ground.velocity=-3,-2
air.velocity=-3,-2
fall=1

[state 250,着地]
type=changestate
trigger1=pos y>=0
trigger1=vel y>0
value=52

;---------------------------------------------------------------------------
;ッシュ中
[statedef 260]
type=a
movetype=a
physics=n
poweradd=22
ctrl=0
velset=3,-2
anim=230

[state 260,重力]
type=veladd
trigger1=1
y=0.1

[state 260,素振り音]
type=playsnd
trigger1=animelemtime(6)=0
value=1,2

[state 260,声]
type=playsnd
trigger1=animelemtime(6)=0
value=0,3
channel=0

[state 260,ヒット定]
type=hitdef
trigger1=animelemtime(6)=0
trigger2=var(0)&16
attr=a,na
guardflag=ha
animtype=hard
damage=70
pausetime=11,11
sparkno=s6102
guard.sparkno=s6125
sparkxy=-20,-62
hitsound=s5,1
guardsound=s6,0
ground.type=high
ground.slidetime=14
ground.hittime=14
air.hittime=14
ground.velocity=-3,-3.5
air.velocity=-3,-3.5
fall=1

[state 260,着地]
type=changestate
trigger1=pos y>=0
trigger1=vel y>0
value=52

;---------------------------------------------------------------------------
;ッシュ強
[statedef 270]
type=a
movetype=a
physics=n
poweradd=22
ctrl=0
velset=3,-2
anim=230

[state 270,重力]
type=veladd
trigger1=1
y=0.1

[state 270,素振り音]
type=playsnd
trigger1=animelemtime(6)=0
value=1,2

[state 270,声]
type=playsnd
trigger1=animelemtime(6)=0
value=0,3
channel=0

[state 270,ヒット定]
type=hitdef
trigger1=animelemtime(6)=0
trigger2=var(0)&16
attr=a,na
guardflag=ha
animtype=hard
damage=70
pausetime=13,13
sparkno=s6102
guard.sparkno=s6125
sparkxy=-20,-62
hitsound=s5,2
guardsound=s6,0
ground.type=high
ground.slidetime=17
ground.hittime=17
air.hittime=17
ground.velocity=-4,-1
air.velocity=-4,-1
fall=1

[state 270,着地]
type=changestate
trigger1=pos y>=0
trigger1=vel y>0
value=52

;===========================================================================
;2弱
[statedef 400]
type=c
movetype=a
physics=c
poweradd=15
ctrl=0
anim=400

[state 400,素振り音]
type=playsnd
trigger1=animelemtime(3)=0
value=1,0

[state 400,ヒット定]
type=hitdef
trigger1=animelemtime(3)=0
trigger2=var(0)&16
attr=c,na
damage=28
animtype=light
guardflag=l
pausetime=7,7
sparkno=s6100
guard.sparkno=s6125
sparkxy=-10,-42
hitsound=s5,0
guardsound=s6,0
ground.type=low
ground.slidetime=13
ground.hittime=13
air.hittime=13
ground.velocity=-4
air.velocity=-2,-3
getpower = 20,10
givepower = 10,5

[state 400,状態キャンセル]
type=ctrlset
trigger1=time=8
value=1

[state 400,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;2中
[statedef 410]
type=c
movetype=a
physics=c
poweradd=50
ctrl=0
anim=410

[state 410,素振り音]
type=playsnd
trigger1=animelemtime(4)=0
value=1,1

[state 410,ヒット定]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=var(0)&16
attr=c,na
damage=30
animtype=medium
guardflag=l
pausetime=7,7
sparkno=s6101
guard.sparkno=s6125
sparkxy=-5,-10
hitsound=s5,1
guardsound=s6,0
ground.type=low
ground.slidetime=13
ground.hittime=13
air.hittime=13
ground.velocity=-6
air.velocity=-3,-3
getpower = 20,10
givepower = 10,5

[state 410,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;2強
[statedef 420]
type=c
movetype=a
physics=c
poweradd=70
ctrl=0
anim=420

[state 420,素振り音]
type=playsnd
trigger1=animelemtime(5)=0
value=1,2

[state 420,声]
type=playsnd
trigger1=animelemtime(3)=0
value=0,3
channel=0

[state 420,ヒット定]
type=hitdef
trigger1=animelemtime(5)=0
attr=c,na
damage= 65*ifelse(p2statetype = A && p2movetype != H,fvar(8),1)
guardflag=ma
pausetime=9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-55
hitsound=s5,2
guardsound=s6,0
ground.slidetime=21
ground.hittime=21
air.hittime=21
ground.velocity=-7
air.velocity=-5,-3
getpower = 30,15
givepower = 15,5

[state 420,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;3中
[statedef 430]
type=c
movetype=a
physics=c
poweradd=22
ctrl=0
anim=430

[state 430,スライディング音]
type=playsnd
trigger1=animelemtime(3)=0
value=1,2

[state 430,声]
type=playsnd
trigger1=animelemtime(3)=0
value=0,0
channel=0

[state 430,滑り込み]
type=velset
trigger1=animelemtime(3)=0
x=10

[state 430,ヒット定]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=var(0)&16
attr=c,na
damage=60
animtype=medium
guardflag=l
pausetime=11,11
sparkno=s6101
guard.sparkno=s6127
sparkxy=-10,-8
hitsound=s5,3
guardsound=s6,0
ground.type=low
ground.slidetime=14
ground.hittime=14
air.hittime=14
ground.velocity=-8
air.velocity=-4,-3
getpower = 40,20
givepower = 20,10

[state 430,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;3強
[statedef 440]
type=c
movetype=a
physics=c
poweradd=22
ctrl=0
anim=440

[state 440,スライディング音]
type=playsnd
trigger1=animelemtime(4)=0
value=1,2

[state 440,声]
type=playsnd
trigger1=animelemtime(4)=0
value=0,0
channel=0

[state 440,滑り込み]
type=velset
trigger1=animelemtime(4)=0
x=15

[state 440,ヒット定]
type=hitdef
trigger1=animelemtime(6)=0
trigger2=var(0)&16
attr=c,na
damage=70
animtype=hard
guardflag=l
pausetime=13,13
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-8
hitsound=s5,2
guardsound=s6,0
ground.type=trip
ground.slidetime=17
ground.hittime=17
air.hittime=17
ground.velocity=-6
air.velocity=-6,0

[state 440,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;ッシュ2弱
[statedef 450]
type=c
movetype=a
physics=c
poweradd=22
ctrl=0
anim=450

[state 450,スライディング音]
type=playsnd
trigger1=animelemtime(3)=0
value=1,2

[state 450,滑り込み]
type=velset
trigger1=animelemtime(3)=0
x=15

[state 450,ヒット定]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=var(0)&16
attr=c,na
damage=70
animtype=hard
guardflag=l
pausetime=9,9
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-8
hitsound=s5,0
guardsound=s6,0
ground.type=low
ground.slidetime=11
ground.hittime=11
air.hittime=11
ground.velocity=-7
air.velocity=-4,-3

[state 450,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;ッシュ2中
[statedef 460]
type=c
movetype=a
physics=c
poweradd=22
ctrl=0
anim=450

[state 460,スライディング音]
type=playsnd
trigger1=animelemtime(3)=0
value=1,2

[state 460,滑り込み]
type=velset
trigger1=animelemtime(3)=0
x=15

[state 460,ヒット定]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=var(0)&16
attr=c,na
damage=70
animtype=hard
guardflag=l
pausetime=11,11
sparkno=s6101
guard.sparkno=s6125
sparkxy=-10,-8
hitsound=s5,1
guardsound=s6,0
ground.type=low
ground.slidetime=14
ground.hittime=14
air.hittime=14
ground.velocity=-7
air.velocity=-4,-3

[state 460,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;---------------------------------------------------------------------------
;ッシュ2強
[statedef 470]
type=c
movetype=a
physics=c
poweradd=22
ctrl=0
anim=450

[state 470,スライディング音]
type=playsnd
trigger1=animelemtime(3)=0
value=1,2

[state 470,滑り込み]
type=velset
trigger1=animelemtime(3)=0
x=15

[state 470,ヒット定]
type=hitdef
trigger1=animelemtime(4)=0
trigger2=var(0)&16
attr=c,na
damage=70
animtype=hard
guardflag=l
pausetime=13,13
sparkno=s6102
guard.sparkno=s6125
sparkxy=-10,-8
hitsound=s5,2
guardsound=s6,0
ground.type=trip
ground.slidetime=17
ground.hittime=17
air.hittime=17
ground.velocity=-7
air.velocity=-4,-3

[state 470,終了]
type=changestate
trigger1=animtime=0
value=11
ctrl=1

;===========================================================================
;J弱
[statedef 600]
type=a
movetype=a
physics=a
poweradd=11
ctrl=0
anim=600

[state 600,素振り音]
type=playsnd
trigger1=animelemtime(5)=0
value=1,0

[state 600,ヒット定]
type=hitdef
trigger1=animelemtime(5)=0
attr=a,na
damage=35
guardflag=ha
pausetime=9,9
sparkno=s6100
guard.sparkno=s6125
sparkxy=-10,-58
hitsound=s5,0
guardsound=s6,0
ground.type=high
ground.slidetime=15
ground.hittime=15
air.hittime=15
ground.velocity=-5
air.velocity=-3,-3
getpower = 20,10
givepower = 10,5
;---------------------------------------------------------------------------
;J中
[statedef 610]
type=a
movetype=a
physics=a
poweradd=65
ctrl=0
anim=610

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 10600
ID = 10600
pos = -9*const(size.xscale),0*const(size.yscale)
postype = p1  ;p2,front,back,left,right
sprpriority = 2
bindtime = -2
ownpal = 1
removeongethit = 1

[state 610,素振り音]
type=playsnd
trigger1=animelemtime(5)=0
value=1,1

[state 610,ヒット定]
type=hitdef
trigger1=animelemtime(5)=0
attr=a,na
damage=60
guardflag=ha
pausetime=9,9
sparkno=s6101
guard.sparkno=s6125
sparkxy=-10,-55
hitsound=s5,2
guardsound=s6,0
animtype=med
ground.type=high
ground.slidetime=21
ground.hittime=21
air.hittime=21
ground.velocity=-6
air.velocity=-4,-3
getpower = 30,15
givepower = 15,5

;---------------------------------------------------------------------------
;J強
[statedef 620]
type=a
movetype=a
physics=a
poweradd=65
ctrl=0
anim=620

[state 620,素振り音]
type=playsnd
trigger1=animelemtime(5)=0
value=1,2

[state 620,ヒット定]
type=hitdef
trigger1=animelemtime(5)=0
attr=a,na
damage=35
guardflag=ha
pausetime=9,9
sparkno=s6101
guard.sparkno=s6125
sparkxy=-10,-40
hitsound=s5,1
guardsound=s6,0
animtype=med
ground.type=high
ground.slidetime=15
ground.hittime=15
air.hittime=15
ground.velocity=-7
air.velocity=-5,-3
getpower = 20,10
givepower = 10,5

[statedef 630]
type=a
movetype=a
physics=n
poweradd=22
ctrl=0
velset=1.5,0
anim=230

[state 230,重力]
type=veladd
trigger1= time > 17
y=0.65

[state 230,素振り音]
type=playsnd
trigger1=animelemtime(6)=0
value=1,2

[state 230,ヒット定]
type=hitdef
trigger1=animelemtime(6)=0
attr=a,na
guardflag=ha
animtype=hard
damage=63
pausetime=13,13
sparkno=s6102
guard.sparkno=s6125
sparkxy=-20,-62
hitsound=s5,3
guardsound=s6,0
ground.type=high
ground.slidetime=17
ground.hittime=17
air.hittime=17
ground.velocity=-4,-3
air.velocity=-4,-3
fall = 1
getpower = 40,20
givepower = 20,10

[state 230,着地]
type=changestate
trigger1=pos y>=0
trigger1=vel y>0
value=52
;===========================================================================
;通常投げ:掴み
[statedef 800]
type=s
movetype=a
physics=s
velset=0,0
ctrl=0
anim=800

[state 800,つかみ判定]
type=hitdef
trigger1=time=0
attr=s,nt
hitflag=m-
priority=1,miss
hitsound=s800,0
p1facing=1
p2facing=1
p1stateno=810
p2stateno=820
guard.dist=0
numhits=0
id=800

[state 800,つかみ失敗]
type=changestate
trigger1=animtime=0
value=ifelse(command="holdfwd",230,220)

;---------------------------------------------------------------------------
;通常投げ:成功
[statedef 810]
type=s
movetype=a
physics=s
anim=810
velset=0,0
poweradd=60

[state 810,振り向き]
type=turn
triggerall=time=0
trigger1=command="holdback"

[state 810,こっちを向かせる]
type=targetfacing
trigger1=animelemtime(13)<0
value=-1
id=800

[state 810,対象の位置]
type=targetbind
trigger1=animelemtime(13)<0
pos=45,0
id=800

[state 810,幅を増やす]
type=width
trigger1=animelemtime(13)<0
edge=60,0

[state 810,波紋ッ！]
type=playsnd
trigger1=time=0
value=0,4
channel=0

[state 810,メジ]
type=targetlifeadd
trigger1=animelemtime(13)=0
value=-85
id=800

[state 810,ヒット数]
type=hitadd
trigger1=animelemtime(13)=0
value=1

[state 810,似ヒット音]
type=playsnd
trigger1=animelemtime(13)=0
value=5,5

[state 810,似ヒットスパク]
type=explod
trigger1=animelemtime(13)=0
anim=7000
pos=-40,-80
postype=p2
ontop=1
ownpal=1

[state 810,吹っ飛び]
type=targetvelset
trigger1=animelemtime(13)=0
x=-5
y=-6
id=800

[state 810,巻き込み]
type=hitdef
trigger1=animelemtime(13)=0
attr=s,na
guardflag=ma
animtype=back
damage=84
hitsound=s5,5
guardsound=s6,0
ground.slidetime=20
guard.slidetime=20
ground.hittime=20
air.hittime=20
guard.ctrltime=20
yaccel=0.3
ground.velocity=-5,-6
air.velocity=-5,-6
ground.cornerpush.veloff=0
p2facing=1
fall=1
fall.recover=0
nochainid=800
guard.kill=0
numhits=1
givepower=30,15

[state 810,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

[state 810,投げ抜けのャンス]
type=explod
trigger1=time<5
anim=6166
id=800
pos=0,-125
postype=p2
ontop=1
ownpal=1

[state 810,投げ抜け:対象側]
type=targetstate
triggerall=numexplod(800)
trigger1=target(800),command="z"
trigger1=target(800),command="holdfwd"||target(800),command="holdback"
value=830
id=800

[state 810,投げ抜け:自分側]
type=changestate
triggerall=numexplod(800)
trigger1=target(800),command="z"
trigger1=target(800),command="holdfwd"||target(800),command="holdback"
value=830

;---------------------------------------------------------------------------
;通常投げ:対象側
[statedef 820]
type=a
movetype=h
physics=n
velset=0,0
poweradd=53

[state 820,無敵]
type=nothitby
trigger1=1
value=sca

[state 820,対象のアニメ変更1]
type=changeanim2
trigger1=time=0
value=820

[state 820,対象のアニメ変更2]
type=changeanim
trigger1=!gethitvar(isbound)
value=ifelse(selfanimexist(5035),5035,5030)
persistent=0

[state 820,重力]
type=veladd
trigger1=!gethitvar(isbound)
y=0.3

[state 820,れる]
type=selfstate
trigger1=pos y>=0
trigger1=vel y>0
value=5100

;---------------------------------------------------------------------------
;通常投げ:投げ抜け
[statedef 830]
type=a
movetype=i
physics=n
anim=5210
velset=-2,-5

[state 830,無敵]
type=nothitby
trigger1=1
value=sca

[state 830,重力]
type=veladd
trigger1=1
y=0.3

[state 830,着地]
type=selfstate
trigger1=time>35
value=52



;---------------------------------------------------------------------------
;2S
[statedef 500]
type=s
movetype=a
physics=s
poweradd=65
ctrl=0
velset=0,0
anim=500

[state 500,声]
type=playsnd
trigger1=animelemtime(2)=0
value=0,1
channel=0

[state 500,素振り音]
type=playsnd
trigger1=animelemtime(9)=0
value=1000,0

[state 500,クラッカ]
type=helper
trigger1=animelemtime(9)=0
helpertype=normal
stateno=501
id=1000
name="Cracker"

[state 500,ヒット定]
type=hitdef
trigger1=animelemtime(9)=0
trigger2=animelemtime(9)=3
trigger3=var(0)&16
attr=c,sa
animtype=medium
damage=63
guardflag=l
pausetime=5,5
sparkno=s6103
guard.sparkno=s6125
sparkxy=-10,-9
hitsound=s5,3
guardsound=s6,0
ground.type=trip
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity=-3,-2
air.velocity=-3,-2
guard.kill=0
getpower = 30,15
givepower = 15,5

[state 500,コン補正開始]
type=varset
triggerall=!var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 500,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;2Sクラッカ
[statedef 501]
type=s
movetype=a
physics=s
anim=1002
sprpriority=2
ctrl=0

[state 501,固定]
type=bindtoroot
trigger1=1
facing=1
pos=75,-9

[state 501,終了]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(11)=0
trigger2=root,stateno!=500

;---------------------------------------------------------------------------
;JS
[statedef 700]
type=a
movetype=a
physics=a
poweradd=20
ctrl=0
anim=700

[state 700,素振り音]
type=playsnd
trigger1=animelemtime(5)=0
value=1000,0

[state 700,声]
type=playsnd
trigger1=animelemtime(4)=0
value=0,0
channel=0

[state 700,クラッカ]
type=helper
trigger1=animelemtime(5)=0
helpertype=normal
stateno=701
id=1000
name="Cracker"

[state 700,ヒット定]
type=hitdef
trigger1=animelemtime(5)=0
trigger2=animelemtime(5)=3
trigger3=animelemtime(5)=6
trigger4=var(0)&16
attr=a,sa
damage=20
guardflag=ha
pausetime=5,10
sparkno=s6103
guard.sparkno=s6125
sparkxy=-10,-81
hitsound=s5,3
guardsound=s6,0
ground.type=low
ground.slidetime=18
ground.hittime=18
air.hittime=18
ground.velocity=-4
air.velocity=-3,-3
guard.kill=0
getpower = 10,5
givepower = 10,5

[state 700,コン補正開始]
type=varset
triggerall=!var(1)
trigger1=hitcount>1
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
;JSクラッカ
[statedef 701]
type=s
movetype=a
physics=s
anim=1003
sprpriority=2
ctrl=0

[state 701,固定]
type=bindtoroot
trigger1=1
facing=1
pos=50,-52

[state 701,終了]
type=destroyself
triggerall=ishelper
trigger1=root,animelemtime(7)=0
trigger2=root,stateno!=700

;------------------------------------------------------------------------------------


[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 65
ctrl = 0
velset = 0,0
anim = 291
sprpriority = 2


[State 240, 音を鳴らす]
type = PlaySnd
trigger1 = Time = 6
value = 0, 1



[State 240, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = heavy
damage    = 30
guardflag = MA
priority = 4, Hit
pausetime = 12,12
guard.pausetime = 11,11
sparkno=s6101
guard.sparkno=s6125
sparkxy=-10,-60
hitsound=s5,1
guardsound=s6,0
ground.type = high
ground.slidetime = 2
ground.hittime  = 22
guard.hittime  = 22
ground.velocity = -8*const(size.xscale)
air.velocity = -8*const(size.xscale),-1+var(19)*1.3
getpower = 20,10
givepower = 10,5


[State 240, ステ?ト変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1











[Statedef 211]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 211
sprpriority = -1

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 10210
ID = 10210
pos = 0*const(size.xscale),0*const(size.yscale)
postype = p1  ;p2,front,back,left,right
sprpriority = 2
bindtime = -2
ownpal = 1
removeongethit = 1

[State 210, 音を鳴らす]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 210, ヒット]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = 56
guardflag = MA
priority = 3, Hit
pausetime = 10,10
sparkno=s6102
guard.sparkno=s6127
sparkxy=-10,-70
hitsound=s5,2
guardsound=s6,0
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
guard.hittime  = 17
ground.velocity = -12*const(size.xscale)
air.velocity = -3.5*const(size.xscale),-1+var(19)*1.3
getpower = 30,15
givepower = 15,5

[State 210, ステ?ト変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[statedef 300]
type=s
movetype=a
physics=s
poweradd = 80
velset=0,0
anim=1210
ctrl=0

[state 950,波紋ッ！]
type=playsnd
trigger1=animelemtime(7)=0
value=0,4
channel=0

[state 950,コラ効果音]
type=playsnd
trigger1=animelemtime(12)=0
value=1200,0

[state 950,コラが吹き出す]
type=explod
trigger1=animelemtime(12)=0
anim=1201
pos=0,0
scale=const(size.xscale),const(size.yscale)
sprpriority=1
ownpal=1

[state 950,ヒット定]
type=hitdef
trigger1=animelemtime(12)=2
attr=s,sa
animtype=up
damage=70
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
ground.velocity=-1,-6
guard.velocity=-6
air.velocity=-1,-6
airguard.velocity=-4,-4.5
p2facing=1
fall=1
fall.recovertime=50
yaccel=0.4
guard.kill=0
getpower = 40,20
givepower = 20,10

[state 950,コン補正開始]
type=varset
triggerall=!var(1)
trigger1=movehit
var(1)=enemynear,gethitvar(hitcount)
ignorehitpause=1

[state 950,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

[Statedef 301]
type = A
movetype = A
physics = A
anim = 301
poweradd = 80
juggle = 10
ctrl = 0




[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = S900,0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
damage = 70
animtype = hard
hitflag = MAF
guardflag = HA
sparkno=s6103
guard.sparkno=s6125
sparkxy=-30,0
hitsound=s5,4
guardsound=s6,0
ground.type = high
pausetime=11,11
ground.slidetime = 20
ground.velocity = -4,-6
air.velocity = -4,-6
air.type = high
fall = 1
fall.recover = 0
yaccel = .5
air.cornerpush.veloff = 0
getpower = 40,20
givepower = 20,10

[Statedef 980]
type = S
movetype = A
physics = N
anim = 980
velset = 0,0
ctrl = 0

[State 903, 4]
type = EnvShake
triggerall = Anim = 980
trigger1 = time = 1
time = 8
freq = 120
ampl = 8

[State 780, Sprite]
type = SprPriority
trigger1 = time = 0
value = 2

[State 780, Activate]
type = VarSet
trigger1 = animelem = 2
v = 40
value = 1100

[State 780, Voice]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3
channel = 0

[State 780, SFX]
type = PlaySnd
trigger1 = animelem = 2
value = s980,0

[State 780, Shake]
type = EnvShake
trigger1 = animelem = 2
time = 15
freq = 150
ampl = 5

[State 780, PowerDrain]
type = PowerAdd
trigger1 = animelem = 2
value = -1000

[State 0, Explod]
type = Explod
trigger1 = animelem = 2
anim = 4151
ID = 4151
pos = 10,-80
postype = p1  ;p2,front,back,left,right
scale = 0.7,0.7
ontop = 1
ownpal = 1


[State 780, MAXbarLeft]
type = Explod
trigger1 = var(30) = 1
trigger1 = animelem = 2
anim = 4100
id = 4100
sprpriority = 8
ontop = 1
ownpal = 1
postype = left
pos = 16,200
removetime = -1
ignorehitpause = 1
bindtime = -1

[State 780, MAXbarCounterLeft]
type = Explod
trigger1 = var(30) = 1
trigger1 = animelem = 2
anim = 4102
id = 4102
ontop = 1
ownpal = 1
postype = left
pos = 103,202
removetime = -1
ignorehitpause = 1
bindtime = -1

[State 780, MAXbarRight]
type = Explod
trigger1 = var(30) = 2
trigger1 = animelem = 2
anim = 4105
id = 4100
sprpriority = 8
ontop = 1
ownpal = 1
postype = right
pos = -107,200
removetime = -1
ignorehitpause = 1
bindtime = -1

[State 780, MAXbarCounterRight]
type = Explod
trigger1 = var(30) = 2
trigger1 = animelem = 2
anim = 4107
id = 4102
ontop = 1
sprpriority = 9
ownpal = 1
postype = Right
pos = -83,202
removetime = -1
ignorehitpause = 1
bindtime = -1

[State 1103, 4]
type = hitdef
trigger1 = AnimElem = 2
attr = S, NA
damage = 30
animtype = Hard
hitflag = MAFP
pausetime = 3,4
guard.pausetime = 3,2
sparkxy = 12,-88
sparkno = s10030
guard.sparkno = s10410
hitsound = S4,4
guardsound = S4,9
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -4,-9
air.animtype = Back
fall = 1
fall.recovertime = 40
p2stateno = 1106
air.velocity = -4,-9
down.hittime = 12
down.velocity = -6,0
down.hittime = 17
guard.ctrltime = 17
yaccel = .45
air.juggle = 1
getpower = 78,78
givepower = 20,20

[State 780, State]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 981]
type = S
movetype = A
physics = N
anim = 981
velset = 0,0
ctrl = 0

[State 780, SFX]
type = PlaySnd
trigger1 = animelem = 4
value = s980,0

[State 0, Pause]
type = SuperPause
trigger1 = animelem = 1
anim = -1
time = 30
movetime = 30
p2defmul = 1

;---------------------
[State 00];
type = PlaySnd
trigger1 = animelem = 4
value = 900,1

[State 780, Activate]
type = VarSet
trigger1 = animelem = 4
v = 40
value = 1100

[State 780, Shake]
type = EnvShake
trigger1 = animelem = 4
time = 15
freq = 150
ampl = 5

;---------------------
[State 780, Sprite]
type = SprPriority
trigger1 = time = 0
value = 2

[State 780, PowerDrain]
type = PowerAdd
trigger1 = animelem = 1
value = -2000

[State 0, Explod]
type = Explod
trigger1 = animelem = 4
anim = 4151
ID = 4151
pos = 10,-80
postype = p1  ;p2,front,back,left,right
scale = 0.7,0.7
ontop = 1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999


[State 780, MAXbarLeft]
type = Explod
trigger1 = var(30) = 1
trigger1 = animelem = 4
anim = 4100
id = 4100
sprpriority = 8
ontop = 1
ownpal = 1
postype = left
pos = 16,200
removetime = -1
ignorehitpause = 1
bindtime = -1

[State 780, MAXbarCounterLeft]
type = Explod
trigger1 = var(30) = 1
trigger1 = animelem = 4
anim = 4102
id = 4102
ontop = 1
ownpal = 1
postype = left
pos = 103,202
removetime = -1
ignorehitpause = 1
bindtime = -1

[State 780, MAXbarRight]
type = Explod
trigger1 = var(30) = 2
trigger1 = animelem = 4
anim = 4105
id = 4100
sprpriority = 8
ontop = 1
ownpal = 1
postype = right
pos = -107,200
removetime = -1
ignorehitpause = 1
bindtime = -1

[State 780, MAXbarCounterRight]
type = Explod
trigger1 = var(30) = 2
trigger1 = animelem = 4
anim = 4107
id = 4102
ontop = 1
sprpriority = 9
ownpal = 1
postype = Right
pos = -83,202
removetime = -1
ignorehitpause = 1
bindtime = -1

[State 901, ChangeState]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = !AILEVEL
trigger1 = command = "holdfwd"
value = 100

[state -1]
type = changestate
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = p2statetype != A && p2statetype != L
trigger1 = AILEVEL
trigger1 = var(40) > 0
value = 104

[State 780, State]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 104]
type    = S
physics = S
anim = 100
sprpriority = 1
ctrl = 0

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 5.2]
type = ChangeState
triggerall = AILEVEL
trigger1 = P2bodydist X <= 25
trigger2 = roundstate != 2
value = 0
ctrl = 1

[Statedef 1106]
type    = A
movetype= H
physics = N
velset = 0,0;-13,-.5

[State 1021,0]
type = turn
Trigger1 = frontedgedist <= 0
value = 1

[State 1021,0]
type = velset
trigger1 = time = 1
x = -13
y = -.6

[State 840, 2]
type = afterimage
trigger1 = time = 5
time = 13
length = 3
PalBright   =   0,  0,  0
PalContrast = 255,255,255
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 2
ignorehitpause = 1

[State 9000, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 821, 1]
type = VelAdd
Trigger1 = time > 4
y = .14

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 912

[state 190]
type = changestate
Trigger1 = backedgedist <= 0
Trigger2 = frontedgedist <= 0
value = 11065

[Statedef 11065];??2
type    = A
movetype= H
physics = N
velset = 4.5,-12.7

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 913


[State 9000, 1]
type = turn
trigger1 = time = 0
value = 1

[State 821, 1]
type = VelAdd
Trigger1 = time > 3
y = .5
x = .05

[State 821, 4]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100