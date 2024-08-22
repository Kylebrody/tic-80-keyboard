-- version: 0.1
-- script:  lua

color=0
id=1
notepos=math.random(0,95)
music(0,0,0,0,0)

function TIC()
	if btnp(4) then
		color=color+1
		notepos=math.random(0,95)
		sfx(id,notepos, 25)
	end
	
	if keyp(17) then
		color=color+1
		sfx(id,"C-4", 25)
	end
	
	if keyp(23) then
		color=color+1
		sfx(id,"D-4", 25)
	end
	
	if keyp(05) then
		color=color+1
		sfx(id,"E-4", 25)
	end
	
	if keyp(18) then
		color=color+1
		sfx(id,"F-4", 25)
	end
	
	if keyp(20) then
		color=color+1
		sfx(id,"G-4", 25)
	end
	
	if keyp(25) then
		color=color+1
		sfx(id,"A-4", 25)
	end
	
	if keyp(21) then
		color=color+1
		sfx(id,"B-4", 25)
	end
	
	if keyp(09) then
		color=color+1
		sfx(id,"C-5", 25)
	end
	
	cls(color)
	
	print("Z for rand note",84,50)
	print("Qwertyui C4 Maj",84,60)
	
end
