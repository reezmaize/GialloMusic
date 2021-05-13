

instr read

	iport init 1	;Initialising portamento time

	;Reading values from suspiria.vals

	kmagic, kviolence, kwitches, kred readk4 "../../Data\ Collection/Suspiria/pausefiles/1/suspiria.vals", 7, 0.082
	kintensity	readk	"../../Data\ Collection/Suspiria/pausefiles/1/intensity.val"
	
	printk2	kred, 10

	;Adding portamento to read values

	kmagic 		port	kmagic, iport
	kviolence	port	kviolence, iport
	kwitches	port	kwitches, iport
	kred		port	kred, iport

	;Scaling values between 0 and 1 for use with most opcodes

	gkmagic		scale	kmagic, 0.99, 0.11,127, 0
	gkviolence	scale	kviolence, 0.99, 0.11,127, 0
	gkwitches	scale	kwitches, 0.99, 0.11,127, 0
	gkred		scale	kred, 0.99, 0.11,127, 0


endin
