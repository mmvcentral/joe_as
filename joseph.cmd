

[defaults]
command.time=15
command.buffer.time=1

;---------------------------------------------------------------------------

[Command]
name = "AI0"
command = a,a,a
time = 0
[Command]
name = "AI1"
command = b,b,b
time = 0
[Command]
name = "AI2"
command = c,c,c
time = 0
[Command]
name = "AI3"
command = x,x,x
time = 0
[Command]
name = "AI4"
command = y,y,y
time = 0
[Command]
name = "AI5"
command = z,z,z
time = 0
[Command]
name = "AI6"
command = s,s,s
time = 0
[Command]
name = "AI7"
command = F,F,F
time = 0
[Command]
name = "AI8"
command = D,D,D,D
time = 0
[Command]
name = "AI9"
command = B,B,B,B
time = 0
[Command]
name = "AI10"
command = U,U,U,U
time = 0
[Command]
name = "AI11"
command = a,a,a,a
time = 0
[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI14"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI16"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0
[Command]
name = "AI18"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI19"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI20"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0

[command]
name = "fwd"
command=F
time=0
[command]
name = "back"
command=B
time=0
[command]
name = "up"
command=U
time=0
[command]
name = "down"
command=D
time=0


;---------------------------------------------------------------------------
[command]
name="3100"
command=~D,DF,F,D,DF,F,x+y
time = 30
buffer.time = 1

[command]
name="3000"
command=~D,DF,F,D,DF,F,a+b
time = 30
buffer.time = 1

[command]
name="4010"
command=~D,DB,B,D,DB,B,x+y
time = 30
buffer.time = 1


;------------------------------------------------------------------------------

[command]
name="3200"
command=~F,DF,D,DB,B,F,DF,D,DB,B,a
time = 45
buffer.time = 1

[command]
name="3200"
command=~F,DF,D,DB,B,F,DF,D,DB,B,b
time = 45
buffer.time = 1


[command]
name="3200"
command=~$F,$D,$B,$F,$D,$B,a
time = 45
buffer.time = 1

[command]
name="3200"
command=~$F,$D,$B,$F,$D,$B,b
time = 45
buffer.time = 1

[command]
name="3500"
command=~D,DF,F,D,DF,F,a
time = 30
buffer.time = 1

[command]
name="3500"
command=~D,DF,F,D,DF,F,b
time = 30
buffer.time = 1

[command]
name="3300"
command=~D,DF,F,D,DF,F,x
time = 30
buffer.time = 1

[command]
name="3300"
command=~D,DF,F,D,DF,F,y
time = 30
buffer.time = 1


;---------------------------------------------------------------------------

[command]
name="1600"
command=~F,DF,D,DB,B,x
time=30
buffer.time = 1


[command]
name="1610"
command=~F,DF,D,DB,B,y
time=30
buffer.time = 1

[command]
name="1600"
command=~$F,$D,$B,x
time=20
buffer.time = 1

[command]
name="1610"
command=~$F,$D,$B,y
time=20
buffer.time = 1


[command]
name="1500"
command=~F,DF,D,DB,B,a
time=30
buffer.time = 1

[command]
name="1500"
command=~F,DF,D,DB,B,b
time=30
buffer.time = 1

[command]
name="1500"
command=~$F,$D,$B,a
time=20
buffer.time = 1

[command]
name="1500"
command=~$F,$D,$B,b
time=20
buffer.time = 1



[command]
name="1105"
command=~D,DF,F,b


[command]
name="1100"
command=~D,DF,F,a

[command]
name="1000"
command=~D,DB,B,a

[command]
name="1050"
command=~D,DB,B,b

[command]
name="1200"
command=~F,D,DF,x
[command]
name="1210"
command=~F,D,DF,y


[command]
name="1300"
command=~D,DF,F,x

[command]
name="1310"
command=~D,DF,F,y


[command]
name="1400"
command=~D,DB,B,x


[command]
name="1410"
command=~D,DB,B,y


;---------------------------------------------------------------------------

[command]
name="FF";必コンド名
command=F,F
time=10
buffer.time=1
[command]
name="BB";必コンド名
command=B,B
time=10
buffer.time=1

;---------------------------------------------------------------------------

[command]
name="recovery";必コンド名
command=x+a
time=1
buffer.time=1


;---------------------------------------------------------------------------

[command]
name="a"
command=a
time=1
buffer.time=1
[command]
name="b"
command=b
time=1
buffer.time=1
[command]
name="c"
command=c
time=1
buffer.time=1
[command]
name="x"
command=x
time=1
buffer.time=1
[command]
name="y"
command=y
time=1
buffer.time=1
[command]
name="z"
command=z
time=1
buffer.time=1
[command]
name="start"
command=s
time=1
buffer.time=1

[command]
name="hold_a"
command=/a
time=1
buffer.time=1
[command]
name="hold_b"
command=/b
time=1
buffer.time=1
[command]
name="hold_c"
command=/c
time=1
buffer.time=1
[command]
name="hold_x"
command=/x
time=1
buffer.time=1
[command]
name="hold_y"
command=/y
time=1
buffer.time=1
[command]
name="hold_z"
command=/z
time=1
buffer.time=1
[command]
name="hold_s"
command=/s
time=1
buffer.time=1


;---------------------------------------------------------------------------

[command]
name="fwd"
command=F
time=1
buffer.time=1
[command]
name="back"
command=B
time=1
buffer.time=1
[command]
name="up"
command=U
time=1
buffer.time=1
[command]
name="down"
command=D
time=1
buffer.time=1

[command]
name="holdfwd";必コンド名
command=/$F
time=1
buffer.time=1
[command]
name="holdback";必コンド名
command=/$B
time=1
buffer.time=1
[command]
name="holdup";必コンド名
command=/$U
time=1
buffer.time=1
[command]
name="holddown";必コンド名
command=/$D
time=1
buffer.time=1

[Command]
name = "longjump"
command = ~D, $U
time = 11

[Command]
name = "!longjump"
command = ~10$D, $U
time = 20

;===========================================================================
[statedef -1]

[state -1]
type = varset
triggerall = var(59) != 1
triggerall = RoundState = [1,2]
triggerall = enemynear,life > 0
trigger1 = (Command = "AI0")||(Command = "AI1")||(Command = "AI2")||(Command = "AI3")||(Command = "AI4")
trigger2 = (Command = "AI5")||(Command = "AI6")||(Command = "AI7")||(Command = "AI8")||(Command = "AI9")
trigger3 = (Command = "AI10")||(Command = "AI11")||(Command = "AI12")||(Command = "AI13")||(Command = "AI14")
trigger4 = (Command = "AI15")||(Command = "AI16")||(Command = "AI17")||(Command = "AI18")||(Command = "AI19")
trigger5 = (Command = "AI20")
Trigger6 = NumHelper(30000) != 0
Trigger6 = Helper(30000),var(59)
ignorehitpause = 1
var(59)=1

[State -3]
type = VarSet
triggerall = var(59)    = 1
trigger1 = roundstate = [0,1]
trigger2   = roundstate  = 4
trigger3   = win
trigger4   = lose
trigger5  = drawgame
trigger6   = !alive
ignorehitpause = 1
var(59) = -1


[State -1]
type = VarSet
trigger1 = var(59)    = -1
trigger1 = roundstate = 2 && enemynear,life > 0
trigger1 = ctrl
ignorehitpause = 1
var(59) = 1


[State -3]
Type = Helper
Trigger1 = NumHelper(30000) = 0 && !AILEVEL
Trigger1 = RoundState = 2 && alive && StateNo = 0
Trigger1 = PrevStateNo = 5900 || PrevStateNo = [190,199]
StateNo = 30000
PosType = P1
Pos = 0, 0
KeyCtrl = 1
Ownpal = 1
ID = 30000
IgnoreHitPause = 1
SuperMoveTime = 9999
PauseMoveTime = 9999

[State -3]
type=changestate
trigger1= ishelper(30000)
trigger1= stateno!=30000
value=30000

;===========================================================================

[state -1,4010]
type=changestate
value=4010
triggerall=!AILEVEL
triggerall=!var(7)
triggerall=command="4010"
triggerall = power >= ifelse(!var(40), 2000, 1000)
triggerall=statetype!=a
trigger1=ctrl
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 430
trigger7 = movecontact



;---------------------------------------------------------------------------

[state -1,3000]
type=changestate
value=3000
triggerall=!AILEVEL
triggerall=command="3000"
triggerall = power >= ifelse(!var(40), 2000, 1000)
triggerall=p2bodydist x <= 30
triggerall=statetype!=a
trigger1=ctrl
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 430
trigger7 = movecontact

;---------------------------------------------------------------------------

[state -1,3100]
type=changestate
value=3100
triggerall=!AILEVEL
triggerall=!var(7)
triggerall=command="3100"
triggerall = power >= ifelse(!var(40), 2000, 1000)
triggerall=statetype!=a
trigger1=ctrl
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 430
trigger7 = movecontact


;===========================================================================


[state -1,3000]
type=changestate
value=3500
triggerall=!AILEVEL
triggerall=command="3500"
triggerall = power >= ifelse(!var(40), 1000, 0)
triggerall=p2bodydist x <= 30
triggerall=statetype!=a
trigger1=ctrl
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 430
trigger7 = movecontact

[state -1,3000]
type=changestate
value=3200
triggerall=!AILEVEL
triggerall=command="3200"
triggerall = power >= ifelse(!var(40), 1000, 0)
triggerall=p2bodydist x <= 30
triggerall=statetype!=a
trigger1=ctrl
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 430
trigger7 = movecontact

[state -1,3000]
type=changestate
value=3300
triggerall=!AILEVEL
triggerall=command="3300"
triggerall = power >= ifelse(!var(40), 1000, 0)
triggerall=statetype!=a
trigger1=ctrl
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 430
trigger7 = movecontact
;---------------------------------------------------------------------------
[state -1,1400]
type=changestate
value=1600
triggerall=!AILEVEL
triggerall = !var(40)
triggerall=command="1600" 
triggerall=statetype!=a
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 430
trigger7 = movecontact

[state -1,1400]
type=changestate
value=1610
triggerall=!AILEVEL
triggerall = !var(40)
triggerall=command="1610" 
triggerall=statetype!=a
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 430
trigger7 = movecontact

[state -1,1400]
type=changestate
value=21600
triggerall=!AILEVEL
triggerall=command="1600" || command="1610" 
triggerall=statetype!=a
triggerall = var(40) > 0
trigger1 = ctrl || stateno = 100


[state -1,1400]
type=changestate
value=21600
triggerall=!AILEVEL
triggerall=command="1600" || command="1610" 
triggerall=statetype!=a
triggerall = var(40) > 0
trigger1 = movecontact
trigger1 = stateno = [200,499]
trigger2 = stateno = 21100 && movecontact
trigger3 = stateno = 21200 && movecontact
trigger4 = stateno = 21300 && movecontact
trigger5 = stateno = 21511 && animelem = 21 ,>= 1


;------------------------------------------------

[state -1,1400]
type=changestate
value=1500
triggerall=!AILEVEL
triggerall = !var(40)
triggerall=command="1500" 
triggerall=p2bodydist x <= 30
triggerall=statetype!=a
trigger1 = ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 430
trigger7 = movecontact

[state -1,1400]
type=changestate
value=21500
triggerall=!AILEVEL
triggerall=command="1500" 
triggerall=statetype!=a
triggerall = var(40) > 0
trigger1 = ctrl || stateno = 100

[state -1,1400]
type=changestate
value=21500
triggerall=!AILEVEL
triggerall=command="1500" 
triggerall=statetype!=a
triggerall = var(40) > 0
trigger1 = movecontact
trigger1 = stateno = [200,499]
trigger2 = stateno = 21100 && movecontact
trigger3 = stateno = 21200 && movecontact
trigger4 = stateno = 21300 && movecontact
trigger5 = stateno = 21655 && movecontact || stateno = 21695
;--------------------------------------------------------------------------------


[state -1,1400]
type=changestate
value=1400
triggerall=!AILEVEL
triggerall = !var(40)
triggerall=command="1400"
triggerall = numprojid(1400) = 0
triggerall=statetype!=a
trigger1=ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 430
trigger7 = movecontact

[state -1,1410]
type=changestate
value=1410
triggerall=!AILEVEL
triggerall = !var(40)
triggerall=command="1410"
triggerall = numprojid(1400) = 0
triggerall=statetype!=a
trigger1=ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 430
trigger7 = movecontact

[state -1,1410]
type=changestate
value=21400
triggerall=!AILEVEL
triggerall = var(40)
triggerall=command="1400" || command="1410"
triggerall = numprojid(1400) = 0
triggerall=statetype!=a
trigger1=ctrl || stateno = 100


[state -1,1400]
type=changestate
value=21400
triggerall=!AILEVEL
triggerall=command="1400" || command="1410"
triggerall=statetype!=a
triggerall = var(40) > 0
trigger1 = movecontact
trigger1 = stateno = [200,499]
trigger2 = stateno = 21100 && movecontact
trigger3 = stateno = 21200 && movecontact
trigger4 = stateno = 21300 && movecontact
trigger5 = stateno = 21511 && animelem = 21 ,>= 1
trigger6 = stateno = 21655 && movecontact || stateno = 21695


;---------------------------------------------------------------------------

[state -1,6S]
type=changestate
value=1200
triggerall=!AILEVEL
triggerall = var(40) = 0
triggerall=command="1200"
triggerall=statetype!=a
trigger1=ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 430
trigger7 = movecontact


[state -1,6S]
type=changestate
value=1210
triggerall=!AILEVEL
triggerall = var(40) = 0
triggerall=command="1210"
triggerall=statetype!=a
trigger1=ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 430
trigger7 = movecontact

[state -1,1310]
type=changestate
value=21200
triggerall=!AILEVEL
triggerall=command="1200" || command="1210"
triggerall=statetype!=a
triggerall = var(40) > 0
trigger1=ctrl || stateno = 100

[state -1,1300]
type=changestate
value=21200
triggerall=!AILEVEL
triggerall=command="1200" || command="1210"
triggerall=statetype!=a
triggerall = var(40) > 0
trigger1 = movecontact
trigger1 = stateno = [200,499]
trigger2 = stateno = 21100 && movecontact
trigger3 = stateno = 21300 && movecontact
trigger4 = stateno = 21511 && animelem = 21 ,>= 1
trigger5 = stateno = 21655 && movecontact || stateno = 21695
;---------------------------------------------------------------------------

[state -1,1300]
type=changestate
value=1300
triggerall=!AILEVEL
triggerall = var(40) = 0
triggerall=command="1300"
triggerall=statetype!=a
trigger1=ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 430
trigger7 = movecontact

[state -1,1310]
type=changestate
value=1310
triggerall=!AILEVEL
triggerall = var(40) = 0
triggerall=command="1310"
triggerall=statetype!=a
trigger1=ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 430
trigger7 = movecontact

[state -1,1310]
type=changestate
value=21300
triggerall=!AILEVEL
triggerall=command="1300" || command="1310"
triggerall=statetype!=a
triggerall = var(40) > 0
trigger1=ctrl || stateno = 100

[state -1,1300]
type=changestate
value=21300
triggerall=!AILEVEL
triggerall=command="1300" || command="1310"
triggerall=statetype!=a
triggerall = var(40) > 0
trigger1 = movecontact
trigger1 = stateno = [200,499]
trigger2 = stateno = 21100 && movecontact
trigger3 = stateno = 21200 && movecontact
trigger4 = stateno = 21511 && animelem = 21 ,>= 1
trigger5 = stateno = 21655 && movecontact || stateno = 21695

;---------------------------------------------------------------------------
[state -1,1100]
type=changestate
value=1105
triggerall=!AILEVEL
triggerall = !var(40)
triggerall=command="1105"
triggerall=statetype!=a
trigger1=ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 430
trigger7 = movecontact


[state -1,1100]
type=changestate
value=1100
triggerall=!AILEVEL
triggerall = !var(40)
triggerall=command="1100"
triggerall=statetype!=a
trigger1=ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 430
trigger7 = movecontact

[state -1,1100]
type=changestate
value=21100
triggerall=!AILEVEL
triggerall = var(40) > 0
triggerall=command="1100" || command="1105"
triggerall=statetype!=a
trigger1=ctrl || stateno = 100


[state -1,1100]
type=changestate
value=21100
triggerall=!AILEVEL
triggerall=command="1100" || command="1105"
triggerall=statetype!=a
triggerall = var(40) > 0
trigger1 = movecontact
trigger1 = stateno = [200,499]
trigger2 = stateno = 21200 && movecontact
trigger3 = stateno = 21300 && movecontact
trigger4 = stateno = 21511 && animelem = 21 ,>= 1
trigger5 = stateno = 21655 && movecontact || stateno = 21695

;---------------------------------------------------------------------------

[state -1,1000]
type=changestate
value=1050
triggerall=!AILEVEL
triggerall = !var(40)
triggerall=command="1050"
triggerall = numhelper(1010) = 0
triggerall=statetype!=a
trigger1=ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 430
trigger7 = movecontact


[state -1,1000]
type=changestate
value=1000
triggerall=!AILEVEL
triggerall = !var(40)
triggerall=command="1000"
triggerall = numhelper(1010) = 0
triggerall=statetype!=a
trigger1=ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 430
trigger7 = movecontact

[state -1,1000]
type = changestate
value = 21000
triggerall = !AILEVEL
triggerall = command = "1000" || command="1050"
triggerall = numhelper(1010) = 0
triggerall = statetype != a
triggerall = var(40) > 0
trigger1=ctrl || stateno = 100

[state -1,1000]
type = changestate
value = 21000
triggerall = !AILEVEL
triggerall = command = "1000" || command="1050"
triggerall = numhelper(1010) = 0
triggerall = statetype != a
triggerall = var(40) > 0
trigger1 = movecontact
trigger1 = stateno = [200,499]
trigger2 = stateno = 21100 && movecontact
trigger3 = stateno = 21200 && movecontact
trigger4 = stateno = 21300 && movecontact
trigger5 = stateno = 21511 && animelem = 21 ,>= 1
trigger6 = stateno = 21655 && movecontact || stateno = 21695



;===========================================================================

[state -1,ッシュ]
type=changestate
value=100
triggerall=!AILEVEL
trigger1=command="FF"
trigger1=statetype!=a
trigger1=ctrl
trigger1=stateno!=100

[state -1,逃げるんだよぉッ]
type=changestate
value=105
triggerall=!AILEVEL
trigger1=command="BB"
trigger1=statetype!=a
trigger1=ctrl
trigger1=stateno!=105

;===========================================================================

[state -1,通常投げ]
type=changestate
value=800
triggerall=!AILEVEL
triggerall=command = "y" || command = "b"
triggerall=command="holdfwd"||command="holdback"
triggerall=command!="holddown"
triggerall=statetype!=a
triggerall=stateno!=100
triggerall=enemynear,statetype!=a
triggerall=enemynear,movetype!=h
triggerall=p2bodydist x<= 15
trigger1=ctrl

;---------------------------------------------------------------------------
[State -1]
Type = ChangeState
Value = 981
triggerall=!AILEVEL
TriggerAll = Command = "a" && Command = "y" 
TriggerAll = StateType != A
triggerall = power >= 2000
triggerall = var(40) <= 0
triggerall = movecontact
trigger1 = stateno = [200,499]


[State -1]
Type = ChangeState
Value = 980
triggerall=!AILEVEL
TriggerAll = Command = "a" && Command = "y" 
TriggerAll = StateType != A
triggerall = power >= 1000
triggerall = var(40) <= 0
Trigger1 = Ctrl || stateno = 100


[state -1,ガキャン]
type=changestate
value=301
triggerall=!AILEVEL
triggerall=command = "y" && command = "b"
triggerall=statetype=a
trigger1=ctrl


[state -1,ガキャン]
type=changestate
value=990
triggerall=!AILEVEL
triggerall=command = "y" && command = "b"
triggerall=statetype!=a
triggerall = power >= 1000
trigger1 = stateno = [150,155]

[state -1,ガキャン]
type=changestate
value=300
triggerall=!AILEVEL
triggerall=command = "y" && command = "b"
triggerall=statetype!=a
trigger1=ctrl || stateno = 100
;---------------------------------------------------------------------------
[state -1,回り込み]
type=changestate
value=901
triggerall=!AILEVEL
triggerall=command="recovery"
triggerall=command="holdback"
triggerall=statetype!=a
trigger1=ctrl || stateno = 100
trigger2 = power >= 1000
trigger2=stateno=[150,155]
;===========================================================================

[state -1,回り込み]
type=changestate
value=900
triggerall=!AILEVEL
triggerall=command="recovery"
triggerall=command!= "holdback"
triggerall=statetype!=a
trigger1=ctrl || stateno = 100
trigger2 = power >= 1000
trigger2=stateno=[150,155]
;===========================================================================

[State -1, Safe Fall]
type = ChangeState
value = 5200
triggerall = !AILEVEL
triggerall = command = "recovery"
triggerall = alive
triggerall = CanRecover
trigger1 = stateno = 5050
trigger1 = pos y >=-40
trigger1 = vel y > 0

;---------------------------------------------------------------------------

[state -1,6強]
type=changestate
value=230
triggerall=!AILEVEL
triggerall=command="a"
triggerall=command!="holddown"
triggerall=command="holdfwd"
triggerall=statetype!=A
trigger1=ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 600
trigger7 = movecontact || time = [5,03]
trigger8 = stateno = 610
trigger8 = movecontact || time = [7,14]

[state -1,6強]
type=changestate
value=630
triggerall=!AILEVEL
triggerall=command="a"
triggerall=command!="holddown"
triggerall=command="holdfwd"
triggerall=statetype=A
trigger1=ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]
trigger7 = stateno = 600
trigger7 = movecontact || time = [5,03]
trigger8 = stateno = 610
trigger8 = movecontact || time = [7,14]


[state -1,3中]
type=changestate
value=430
triggerall=!AILEVEL
triggerall=command="a"
triggerall=command="holdfwd"
triggerall=command="holddown"
triggerall=statetype!=a
trigger1=ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 210 || stateno = 211
trigger3 = movecontact || time = [3,11]
trigger4 = stateno = 240
trigger4 = movecontact || time = [4,10]
trigger5 = stateno = 400
trigger5 = movecontact || time = [5,8]
trigger6 = stateno = 420
trigger6 = movecontact || time = [11,15]

;----------------------------------------------------------------------------

[state -1,立弱]
type=changestate
value=200
triggerall=!AILEVEL
triggerall=command="x"
triggerall=command!="holddown"
triggerall=statetype!=a
trigger1=ctrl || stateno = 100
trigger2 = stateno = 200
trigger2 = movecontact || time = [5,9]
trigger3 = stateno = 400
trigger3 = movecontact || time = [5,8]


[state -1,立中]
type=changestate
value=210
triggerall=!AILEVEL
triggerall=command="y"
triggerall=command!="holddown"
triggerall = p2bodydist x > 25
triggerall=statetype!=a
trigger1=ctrl || stateno = 100


[state -1,立中]
type=changestate
value = 211
triggerall = !AILEVEL
triggerall = command!="holddown"
triggerall = command="y"
triggerall = p2bodydist x <= 25
triggerall = statetype!=a
trigger1 = ctrl || stateno = 100

[state -1,立強]
type=changestate
value=220
triggerall=!AILEVEL
triggerall=command="b"
triggerall = command!="holddown"
triggerall=statetype!=a
trigger1=ctrl || stateno = 100

[state -1,立強]
type=changestate
value=240
triggerall=!AILEVEL
triggerall=command="a"
triggerall = command!="holddown"
triggerall=statetype!=a
trigger1=ctrl || stateno = 100
trigger2 = stateno = 240
trigger2 = movecontact || time = [4,10]
trigger3 = stateno = 410
trigger3 = movecontact || time = [4,9]
;---------------------------------------------------------------------------


[state -1,2弱]
type=changestate
value=400
triggerall=!AILEVEL
triggerall=command="x"
triggerall=command="holddown"
triggerall=statetype!=a
trigger1=ctrl || stateno = 100
trigger2 = stateno = 400
trigger2 = movecontact || time = [5,8]
trigger3 = stateno = 410
trigger3 = movecontact || time = [4,9]

[state -1,2中]
type=changestate
value=410
triggerall=!AILEVEL
triggerall=command="a"
triggerall=command="holddown"
triggerall=statetype!=a
trigger1=ctrl || stateno = 100
trigger2 = stateno = 240
trigger2 = movecontact || time = [4,10]

[state -1,2強]
type=changestate
value=420
triggerall=!AILEVEL
triggerall=command="y"
triggerall=command="holddown"
triggerall=statetype!=a
trigger1=ctrl || stateno = 100

[state -1,2S]
type=changestate
value=500
triggerall=!AILEVEL
triggerall=command="b"
triggerall=command="holddown"
triggerall=statetype!=a
trigger1=ctrl || stateno = 100


;---------------------------------------------------------------------------

[state -1,J弱]
type=changestate
value=600
triggerall=!AILEVEL
triggerall=command="x"
triggerall=statetype=a
trigger1=ctrl

[state -1,J中]
type=changestate
value=610
triggerall=!AILEVEL
triggerall=command="y"
triggerall=statetype=a
trigger1=ctrl

[state -1,J強]
type=changestate
value=620
triggerall=!AILEVEL
triggerall=command="a"
triggerall=statetype=a
trigger1=ctrl

[state -1,JS]
type=changestate
value=700
triggerall=!AILEVEL
triggerall=command="b"
triggerall=statetype=a
trigger1=ctrl

;---------------------------------------------------------------------------

[state -1,挑発]
type=changestate
value=196
triggerall=!AILEVEL
triggerall=command="start"
triggerall=statetype!=a
trigger1=ctrl

;----------------------------------------------------------------------------
[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 58
value = (ifelse(AILEVEL = 7,3,1)+ifelse(AILEVEL = 8,9,0))

[state -1];ガ?ド
type = ChangeState
value = 120
triggerall = AILEVEL > 5
triggerall = alive
triggerall = random <= (AILEVEL*6)*var(58)
trigger1   = ctrl || stateno = 20
trigger1   = enemynear,movetype    = A
trigger1   = p2bodydist x >= 0
trigger1   = inguarddist
trigger2   = ctrl || stateno = 20
trigger2   = enemynear,movetype = A && enemy,numhelper > 0 || enemy,numproj > 0
trigger2   = inguarddist
trigger3   = ctrl || stateno = 20
trigger3   = enemynear,movetype = A
trigger3   = p2bodydist x  < 0
trigger4   = stateno       = 100
trigger4   = enemynear,movetype    = A
trigger4   = inguarddist
trigger5   = stateno       = 100
trigger5   = enemynear,movetype = A && enemy,numhelper > 0 || enemy,numproj > 0
trigger5   = inguarddist

;-------------------------------------------------------------------
[state -1]
type = changestate
value = 211
triggerall = var(40) > 0
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = p2bodydist x <= 25
trigger1 = ctrl || stateno = 104

[state -1]
type = changestate
value = 3100
triggerall = power >= 1000
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(40) = [1,400]
triggerall = enemynear,statetype = A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = p2bodydist x <= 60
trigger1 = stateno = 21655 && animtime = 0

[state -1]
type = changestate
value = 3300
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(40) = [1,400]
triggerall = enemynear,statetype = A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = p2bodydist x <= 60
trigger1 = stateno = 21655 && animtime = 0

[state -1]
type = changestate
value = 21600
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = var(40) > 0
trigger1 = stateno = 210 && movehit
trigger2 = stateno = 211 && movehit
trigger3 = stateno = 430 && movehit
trigger4 = stateno = 21300 && movehit
trigger4 = animelem = 8 ,>= 1 && animelem = 8 ,<= 4

[state -1]
type = changestate
value = 21300
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = var(40) > 400
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype = H
trigger1 = stateno = 21695
trigger1 = p2bodydist x <= 30

;----------------------------------------------------------------------------
[state -1]
type= changestate
value = 1210
triggerall = var(40) = 0
triggerall = AILEVEL > 6
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype = A && enemynear,movetype != H
triggerall = p2bodydist x = [-5,30]
triggerall = random <= (AILEVEL*6)*var(58)
triggerall = enemynear,facing != facing
trigger1 = ctrl
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [120,149])

[state -1]
type= changestate
value = 1210
triggerall = var(40) = 0
triggerall = AILEVEL > 6
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = A && enemynear,statetype != L
triggerall = enemynear,movetype = A && enemynear,movetype != H
triggerall = p2bodydist x = [-5,40+floor(5*(enemynear,vel x) + floor(5*vel x))]
triggerall = random <= (AILEVEL*8)*var(58)
triggerall = enemynear,facing != facing
triggerall = enemynear,vel x >= 0
trigger1 = ctrl
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [120,149])


[state -1]
type= changestate
value = 1500
triggerall = var(40) = 0
triggerall = AILEVEL > 6
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype = A && enemynear,movetype != H
triggerall = p2bodydist x = [-15,30]
triggerall = random <= (AILEVEL*6)*var(58)
triggerall = enemynear,facing != facing
trigger1 = ctrl
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [120,149])

[state -1]
type= changestate
value = 21500
triggerall = var(40) > 0
triggerall = AILEVEL > 6
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype = A && enemynear,movetype != H
triggerall = p2bodydist x = [-15,30]
triggerall = random <= (AILEVEL*6)*var(58)
triggerall = enemynear,facing != facing
trigger1 = ctrl
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [120,149])


[state -1]
type = changestate
value = 211
triggerall = AILEVEL > 6
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype = A
triggerall = p2bodydist x = [-5,25+floor(5*(enemynear,vel x) + floor(5*vel x))]
triggerall = random <= (AILEVEL*9)*var(58)
trigger1 = ctrl || stateno = 52
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [140,149])

[state -1]
type = changestate
value = 211
triggerall = AILEVEL > 6
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype = A
triggerall = p2bodydist x = [-5,25+floor(5*(enemynear,vel x) + floor(5*vel x))]
triggerall = enemynear,facing = facing
triggerall = random <= (AILEVEL*9)*var(58)
trigger1 = ctrl || stateno = 52
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [140,149])

[state -1]
type = changestate
value = 211
triggerall = AILEVEL > 6
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
triggerall = p2bodydist x = [-5,25+floor(5*(enemynear,vel x) + floor(5*vel x))]
triggerall = enemynear,movetype = A
triggerall = enemynear,stateno >= 200
triggerall = enemynear,animtime >= -5
triggerall = random <= (AILEVEL*9)*var(58)
trigger1 = ctrl || stateno = 52
trigger2 = stateno = 100
trigger3 =(stateno = [120,149])

[state -1]
type = changestate
value = 430
triggerall = AILEVEL > 6
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype = A
triggerall = p2bodydist x = [-5,30+floor(5*(enemynear,vel x) + floor(5*vel x))]
triggerall = random <= (AILEVEL*9)*var(58)
trigger1 = ctrl || stateno = 52
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [140,149])

[state -1]
type = changestate
value = 430
triggerall = AILEVEL > 6
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype = A
triggerall = p2bodydist x = [-5,30+floor(5*(enemynear,vel x) + floor(5*vel x))]
triggerall = enemynear,facing = facing
triggerall = random <= (AILEVEL*9)*var(58)
trigger1 = ctrl || stateno = 52
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [140,149])

[state -1]
type = changestate
value = 410
triggerall = AILEVEL > 6
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
triggerall = p2bodydist x = [-5,30+floor(5*(enemynear,vel x) + floor(5*vel x))]
triggerall = enemynear,movetype = A
triggerall = enemynear,stateno >= 200
triggerall = enemynear,animtime >= -5
triggerall = random <= (AILEVEL*9)*var(58)
trigger1 = ctrl || stateno = 52
trigger2 = stateno = 100
trigger3 =(stateno = [120,149])

[state -1]
type= changestate
value = 3200
triggerall = power >= ifelse(!var(40), 1000, 0)
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype = A && enemynear,movetype != H
triggerall = p2bodydist x = [-15,30]
triggerall = random <= (AILEVEL*3)*var(58)
triggerall = enemynear,facing != facing
trigger1 = ctrl
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [120,149])

[state -1]
type= changestate
value = 3000
triggerall = power >= ifelse(!var(40), 2000, 1000)
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = A && enemynear,statetype != L
triggerall = enemynear,movetype = A && enemynear,movetype != H
triggerall = enemynear,vel y > 0
triggerall = enemynear,pos y >= -60
triggerall = enemynear,vel x >= 0
triggerall = p2bodydist x = [0,30]
triggerall = random <= (AILEVEL*3)*var(58)
triggerall = enemynear,facing != facing
trigger1 = ctrl
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [120,149])


[state -1]
type= changestate
value = 3500
triggerall = power >= ifelse(!var(40), 1000, 0)
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = A && enemynear,statetype != L
triggerall = enemynear,movetype = A && enemynear,movetype != H
triggerall = enemynear,vel y > 0
triggerall = enemynear,pos y >= -60
triggerall = enemynear,vel x >= 0
triggerall = p2bodydist x = [0,30]
triggerall = random <= (AILEVEL*3)*var(58)
triggerall = enemynear,facing != facing
trigger1 = ctrl
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [120,149])

[state -1]
type= changestate
value = 4010
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = power >= ifelse(!var(40), 2000, 1000)
triggerall = statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype = A && enemynear,movetype != H
triggerall = p2bodydist x >= 150
triggerall = random <= (AILEVEL*2)*var(58)
trigger1 = ctrl
trigger2 = AILEVEL = 8
trigger2 =(stateno = [140,149])

[state -1]
type = changestate
value = 610
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype = A && enemynear,movetype != H
triggerall = Vel Y >= 0
triggerall = p2bodydist x = [-5,60+floor(5*(enemynear,vel x) + floor(5*vel x))]
triggerall = random <=(AILEVEL*9)*var(58)
trigger1 = ctrl
trigger2 = AILEVEL = 8
trigger2 =(stateno = [140,149])

[state -1]
type = changestate
value = 620
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = enemynear,statetype = A && enemynear,statetype != L
triggerall = enemynear,movetype = A && enemynear,movetype != H
triggerall = p2bodydist x = [-5,60+floor(5*(enemynear,vel x) + floor(5*vel x))]
triggerall = random <=(AILEVEL*9)*var(58)
trigger1 = ctrl
trigger2 = AILEVEL = 8
trigger2 =(stateno = [140,149])
;----------------------------------------------------------------------------
[state -1]
type = changestate
value = 211
triggerall = AILEVEL > 6
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype != A
triggerall = p2bodydist x = [-5,25]
triggerall = random <= (AILEVEL*9)*var(58)
trigger1 = ctrl || stateno = 52
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [140,149])

[state -1]
type = changestate
value = 211
triggerall = AILEVEL > 6
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype != A
triggerall = p2bodydist x = [-5,25]
triggerall = enemynear,facing = facing
triggerall = random <= (AILEVEL*9)*var(58)
trigger1 = ctrl || stateno = 52
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [140,149])

[state -1]
type = changestate
value = 430
triggerall = AILEVEL > 6
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype != A
triggerall = p2bodydist x = [-5,30]
triggerall = random <= (AILEVEL*9)*var(58)
trigger1 = ctrl || stateno = 52
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [140,149])

[state -1]
type = changestate
value = 430
triggerall = AILEVEL > 6
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype != A
triggerall = p2bodydist x = [-5,30]
triggerall = enemynear,facing = facing
triggerall = random <= (AILEVEL*9)*var(58)
trigger1 = ctrl || stateno = 52
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [140,149])


[state -1]
type = changestate
value = 400
triggerall = AILEVEL = 8
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A
triggerall = p2bodydist x = [-5,40]
triggerall = enemynear,stateno = 5120
triggerall = enemynear,animtime <= -2 && enemynear,animtime >= -3
triggerall = random <= (AILEVEL*5)*var(58)
trigger1 = ctrl
trigger2 = (stateno = 100)
trigger3 = (stateno = [140,149])

[state -1]
type= changestate
value = 1500
triggerall = var(40) = 0
triggerall = AILEVEL > 6
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype != A && enemynear,movetype != H
triggerall = p2bodydist x = [-15,30]
triggerall = random <= (AILEVEL*6)*var(58)
triggerall = enemynear,facing != facing
trigger1 = ctrl
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [140,149])

[state -1]
type= changestate
value = 21500
triggerall = var(40) > 0
triggerall = AILEVEL > 6
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype != A && enemynear,movetype != H
triggerall = p2bodydist x = [-15,30]
triggerall = random <= (AILEVEL*6)*var(58)
triggerall = enemynear,facing != facing
trigger1 = ctrl
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [140,149])

[state -1]
type= changestate
value = 3500
triggerall = power >= ifelse(!var(40), 1000, 0)
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype != A && enemynear,movetype != H
triggerall = p2bodydist x = [0,30]
triggerall = random <= (AILEVEL*3)*var(58)
triggerall = enemynear,facing != facing
trigger1 = ctrl
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [140,149])

[state -1]
type= changestate
value = 3200
triggerall = power >= ifelse(!var(40), 1000, 0)
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype != A && enemynear,movetype != H
triggerall = p2bodydist x = [-15,30]
triggerall = random <= (AILEVEL*3)*var(58)
triggerall = enemynear,facing != facing
trigger1 = ctrl
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [140,149])

[state -1]
type= changestate
value = 200
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = A && enemynear,statetype != L
triggerall = enemynear,movetype != A && enemynear,movetype != H
triggerall = p2bodydist x = [0,30]
triggerall = random <= (AILEVEL*3)*var(58)
triggerall = enemynear,facing != facing
triggerall = enemynear,vel y > 0
triggerall = enemynear,pos y >= -50
triggerall = enemynear,vel x >= 0
trigger1 = ctrl
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [140,149])
 

[state -1]
type= changestate
value = 420
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = A && enemynear,statetype != L
triggerall = enemynear,movetype != A && enemynear,movetype != H
triggerall = p2bodydist x = [31,50]
triggerall = random <= (AILEVEL*3)*var(58)
triggerall = enemynear,facing != facing
triggerall = enemynear,vel y > 0
triggerall = enemynear,pos y >= -70
triggerall = enemynear,vel x >= 0
trigger1 = ctrl
trigger2 = AILEVEL >= 6
trigger2 = stateno = 100
trigger3 = AILEVEL = 8
trigger3 =(stateno = [140,149])
 
[state -1]
type= changestate
value = 210
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype != A && enemynear,movetype != H
triggerall = p2bodydist x = [70,100]
triggerall = random <= (AILEVEL*2)*var(58)
triggerall = enemynear,facing != facing
trigger1 = ctrl
trigger2 = AILEVEL = 8
trigger2 =(stateno = [140,149])
 
[state -1]
type= changestate
value = 430
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype != A && enemynear,movetype != H
triggerall = p2bodydist x = [60,100]
triggerall = random <= (AILEVEL*2)*var(58)
triggerall = enemynear,facing != facing
trigger1 = ctrl
trigger2 = AILEVEL = 8
trigger2 =(stateno = [140,149])

[state -1]
type= changestate
value = 1000
triggerall = var(40) = 0
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = L
triggerall = enemynear,stateno != 5120
triggerall = p2bodydist x = [51,150]
triggerall = numhelper(1010) = 0
triggerall = random <= (AILEVEL*5)*var(58)
trigger1 = ctrl
trigger2 = AILEVEL = 8
trigger2 =(stateno = [140,149])

[state -1]
type= changestate
value = 1050
triggerall = var(40) = 0
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = L
triggerall = enemynear,stateno != 5120
triggerall = p2bodydist x = [151,250]
triggerall = numhelper(1010) = 0
triggerall = random <= (AILEVEL*5)*var(58)
trigger1 = ctrl
trigger2 = AILEVEL = 8
trigger2 =(stateno = [140,149])

[state -1]
type= changestate
value = 21000
triggerall = var(40) > 0
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = L
triggerall = enemynear,stateno != 5120
triggerall = p2bodydist x = [51,150]
triggerall = numhelper(1010) = 0
triggerall = random <= (AILEVEL*5)*var(58)
trigger1 = ctrl
trigger2 = AILEVEL = 8
trigger2 =(stateno = [140,149])

[state -1]
type= changestate
value = 1610
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype != A && enemynear,movetype != H
triggerall = enemynear,numproj = 0
triggerall = p2bodydist x = [151,200]
triggerall = random <= (AILEVEL*1)*var(58)
trigger1 = ctrl
trigger2 = AILEVEL = 8
trigger2 =(stateno = [140,149])

[state -1]
type= changestate
value = 1600
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype != A && enemynear,movetype != H
triggerall = enemynear,numproj = 0
triggerall = p2bodydist x = [100,150]
triggerall = random <= (AILEVEL*1)*var(58)
trigger1 = ctrl
trigger2 = AILEVEL = 8
trigger2 =(stateno = [140,149])
 
[state -1]
type= changestate
value = 1410
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype != A && enemynear,movetype != H
triggerall = enemynear,numproj = 0
triggerall = p2bodydist x >= 150
triggerall = numprojid(1400) = 0
triggerall = random <= (AILEVEL*3)*var(58)
trigger1 = ctrl
trigger2 = AILEVEL = 8
trigger2 =(stateno = [140,149])


[state -1]
type = changestate
value = 700
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype != A && enemynear,movetype != H
triggerall = Vel Y >= 0
triggerall = p2bodydist x = [31,80]
triggerall = random <=(AILEVEL*9)*var(58)
trigger1 = ctrl
trigger2 = AILEVEL = 8
trigger2 =(stateno = [140,149])

[state -1]
type = changestate
value = 610
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype != A && enemynear,movetype != H
triggerall = Vel Y >= 0
triggerall = p2bodydist x = [-5,60]
triggerall = random <=(AILEVEL*9)*var(58)
trigger1 = ctrl
trigger2 = AILEVEL = 8
trigger2 =(stateno = [140,149])

[state -1]
type = changestate
value = 620
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = enemynear,statetype = A && enemynear,statetype != L
triggerall = enemynear,movetype != A && enemynear,movetype != H
triggerall = p2bodydist x = [-5,60]
triggerall = random <=(AILEVEL*9)*var(58)
trigger1 = ctrl
trigger2 = AILEVEL = 8
trigger2 =(stateno = [140,149])

;---------------------------------------------------------------------------------------

[state -1]
type = changestate
value = 400
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = random <=(AILEVEL*9)*var(58)
trigger1 = stateno = 410 && movecontact

[state -1]
type = changestate
value = 430
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = random <=(AILEVEL*7)*var(58)
trigger1 = stateno = 400 && movecontact

[state -1]
type = changestate
value = 3000
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = power >= ifelse(!var(40), 2000, 1000)
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = p2bodydist x <= 25
triggerall = random <=(AILEVEL*5)*var(58)
trigger1 = stateno = 400 && movehit

[state -1]
type = changestate
value = 3500
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = power >= ifelse(!var(40), 1000, 0)
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = p2bodydist x <= 25
triggerall = random <=(AILEVEL*5)*var(58)
trigger1 = stateno = 400 && movehit

[state -1]
type = changestate
value = 3200
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = power >= ifelse(!var(40), 1000, 0)
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = p2bodydist x <= 25
triggerall = random <=(AILEVEL*5)*var(58)
trigger1 = stateno = 400 && movehit

[state -1]
type = changestate
value = 981
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = var(40) = 0
triggerall = power >= 2000
triggerall = random <= (AILEVEL*5)*var(58)
trigger1 = stateno = 210 && movehit
trigger2 = stateno = 211 && movehit
trigger3 = stateno = 430 && movehit 

[state -1]
type = changestate
value = 1600
triggerall = var(40) = 0
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = random <=(AILEVEL*9)*var(58)
trigger1 = stateno = 210 && movehit
trigger2 = stateno = 211 && movehit

[state -1]
type = changestate
value = 1310
triggerall = var(40) = 0
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != L
triggerall = random <=(AILEVEL*9)*var(58)
trigger1 = stateno = 420 && movecontact

[state -1]
type = changestate
value = 1100
triggerall = var(40) = 0
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = random <=(AILEVEL*5)*var(58)
trigger1 = stateno = 430 && movehit

[state -1]
type = changestate
value = 1105
triggerall = var(40) = 0
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = random <=(AILEVEL*5)*var(58)
trigger1 = stateno = 430 && movehit

[state -1]
type = changestate
value = 1300
triggerall = var(40) = 0
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = random <=(AILEVEL*5)*var(58)
trigger1 = stateno = 210 && movecontact
trigger2 = stateno = 211 && movecontact
trigger3 = stateno = 430 && movecontact

[state -1]
type = changestate
value = 3300
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = power >= ifelse(!var(40), 1000, 0)
triggerall = random <=(AILEVEL*5)*var(58)
trigger1 = stateno = 210 && movehit 
trigger2 = stateno = 211 && movehit 
trigger3 = stateno = 430 && movehit 

[state -1]
type = changestate
value = 1210
triggerall = var(40) = 0
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype = A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = random <=(AILEVEL*8)*var(58)
trigger1 = stateno = 200 && movehit

[state -1]
type = changestate
value = 630
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = enemynear,statetype = A && enemynear,statetype != L
triggerall = enemynear,movetype = H
triggerall = random <=(AILEVEL*5)*var(58)
trigger1 = stateno = 230 && movehit 

 ;---------------------------------------------------------------------

;Run Forward
[State -1]
type = ChangeState
value = 20
triggerall = roundstate = 2
triggerall = AILEVEL
triggerall = random <= (AILEVEL*5)*var(58)
trigger1 = enemynear,statetype = L
trigger1 = p2bodydist x < 20
trigger1 = statetype != A
trigger1 = ctrl


[State -3, RUN]
type = ChangeState
value = 100
triggerall = AILEVEL
triggerall = RoundState = 2  && Alive
triggerall = statetype != A
triggerall = !inguarddist
triggerall = ctrl || (stateno = [120,149])
trigger1 = p2bodydist x >= 240
trigger1 = Random <= (AILEVEL*6)*var(58)
trigger2 = p2bodydist x = [120,240]
trigger2 = Random <= (AILEVEL*6)*var(58)
trigger3 = p2bodydist x = [60,120]
trigger3 = Random <= (AILEVEL*5)*var(58)
trigger4 = enemynear,stateno = 1611
trigger4 = Random <= (AILEVEL*8)*var(58)

[State -3,d]
type = ChangeState
value = 100
triggerall = AILEVEL
triggerall = roundstate = 2  && Alive
triggerall = statetype != A
triggerall = frontedgebodydist >= 90
triggerall = enemynear,movetype != A
Triggerall = EnemyNear,StateType != L
triggerall = ctrl
triggerall = prevstateno != 100
triggerall = prevstateno != 101
triggerall = prevstateno != 102
triggerall = !inguarddist
trigger1 = p2bodydist x = [240,290]
trigger1 = random <= (AILEVEL*10)*var(58)
trigger2 = p2bodydist x = [120,240]
trigger2 = random <= (AILEVEL*6)*var(58)
trigger3 = p2bodydist x > 270
trigger3 = random <= (AILEVEL*6)*var(58)
trigger4 = enemynear,statetype = A && enemynear,movetype = H
trigger4 = p2bodydist x > 120
trigger4 = random <= (AILEVEL*9)*var(58)

;バックステップ
[State -3,bs]
Type = ChangeState
value = 105
triggerall = AILEVEL 
triggerall = roundstate = 2  && Alive
triggerall = statetype != A
triggerall = enemynear,movetype != A
triggerall = enemynear,movetype != H
triggerall = stateno != 104
triggerall = prevstateno != 104
triggerall = ctrl || stateno = 20 || stateno = 21
triggerall = backedgedist > 40
trigger1 = enemynear,statetype != A
trigger1 = enemynear,statetype != L
trigger1 = p2bodydist x <= 90
trigger1 = !numtarget
trigger1 = random <= (AILEVEL*1)*var(58)


;--------------------------------------------------------------------------

[State -3, FRoll]
type = ChangeState
value = 900
triggerall = AILEVEL
triggerall = RoundState = 2 && enemynear,life > 0
triggerall = Random <= (AILEVEL*6)*var(58)
triggerall = statetype != A
triggerall = enemynear,MoveType != H
triggerall = InGuardDist
triggerall = ctrl || (stateno = [20,22]) || (stateno = [100,101]) || stateno = 115 || (stateno = [120,149])
trigger1 = p2bodydist X >= 0
trigger1 =Enemy,Numproj != 0

;ガ?ドキャンセル前?
[State -3, GCFRoll]
type = ChangeState
value = 900
triggerall = AILEVEL
triggerall = RoundState = 2
triggerall = Power >= 1000
triggerall = Random <= (AILEVEL*1)*var(58)
triggerall = StateType != A
triggerall = stateno = 150 || stateno = 152
trigger1 = p2bodydist X = [0,50]
trigger1 = enemynear,StateNo >= 200
trigger1 = enemynear,statetype != A
trigger1 = enemynear,MoveType = A
trigger1 = enemynear,AnimTime <= -35

[State -1]
type = ChangeState
value = 901
triggerall = roundstate = 2
triggerall = AILEVEL = 8
triggerall = random <= (AILEVEL*5)*var(58)
triggerall = statetype != A
trigger1 = p2bodydist x <= 50
trigger1 = enemynear,movetype = A
trigger1 = ctrl

[state -1]
type = changestate
value = 901
triggerall = AILEVEL
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear,statetype != A && enemynear,statetype != L
triggerall = p2bodydist x <= 0
triggerall = random <= (AILEVEL*5)*var(58)
triggerall = enemynear,facing = facing
trigger1 = ctrl


[State -1, Taunt]
type = ChangeState
value = 5200
triggerall = AILEVEL
triggerall = RoundState = 2
triggerall = alive
triggerall = CanRecover
triggerall = backedgedist >= 40
trigger1 = random <= (AILEVEL*6)*var(58)
trigger1 = stateno = 5050
trigger1 = pos y >=-40
trigger1 = vel y > 0


[State -1,]
type = ChangeState
value = 950
triggerall = roundstate = 2
triggerall = AILEVEL
triggerall = p2bodydist x = [100,200]
triggerall = statetype != A
triggerall = enemynear,statetype != L
trigger1 = enemynear,movetype != A
trigger1 = random <= (AILEVEL*3)*var(58)
trigger1 = ctrl


[State -1,]
type = ChangeState
value = 950
triggerall = roundstate = 2
triggerall = AILEVEL
triggerall = p2bodydist x = [100,200]
triggerall = statetype != A
triggerall = enemynear,statetype != L
trigger1 = enemynear,movetype != A
trigger1 = random <= (AILEVEL*1)*var(58)
trigger1 = stateno = 100

