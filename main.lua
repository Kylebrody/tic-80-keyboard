-- version: 0.1
-- script:  lua
tempo=150
color=15
id=01

xArray={40,45,50,55,60,65,70,75,80,85,
90,95,100,105,110,115,120,125,130,135,
140,145,150,155,160,165,170,
}

yArray={22,28,32,38,42,48,52,
58,62,68,72,78,82,88,92,98,102,108,
112,118,122,128,132
}
scaleArray={10,11,12,13,
14,15,16,17,18,19,20,21,22,23,24,25,
26,27,28,29,30,31,32,33,34,35,36,37,
38,39,40,41,42,43,44,45,46,47,48,49,
50
}
rotArray={0,1,2,3}
idArray={0,1,2,3,4,5,6,7,8,9,10,11,12,
13,14,15,16,17,18,19,20,21,22,23,24,
25,26,27,28,29,30,31,32,33,34,35,36,
37,38,39,40,41,42,43
}
--randomized spr param declarations
sprID=idArray[math.random(1,#idArray)]
--pos
sprX=xArray[math.random(1,#xArray-1)]
sprY=yArray[math.random(1,#yArray-1)]
--scale,rot
sprScl=scaleArray[math.random(1,#scaleArray)]
sprRot=rotArray[math.random(1,#rotArray)]
color=color+1	
notepos=math.random(0,95)
		
static=1
notepos=math.random(0,95)
sus=25
music(0,0,0,0,0)
--cscale notes
n1="C-4"
n2="D-4"
n3="E-4"
n4="F-4"
n5="G-4"
n6="A-4"
n7="B-4"
n8="C-5"
--dscalenotes


octave=1
doctave=0
coctave=0
function TIC()
map(0,0,240,136,0,0)
spr(sprID,sprX,sprY,1,sprScl,0,sprRot)
--phone synth toggle
	if keyp(62) then--- caps lock
		id=02
	end
--sine wav toggle	
	if keyp(64) then--- SHIFT
		id=01
	end
--fart/glitch toggle
	if keyp(63) then--- CTRL
		id=05
	end
---Zany/pitchy
	if keyp(65) then--- ALT
		id=06
	end
--stop drums toggle	
	if keyp(14) then --N
		music()
	end
--resume drums toggle
	if keyp(13) then	 --M
		music(0,0,0,0,0)
	end
--infinite sustain
	if keyp(19) then	 --S
		sus=-1
	end
--regular sustain
	if keyp(4) then --D	
		sus=25
	end
--medium sustain
	if keyp(6) then --D	
		sus=50
	end
--long sustain
	if keyp(7) then --D	
		sus=75
	end
--switch to Dmaj
	if keyp(28) then---key1
		doctave=1
	end
--Switch to Cmaj	
	if keyp(29) then---key2
		doctave=0
	end
--octave cycle	
	if keyp(48) then----space
		octave=octave+1
	end
----Cnote Variables
if doctave==0 then
		n1="C-5"
		n2="D-5"
		n3="E-5"
		n4="F-5"
		n5="G-5"
		n6="A-5"
		n7="B-5"
		n8="C-6"
	if octave==2 then
		n1="C-5"
		n2="D-5"
		n3="E-5"
		n4="F-5"
		n5="G-5"
		n6="A-5"
		n7="B-5"
		n8="C-6"
	end
	
	if octave==3 then
		n1="C-6"
		n2="D-6"
		n3="E-6"
		n4="F-6"
		n5="G-6"
		n6="A-6"
		n7="B-6"
		n8="C-7"
	end
	
	if octave==4 then
		n1="C-7"
		n2="D-7"
		n3="E-7"
		n4="F-7"
		n5="G-7"
		n6="A-7"
		n7="B-7"
		n8="C-1"
	end

	if octave==5 then
		n1="C-1"
		n2="D-1"
		n3="E-1"
		n4="F-1"
		n5="G-1"
		n6="A-1"
		n7="B-1"
		n8="C-2"
	end

	if octave==6 then
		n1="C-2"
		n2="D-2"
		n3="E-2"
		n4="F-2"
		n5="G-2"
		n6="A-2"
		n7="B-2"
		n8="C-3"
	end

	if octave==7 then
		n1="C-3"
		n2="D-3"
		n3="E-3"
		n4="F-3"
		n5="G-3"
		n6="A-3"
		n7="B-3"
		n8="C-4"
	end
	
	if octave==8 then
		octave=1
	end
end
---D note variables
if doctave==1 then
		n1="D-4"
		n2="E-4"
		n3="F#4"
		n4="G-4"
		n5="A-4"
		n6="B-4"
		n7="C#4"
		n8="D-5"
	if octave==1 then
		n1="D-4"
		n2="E-4"
		n3="F#4"
		n4="G-4"
		n5="A-4"
		n6="B-4"
		n7="C#4"
		n8="D-5"
	end
	
	if octave==2 then
		n1="D-5"
		n2="E-5"
		n3="F#5"
		n4="G-5"
		n5="A-5"
		n6="B-5"
		n7="C#5"
		n8="D-6"
	end
	
	if octave==3 then
		n1="D-6"
		n2="E-6"
		n3="F#6"
		n4="G-6"
		n5="A-6"
		n6="B-6"
		n7="C#6"
		n8="D-7"
	end
	
	if octave==4 then
		n1="D-7"
		n2="E-7"
		n3="F#7"
		n4="G-7"
		n5="A-7"
		n6="B-7"
		n7="C#7"
		n8="D-1"
	end

	if octave==5 then
		n1="D-1"
		n2="E-1"
		n3="F#1"
		n4="G-1"
		n5="A-1"
		n6="B-1"
		n7="C#1"
		n8="D-2"
	end

	if octave==6 then
		n1="D-2"
		n2="E-2"
		n3="F#2"
		n4="G-2"
		n5="A-2"
		n6="B-2"
		n7="C#2"
		n8="D-3"
	end

	if octave==7 then
		n1="D-3"
		n2="E-3"
		n3="F#3"
		n4="G-3"
		n5="A-3"
		n6="B-3"
		n7="C#3"
		n8="D-4"
	end
	
	if octave==8 then
		octave=1
	end
end

if btnp(4) then
		--randomized spr param declarations
		sprID=idArray[math.random(1,#idArray)]
		--pos
		sprX=xArray[math.random(1,#xArray-1)]
		sprY=yArray[math.random(1,#yArray-1)]
		--scale,rot
		sprScl=scaleArray[math.random(1,#scaleArray)]
		sprRot=rotArray[math.random(1,#rotArray)]
		color=color+1	
		notepos=math.random(0,95)
		sfx(id,notepos, sus)
end
	
	if keyp(17) then
			--randomized spr param declarations
		sprID=idArray[math.random(1,#idArray)]
		--pos
		sprX=xArray[math.random(1,#xArray-1)]
		sprY=yArray[math.random(1,#yArray-1)]
		--scale,rot
		sprScl=scaleArray[math.random(1,#scaleArray)]
		sprRot=rotArray[math.random(1,#rotArray)]
		color=color+1	
		color=color+1
		sfx(id,n1, sus)
	end
	
	if keyp(23) then
			--randomized spr param declarations
		sprID=idArray[math.random(1,#idArray)]
		--pos
		sprX=xArray[math.random(1,#xArray-1)]
		sprY=yArray[math.random(1,#yArray-1)]
		--scale,rot
		sprScl=scaleArray[math.random(1,#scaleArray)]
		sprRot=rotArray[math.random(1,#rotArray)]
		color=color+1	
		color=color+1
		sfx(id,n2, sus)
	end
	
	if keyp(05) then
			--randomized spr param declarations
		sprID=idArray[math.random(1,#idArray)]
		--pos
		sprX=xArray[math.random(1,#xArray-1)]
		sprY=yArray[math.random(1,#yArray-1)]
		--scale,rot
		sprScl=scaleArray[math.random(1,#scaleArray)]
		sprRot=rotArray[math.random(1,#rotArray)]
		color=color+1	
		color=color+1
		sfx(id,n3, sus)
	end
	
	if keyp(18) then
			--randomized spr param declarations
		sprID=idArray[math.random(1,#idArray)]
		--pos
		sprX=xArray[math.random(1,#xArray-1)]
		sprY=yArray[math.random(1,#yArray-1)]
		--scale,rot
		sprScl=scaleArray[math.random(1,#scaleArray)]
		sprRot=rotArray[math.random(1,#rotArray)]
		color=color+1	
		color=color+1
		sfx(id,n4, sus)
	end
	
	if keyp(20) then
			--randomized spr param declarations
		sprID=idArray[math.random(1,#idArray)]
		--pos
		sprX=xArray[math.random(1,#xArray-1)]
		sprY=yArray[math.random(1,#yArray-1)]
		--scale,rot
		sprScl=scaleArray[math.random(1,#scaleArray)]
		sprRot=rotArray[math.random(1,#rotArray)]
		color=color+1	
		color=color+1
		sfx(id,n5, sus)
	end
	
	if keyp(25) then
			--randomized spr param declarations
		sprID=idArray[math.random(1,#idArray)]
		--pos
		sprX=xArray[math.random(1,#xArray-1)]
		sprY=yArray[math.random(1,#yArray-1)]
		--scale,rot
		sprScl=scaleArray[math.random(1,#scaleArray)]
		sprRot=rotArray[math.random(1,#rotArray)]
		color=color+1	
		color=color+1
		sfx(id,n6, sus)
	end
	
	if keyp(21) then
			--randomized spr param declarations
		sprID=idArray[math.random(1,#idArray)]
		--pos
		sprX=xArray[math.random(1,#xArray-1)]
		sprY=yArray[math.random(1,#yArray-1)]
		--scale,rot
		sprScl=scaleArray[math.random(1,#scaleArray)]
		sprRot=rotArray[math.random(1,#rotArray)]
		color=color+1	
		color=color+1
		sfx(id,n7, sus)
	end
	
	if keyp(09) then
			--randomized spr param declarations
		sprID=idArray[math.random(1,#idArray)]
		--pos
		sprX=xArray[math.random(1,#xArray-1)]
		sprY=yArray[math.random(1,#yArray-1)]
		--scale,rot
		sprScl=scaleArray[math.random(1,#scaleArray)]
		sprRot=rotArray[math.random(1,#rotArray)]
		color=color+1	
		color=color+1
		sfx(id,n8, sus)
	end
	
	
	print("Note Tools: ",150,10,4,false,1,true)
	print("Z for rand note",150,20,5,false,1,true)
	print("Qwertyui C4 Maj",150,30,6,false,1,true)
	print("Spacebar - up octave",150,40,7,false,1,true)
	print("1=D 2=C N=StopDrums M=Drums",150,50,4,false,1,true)
	print("fx:",10,10,4,false,1,true)
	print("caps lck=telephone",20,20,5,false,1,true)
	print("shift=sinewav",20,30,6,false,1,true)
	print("cntrl=fart/glitch",20,40,7,false,1,true)
	print("alt=zany/pitchy",20,50,4,false,1,true)
	print("S=Infinite sustain",20,60,5,false,1,true)
	print("D=short sustain",20,70,6,false,1,true)
	print("F=med sustain",20,80,7,false,1,true)
	print("G=long sustain",20,90,4,false,1,true)
	
end
