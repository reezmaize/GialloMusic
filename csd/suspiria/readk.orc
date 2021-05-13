

instr read

	iport init 1	;Initialising portamento time

/*	Reading values from suspiria.vals

	Reading interval is determined by dividing the total length of the piece in seconds by the number of lines in each file
			eg: 8:00 in seconds = 480
				478 / 2602 = 0.18370....
*/
	kmagic, kviolence, kwitches, kred readk4 "../../Data\ Collection/Suspiria/suspiria.vals", 7, 0.183
	kintensity	readk	"../../Data\ Collection/Suspiria/susintensity.val", 7, 0.136
	
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
