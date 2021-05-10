

instr read

	kmagic, kviolence, kwitches, kred readk4 "../../Data\ Collection/Suspiria/pausefiles/1/suspiria.vals", 7, 0.01
	
	/*gkmagic		=	kmagic
	gkviolence	=	kviolence
	gkwitches	=	kwitches
	gkred		=	kred*/

	;Scaling values between 0 and 1 for use with most opcodes

	gkmagic		scale	kmagic, 0, 1, 0, 127
	gkviolence	scale	kviolence, 0, 1, 0, 127
	gkwitches	scale	kwitches, 0, 1, 0, 127
	gkred		scale	kred, 0, 1, 0, 127

endin
