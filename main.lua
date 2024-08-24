-- version: 0.1
-- script:  lua

color=0
id=1
notepos=math.random(0,95)
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
		
	if keyp(28) then---key1
		doctave=1
	end
	
	if keyp(29) then---key2
		doctave=0
	end
	
	if keyp(48) then----space
		octave=octave+1
	end

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
		color=color+1
		notepos=math.random(0,95)
		sfx(id,notepos, 25)
	end
	
	if keyp(17) then
		color=color+1
		sfx(id,n1, 25)
	end
	
	if keyp(23) then
		color=color+1
		sfx(id,n2, 25)
	end
	
	if keyp(05) then
		color=color+1
		sfx(id,n3, 25)
	end
	
	if keyp(18) then
		color=color+1
		sfx(id,n4, 25)
	end
	
	if keyp(20) then
		color=color+1
		sfx(id,n5, 25)
	end
	
	if keyp(25) then
		color=color+1
		sfx(id,n6, 25)
	end
	
	if keyp(21) then
		color=color+1
		sfx(id,n7, 25)
	end
	
	if keyp(09) then
		color=color+1
		sfx(id,n8, 25)
	end
	
	cls(color)
	
	print("Z for rand note",84,50)
	print("Qwertyui C4 Maj",84,60)
	print("Spacebar - up octave",84,70)
	print("1- d root note. 2 - back to C",84,80)
end
