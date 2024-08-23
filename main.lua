-- version: 0.1
-- script:  lua

color=0
id=1
notepos=math.random(0,95)
music(0,0,0,0,0)
c="C-4"
d="D-4"
e="E-4"
f="F-4"
g="G-4"
a="A-4"
b="B-4"
c2="C-5"

octave=1

function TIC()
	if keyp(48) then
		octave=octave+1
	end
	
	if octave==2 then
		c="C-5"
		d="D-5"
		e="E-5"
		f="F-5"
		g="G-5"
		a="A-5"
		b="B-5"
		c2="C-6"
	end

	if btnp(4) then
		color=color+1
		notepos=math.random(0,95)
		sfx(id,notepos, 25)
	end
	
	if keyp(17) then
		color=color+1
		sfx(id,c, 25)
	end
	
	if keyp(23) then
		color=color+1
		sfx(id,d, 25)
	end
	
	if keyp(05) then
		color=color+1
		sfx(id,e, 25)
	end
	
	if keyp(18) then
		color=color+1
		sfx(id,f, 25)
	end
	
	if keyp(20) then
		color=color+1
		sfx(id,g, 25)
	end
	
	if keyp(25) then
		color=color+1
		sfx(id,a, 25)
	end
	
	if keyp(21) then
		color=color+1
		sfx(id,b, 25)
	end
	
	if keyp(09) then
		color=color+1
		sfx(id,c2, 25)
	end
	
	cls(color)
	
	print("Z for rand note",84,50)
	print("Qwertyui C4 Maj",84,60)
	print("Spacebar - up octave",84,70)
	
end
