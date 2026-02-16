;勝利ポーズ分岐
[statedef 180]
type=s



[state 180,汎用]
type=changestate
trigger1=time=0
value=181+(random%2)

;---------------------------------------------------------------------------
;勝利ポーズ1
[statedef 181]
type=s
ctrl=0
anim=181
velset=0,0

[state 180,to be continued...]
type=explod
trigger1=time=0
anim=6054
id=6054
pos=4,206
postype=left
removetime=-1
bindtime=-1
ownpal=1
sprpriority=-2

[state 181,勝利ポーズ]
type=assertspecial
trigger1=time<220
trigger2=numhelper(6050)
flag=roundnotover

[state 181,またまたやらせていただきましたァ～ン]
type=playsnd
trigger1=time=0
value=181,0
channel=0


;[State 181, ChangeState]
;type = ChangeState
;triggerall = matchover
;triggerall = WinTime
;trigger1 = time = 200
;value = 189


;---------------------------------------------------------------------------
;勝利ポーズ2
[statedef 182]
type=s
ctrl=0
anim=181
velset=0,0

[state 182,勝利ポーズ]
type=assertspecial
trigger1=time<240
trigger2=numhelper(6050)
flag=roundnotover

[state 182,相手が勝ち誇ったとき、既にそいつは敗北している]
type=playsnd
trigger1=time=0
value=182,0
channel=0

;[State 181, ChangeState]
;type = ChangeState
;triggerall = matchover
;triggerall = WinTime
;trigger1 = time = 200
;value = 189



[Statedef 189]
type = S
ctrl = 0
anim = 30000
velset = 0,0

[State 181, 5]
type = EnvColor
trigger1 = time = 0
value = 0,0,0
time = 3

[State 181, 6]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 3

[State 181, 17]
type = PlaySnd
trigger1 = time = 0
value = S2,6

[State 181, 8]; Box (up)
type = Explod
trigger1 = time = 0 
anim = 9410
postype = left
bindtime = -1
removetime =-1
ownpal = 1
ontop = 1

[State 181, 8]; Box (up)
type = Explod
trigger1 = time = 0
anim = 9400
postype = left
bindtime = -1
removetime =-1
ownpal = 1
ontop = 1


[State 191, Snd 1]
type = assertspecial
trigger1 = 1
flag = nomusic
flag2 = noFG
flag3 = noBG

[State 3000, Super A]
type = AssertSpecial
trigger1 = 1
flag = NoBarDisplay
flag2 = globalnoshadow

[State 191, Snd 1]
type = assertspecial
trigger1 = Time =[0,407]
flag = roundnotover

;===========================================================================
;イントロ分岐
[statedef 190]
type=s
ctrl=0
velset=0,0


[state 190,板割り]
type=changestate
triggerall=time=0
trigger1=enemy,name="Kung Fu Man"
trigger2=enemy,authorname="Men'sClub"
value=191

[State 0, VarRandom]
type = VarRandom
trigger1 = time=0
v = 4
range = 1,2


[state 190,汎用]
type=changestate
trigger1= var(4) = 1
value=191


[state 190,汎用]
type=changestate
trigger1= var(4) = 2
value=192



;---------------------------------------------------------------------------
;イントロ
[statedef 191]
type=s
ctrl=0
anim=195
velset=0,0

[state 191,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 191,ボイス]
type=playsnd
trigger1=time=40
value=191,random%2
channel=0

[state 191,アニメ変更]
type=changeanim
trigger1=roundstate=0
value=anim

[state 191,ステート変更]
type=changestate
trigger1=animtime=0
value=0


;===========================================================================
;挑発
[statedef 192]
type=s
movetype=i
physics=s
ctrl=0
anim=195
velset=0,0
sprpriority=2

[state 191,イントロ]
type=assertspecial
trigger1=1
flag=intro

[state 195,ハッピーうれピーよろピくねー]
type=playsnd
trigger1=time=0
value=195,0
channel=0

[state 191,ステート変更]
type=changestate
trigger1=animtime=0
value=0
;---------------------------------------------------------------------------
;次にお前は…
[statedef 196]
type=s
movetype=i
physics=s
ctrl=0
anim=196
velset=0,0
sprpriority=2

[state 196,次にお前は]
type=playsnd
trigger1=animelemtime(3)=0
value=196,0
channel=0

[state 196,やれやれだぜ]
type=playsnd
triggerall=animelemtime(18)=0
trigger1=enemy,name="jotaro"
trigger2=enemy,name="kujo jotaro"
trigger3=enemy,name="Jotaro Kujo"
trigger4=enemy,name="Kujo Jotaro (Part4)"
trigger5=enemy,name="sol"
trigger6=enemy,name="order-Sol=Badguy"
value=197,0
channel=0

[state 196,レロレロ]
type=playsnd
triggerall=animelemtime(18)=0
trigger1=enemy,name="Noriaki Kakyoin"
trigger2=enemy,name="kakyoin2"
trigger3=enemy,name="new_kakyoin"
value=197,1
channel=0

[state 196,チッチッチッ]
type=playsnd
triggerall=animelemtime(18)=0
trigger1=enemy,name="AVDOL"
value=197,2
channel=0

[state 196,ぶった切ってやる]
type=playsnd
triggerall=animelemtime(18)=0
trigger1=enemy,name="J.P Polnareff"
trigger2=enemy,name="Polnareff"
value=197,3
channel=0

[state 196,…と言う]
type=playsnd
trigger1=animelemtime(31)=0
value=196,1
channel=0

[state 196,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

;===========================================================================
;立ちアドガ
[statedef 160]
type=s
movetype=i
physics=s
ctrl=0
anim=150

[state 160,ヘルパー]
type=helper
trigger1=time=0
name="push"
id=162
pos=40,0
postype=p2
facing=-1
stateno=162

[state 160,エフェクト]
type=explod
trigger1=time=0
anim=6126
pos=0,-60
postype=p1
ontop=1
ownpal=1

[state 160,効果音]
type=playsnd
trigger1=time=0
value=160,0

[state 160,そんなもんかぁ？]
type=playsnd
trigger1=time=0
value=160,1
channel=0

[state 160,終了]
type=changestate
value=151
trigger1=1

;---------------------------------------------------------------------------
;しゃがみアドガ
[statedef 161]
type=c
movetype=i
physics=c
ctrl=0
anim=152

[state 161,ヘルパー]
type=helper
trigger1=time=0
name="push"
id=162
pos=40,0
postype=p2
facing=-1
stateno=162

[state 161,エフェクト]
type=explod
trigger1=time=0
anim=6126
pos=0,-40
postype=p1
ontop=1
ownpal=1

[state 161,効果音]
type=playsnd
trigger1=time=0
value=160,0

[state 161,そんなもんかぁ？]
type=playsnd
trigger1=time=0
value=160,1
channel=0

[state 161,終了]
type=changestate
value=153
trigger1=1

;---------------------------------------------------------------------------
;押し出し用ヘルパー
[statedef 162]
type=s
movetype=i
physics=n
velset=0,0
anim=162

[state 162,押し出し判定]
type=playerpush
trigger1=1
value=1

[state 162,無敵]
type=nothitby
trigger1=1
value=sca

[state 162,前進]
type=velset
trigger1=time=0
x=20

[state 162,減速]
type=veladd
trigger1=time>0
x=-1

[state 162,終了]
type=destroyself
triggerall=ishelper
trigger1=time=15

;===========================================================================
;回り込み
[statedef 900]
type=s
movetype=i
physics=s
anim=900
ctrl=0
sprpriority=-1

[State 700, 4]
type = Poweradd
triggerall = prevstateno = 150 || prevstateno = 151
trigger1 = time = 0
value = -1000

[State 700, 6]
type = PalFX
triggerall = prevstateno = 150 || prevstateno = 151
trigger1 = (GameTime%2) = 0 && time < 7
time = 1
add = 256,256,256
mul = 256,256,256
sinadd = 256,256,256,1
invertall = 0
color = 256
ignorehitpause = 1

[State 700, 7]
type = superpause
triggerall = prevstateno = 150 || prevstateno = 151
trigger1 = time = 0
time = 8
movetime = 8
anim = -1
darken = 0

[State 700, 8]
type = EnvColor
triggerall = prevstateno = 150 || prevstateno = 151
trigger1 = time = 0
value = 255,255,255
time = 4
under = 1


[state 900,こっちだよ～]
type=playsnd
trigger1=time=0
value=900,0
channel=0

[state 900,投げ以外無敵]
type=hitby
trigger1 = prevstateno != 150 || prevstateno != 151
trigger1 = animelemtime(8)<0
value=sca,at

[State 0, NotHitBy]
type = NotHitBy
trigger1 = prevstateno = 150 || prevstateno = 151
value = SCA


[state 900,残像]
type=afterimage
trigger1=animelemtime(1)=0
time=29
palbright=0,0,0
palpostbright=-25,0,0
palcontrast=256,256,256
paladd=0,0,0
palmul=1,1,1
length=4
trans=none
timegap=2
framegap=2

[state 900,滑る]
type=velset
trigger1=animelemtime(6)<0
x=6

[state 900,すり抜け]
type=playerpush
trigger1=1
value=0

[state 900,終了]
type=changestate
trigger1=animtime=0
value=0
ctrl=1

[Statedef 901]
type     = S
movetype = I
physics  = N
poweradd = 0
ctrl     = 0
anim     = 901
velset   = 0,0

[State 702, ????????????];????
type = HitBy
trigger1 = prevstateno != 150 || prevstateno != 151
trigger1 = animelemtime(5)<0
value = SCA,AT

[State 0, NotHitBy]
type = NotHitBy
trigger1 = prevstateno = 150 || prevstateno = 151
value = SCA


[State 700, 4]
type = Poweradd
triggerall = prevstateno = 150 || prevstateno = 151
trigger1 = time = 0
value = -1000


[State 700, 6]
type = PalFX
triggerall = prevstateno = 150 || prevstateno = 151
trigger1 = (GameTime%2) = 0 && time < 7
time = 1
add = 256,256,256
mul = 256,256,256
sinadd = 256,256,256,1
invertall = 0
color = 256
ignorehitpause = 1

[State 700, 7]
type = superpause
triggerall = prevstateno = 150 || prevstateno = 151
trigger1 = time = 0
time = ifelse((prevstateno=[200,440]),12,8)
movetime = ifelse((prevstateno=[200,440]),12,8)
anim = -1
darken = 0

[State 700, 8]
type = EnvColor
triggerall = prevstateno = 150 || prevstateno = 151
trigger1 = time = 0
value = 255,255,255
time = 4
under = 1



[State 702, ????]
type = PlayerPush
trigger1 = (Time = [0,20])
value = 0
IgnoreHitPause = 1
Persistent = 1

[State 702, ??]
type = AfterImage
trigger1 = Time = 0
Time = 29
PalContrast = 120,120,120
Trans = Add1
TimeGap  = 4
FrameGap = 1
length = 3

[State 702, ?]
type = MakeDust
trigger1 = Time = 20
pos = 0,0
spacing = 1

[State 702, ???]
type = PosSet
trigger1 = 1
y = 0

[State 702, ????]
type = VelSet
trigger1 = 1
y = 0

[State 702, ????]
type = VelSet
trigger1 = Time = 4
x = -6

[State 702, ????]
type = VelSet
trigger1 = Time = 30
x = 0

[State 702, ?????]
type = PlaySnd
trigger1 = time = 0
value = 182,3

[State 702, ??????]
type = ChangeState
trigger1 = (Time > 45)
value = 0
ctrl = 1

[State 195, ??????]
type = CtrlSet
trigger1 = Time = 45 ;??????????????????
value = 1

[Statedef 5200]
type = S
movetype = I
physics = N
poweradd= 0
ctrl = 0
anim = 5200
velset = 0,0
sprpriority = 1

;---------------------[??]
[State 700, 2];????????
type = NotHitBy
trigger1 = 1
value = SCA

[state a]
type = playerpush
trigger1 = 1
value = 0

;---------------------[??]
[state a]
type = posset
trigger1 = time = 0
y = 0

[State 600, 1]
type = velset
trigger1 = Time = 0
x = -12

[State 600, 1]
type = velset
trigger1 = animelem = 7
x = 0

[State 600, 1]
type = velmul
trigger1 = 1
x = 0.9

;---------------------[???]
[State 240, 1];????
type = PlaySnd
trigger1 = animelem = 1
value = s5000, 2

;---------------------[?????]
[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;画面から出たときに走ってくる
[statedef 60]
type=s
movetype=i
phisics=s
ctrl=0
anim=100

[state 60,終了]
type=changestate
trigger1=backedgebodydist>40
value=0
anim=0
ctrl=1

[state 60,振り返る]
type=turn
trigger1=facing*pos x>160

[state 60,画面のすぐそばまで瞬間移動]
type=posset
trigger1=facing*pos x<-180
x=-facing*180
y=0

[state 60,走る]
type=velset
trigger1=1
x=const(velocity.run.fwd.x)
y=0

[state 60,カメラ固定]
type=screenbound
trigger1=1
value=0

[state 60,すり抜け]
type=playerpush
trigger1=1
value=0

[state 60,無敵]
type=nothitby
trigger1=1
value=sca

;===========================================================================
;敵用:壁まで吹っ飛ぶ(ヒットシェイク)
[statedef 5600]
type=a
movetype=h
physics=n
ctrl=0
vel=0,0

[state 5600,アニメ変更]
type=changeanim2
trigger1=1
value=5410

[state 5600,硬直]
type=posfreeze
trigger1=1

[state 5600,吹っ飛び開始]
type=changestate
trigger1=hitshakeover
value=5601

;---------------------------------------------------------------------------
;敵用:壁まで吹っ飛ぶ
[statedef 5601]
type=a
movetype=h
physics=n
ctrl=0

[state 5601,喰らい重力]
type=veladd
trigger1=1
y=gethitvar(yaccel)

[state 5601,喰らい速度]
type=hitvelset
trigger1=time=0
x=1
y=1

[state 5601,吹っ飛びすぎる場合はカメラ固定]
type=screenbound
trigger1=time>40
value=0

[state 5601,壁にぶつかって落下へ]
type=changestate
trigger1=backedgebodydist<10
trigger2=frontedgebodydist<10
value=5602

[state 5601,壁まで飛ばずに落下]
type=selfstate
trigger1=pos y>=0
trigger1=vel y>0
value=5100

;---------------------------------------------------------------------------
;敵用:壁にぶつかって落下
[statedef 5602]
type=a
movetype=h
physics=n

[state 5602,反転]
type=turn
trigger1=backedgebodydist<frontedgebodydist
trigger1=time=0

[state 5602,壁ぶつかったときの速度]
type=velset
trigger1=time=0
x=-1
y=-5

[state 5602,壁にぶつかるエフェクト]
type=explod
trigger1=time=0
anim=f72
pos=0,floor(screenpos y)-50
facing=-facing
postype=front
ontop=1
ownpal=1

[state 5602,壁にぶつかる音]
type=playsnd
trigger1=time=0
value=f7,2

[state 5602,アニメ変更]
type=changeanim2
trigger1=time=0
value=5411

[state 5602,重力]
type=veladd
trigger1=1
y=0.4

[state 5602,地面に落下(終了)]
type=selfstate
trigger1=pos y>=0
trigger1=vel y>0
value=5100

[Statedef 9920]
type = S
ctrl = 0
anim = 30000
velset = 0,0

[State 1000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 1000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 1000, Sp Finish]
type = Explod
trigger1 = time = 0
anim = 9920
sprpriority = -10
pos = 0,0
postype = left
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
removetime = -2
ignorehitpause = 1
ownpal = 1

[State 1000, Sp Finish]
type = Explod
trigger1 = time = 0
anim = 9920
sprpriority = 999
pos = 0,0
postype = left
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
removetime = -2
ignorehitpause = 1
ownpal = 1

[State 1000, DestroySelf]
type = DestroySelf
trigger1 = time = 999
;-------------------------------------------------------------------------------
;Player Winpose
[Statedef 9925]
type = S
ctrl = 0
anim = 30000
sprpriority = 999

[State 1000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2 = nobg
flag3 = nofg
ignorehitpause = 1

[State 1000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 1000, Sp Finish]
type = Explod
trigger1 = time = 0
anim = 9925
sprpriority = 999
pos = 0,0
postype = left
removetime = -2
bindtime = -1
ownpal = 1
ontop = 1

[State 181, AssertSpecial]
type = AssertSpecial
trigger1 = time = [0,50]
flag = roundnotover


[State 181, ChangeState]
type = ChangeState
triggerall = matchover
trigger1 = time = 49
value = 189
