/*
 *        ___                 _                  ___                    
 *       /   \__ _ _ __   ___(_)_ __   __ _     /   \_____   _____  ___ 
 *      / /\ / _` | '_ \ / __| | '_ \ / _` |   / /\ / _ \ \ / / _ \/ __|
 *     / /_// (_| | | | | (__| | | | | (_| |  / /_// (_) \ V /  __/\__ \
 *    /___,' \__,_|_| |_|\___|_|_| |_|\__, | /___,' \___/ \_/ \___||___/
 *                                    |___/                             
 *       ___                         _  ___                             
 *      / _ \_ __ ___  _   _ _ __   / |/ _ \                            
 *     / /_\/ '__/ _ \| | | | '_ \  | | | | |                           
 *    / /_\\| | | (_) | |_| | |_) | | | |_| |                           
 *    \____/|_|  \___/ \__,_| .__/  |_|\___/                            
 *                          |_|                                         
 * 
 * CISC 221 - Winter 2014 - Assignment 1
 * 
 * ~~~ BY ~~~
 * Michael Layzell
 * Erin Gallagher
 * Eric Tharma
 * Matt Chiang
 * Elliott Wright
 * Calvin Ng
 */

@ Declare the ARM version we are using
	.arch armv6

/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY CALVIN NG              *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/

/*******************************************************************************************/
/*Declaration of netLevel variable*/
	.global	netLevel
	.bss
	.align	2
	.type	netLevel, %object
	.size	netLevel, 4		@allocate 4 bytes of memory (unsigned netLevel;)
netLevel:
	.space	4

/*Declaration of dealerLevel variable*/
	.global	dealerLevel
	.align	2
	.type	dealerLevel, %object
	.size	dealerLevel, 4	@allocate 4 bytes of memory (unsiged dealerLevel;)
dealerLevel:
	.space	4
	
/*Declaration of baitLevel variable*/
	.global	baitLevel
	.align	2
	.type	baitLevel, %object
	.size	baitLevel, 4	@allocate 4 bytes of memory (unsigned baitLevel;)
baitLevel:
	.space	4
	
/*Declaration of breedingLevel variable*/
	.global	breedingLevel
	.align	2
	.type	breedingLevel, %object
	.size	breedingLevel, 4	@allocate 4 bytes of memory (unsigned breedingLevel;)
breedingLevel:
	.space	4
	
/*Declaration of doves variable*/
	.global	doves
	.align	2
	.type	doves, %object
	.size	doves, 4		@allocate 4 bytes of memory (unsigned doves;)
doves:
	.space	4
	
/*Declaration of baitClickCount variable*/
	.global	baitClickCount
	.align	2
	.type	baitClickCount, %object
	.size	baitClickCount, 4	@allocate 4 bytes of memory (unsigned baitClickCount;)
baitClickCount:
	.space	4
	
/*Declaration of breeding variable*/
	.global	breedingClickCount
	.align	2
	.type	breedingClickCount, %object
	.size	breedingClickCount, 4	@allocate 4 bytes of memory (unsigned breedingClickCount;)
breedingClickCount:
	.space	4
	
/*Declaration of currentSale variable*/
	.global	currentSale
	.align	2
	.type	currentSale, %object
	.size	currentSale, 4		@allocate 4 bytes of memory (unsigned currentSale;)
currentSale:
	.space	4
	
/*Declaration of achievements variable*/
	.global	achievements
	.align	2
	.type	achievements, %object
	.size	achievements, 4		@allocate 4 bytes of memory (unsigned achievements;)
achievements:
	.space	4
	
/*Declaration of clearScreen variable*/
	.global	clearScreen
	.section	.rodata
	.align	2
	.type	clearScreen, %object
	.size	clearScreen, 8		@allocate 8 bytes of memory (char clearScreen[];)
clearScreen:
	.ascii	"\033[2J\033[H\000"
	
/*Declaration of netBonusDoves variable*/
	.global	netBonusDoves
	.align	2
	.type	netBonusDoves, %object
	.size	netBonusDoves, 36	@allocate 36 bytes of memory (unsigned netBonusDoves[9];)
netBonusDoves:
	.word	0		@netBonusDoves[0] = 0
	.word	1		@netBonusDoves[1] = 1
	.word	2		@netBonusDoves[2] = 2
	.word	3		@netBonusDoves[3] = 3
	.word	4		@netBonusDoves[4] = 4
	.word	5		@netBonusDoves[5] = 5
	.word	6		@netBonusDoves[6] = 6
	.word	7		@netBonusDoves[7] = 7
	.word	8		@netBonusDoves[8] = 8
	
/*Declaration of dealerDiscounts variable*/
	.global	dealerDiscounts
	.align	2
	.type	dealerDiscounts, %object
	.size	dealerDiscounts, 36	@allocate 36 bytes of memory (unsigned dealerDiscounts[9];)
dealerDiscounts:
	.word	0		@dealDiscounts[0] = 0
	.word	30		@dealDiscounts[1] = 30
	.word	60		@dealDiscounts[2] = 60
	.word	120		@dealDiscounts[3] = 120
	.word	240		@dealDiscounts[4] = 240
	.word	480		@dealDiscounts[5] = 480
	.word	960		@dealDiscounts[6] = 960
	.word	1920	@dealDiscounts[7] = 1920
	.word	3840	@dealDiscounts[8] = 3840
	
/*Declaration of baitBonusDoves variable*/
	.global	baitBonusDoves
	.align	2
	.type	baitBonusDoves, %object
	.size	baitBonusDoves, 36	@allocate 36 bytes of memory (unsigned baitBonusDoves[9];)
baitBonusDoves:
	.word	0		@baitBonusDoves[0] = 0
	.word	10		@baitBonusDoves[1] = 10
	.word	30		@baitBonusDoves[2] = 30
	.word	60		@baitBonusDoves[3] = 60
	.word	100		@baitBonusDoves[4] = 100
	.word	150		@baitBonusDoves[5] = 150
	.word	210		@baitBonusDoves[6] = 210
	.word	280		@baitBonusDoves[7] = 280
	.word	360		@baitBonusDoves[8] = 360
	
/*Declaration of breedingInterest variable*/
	.global	breedingInterest
	.align	2
	.type	breedingInterest, %object
	.size	breedingInterest, 36	@allocate 36 bytes of memory (unsigned breedingInterest[9];)
breedingInterest:
	.word	0		@breedingInterest[0] = 0
	.word	1		@breedingInterest[1] = 1
	.word	2		@breedingInterest[2] = 2
	.word	3		@breedingInterest[3] = 3
	.word	4		@breedingInterest[4] = 4
	.word	5		@breedingInterest[5] = 5
	.word	6		@breedingInterest[6] = 6
	.word	7		@breedingInterest[7] = 7
	.word	8		@breedingInterest[8] = 8
/*******************************************************************************/


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY ERIN GALLAGHER         *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


	.global	netDescriptions @defines as "globally" visible to all modules
	.align	2 @adds padding to start next word at begining of next word boundary
.Level1Net:
	.ascii	"A net\000" 
	@insert string literal defining level title finishing with null
	.align	2 @pads to begin at next word boundary
.Level2Net:
	.ascii	"A better net\000"
	@insert string literal defining level title finishing with null
	.align	2 @pads to begin at next word boundary
.Level3Net:
	.ascii	"An even better net\000"
	@insert string literal defining level title finishing with null
	.align	2 @pads to begin at next word boundary
.Level4Net:
	.ascii	"SILK NET\000"
	@insert string literal defining level title finishing with null
	.align	2 @pads to begin at next word boundary
.Level5Net:
	.ascii	"SILKIER NET\000"
	@insert string literal defining level title finishing with null
	.align	2 @pads to begin at next word boundary
.Level6Net:
	.ascii	"SILKIEST NET\000"
	@insert string literal defining level title finishing with null
	.align	2 @pads to begin at next word boundary
.Level7Net:
	.ascii	"GOLDEN NET OF AWESOME\000"
	@insert string literal defining level title finishing with null
	.align	2 @pads to begin at next word boundary
.Level8Net:
	.ascii	"MAGIC GOLDEN NET OF AWESOME\000"
	@insert string literal defining level title finishing with null

	.data @beginging of variable definition
	.align	2 @padding to start next word at beginning of word boundary
	.type	netDescriptions, %object @defines as an object type
	.size	netDescriptions, 32 @defines size as 4 bytes
netDescriptions:
	.word	.Level1Net
	.word	.Level2Net
	.word	.Level3Net
	.word	.Level4Net
	.word	.Level5Net
	.word	.Level6Net
	.word	.Level7Net
	.word	.Level8Net
	.global	dealerDescriptions @defines label as being "globally" visible to all modules
	.section	.rodata @defines variables
	.align	2 @adds padding to start next word at beginnign of word boundary
.Level1Deal:
	.ascii	"Dealer\000"
	@insert string literal defining level title finishing with null
	.align	2 @pads to begin at next word boundary
.Level2Deal:
	.ascii	"Better Dealer\000"
	@insert string literal defining level title finishing with null
	.align	2@pads to begin at next word boundary
.Level3Deal:
	.ascii	"Betterer Dealer\000"
	@insert string literal defining level title finishing with null
	.align	2 @pads to begin at next word boundary
.Level4Deal:
	.ascii	"Bettererer Dealer\000"
	@insert string literal defining level title finishing with null
	.align	2 @pads to begin at next word boundary
.Level5Deal:
	.ascii	"Dealer of doves\000"
	@insert string literal defining level title finishing with null
	.align	2 @pads to begin at next word boundary
.Level6Deal:
	.ascii	"Dove Lord\000"
	@insert string literal defining level title finishing with null
	.align	2 @pads to begin at next word boundary
.Level7Deal:
	.ascii	"Dove Baron\000"
	@insert string literal defining level title finishing with null
	.align	2 @pads to begin at next word boundary
.Level8Deal:
	.ascii	"Dove Kingpin\000"
	@insert string literal defining level title finishing with null

	.data @begins variable definition
	.align	2 @adds padding so next word begins at word boundary
	.type	dealerDescriptions, %object @defines as type object
	.size	dealerDescriptions, 32 @defines size as 4 bytes
dealerDescriptions:
	.word	.Level1Deal
	.word	.Level2Deal
	.word	.Level3Deal
	.word	.Level4Deal
	.word	.Level5Deal
	.word	.Level6Deal
	.word	.Level7Deal
	.word	.Level8Deal


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY MATTHEW CHIANG         *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


/********************************************************************************************************************/
/*bait descriptions commented by matthew chiang*/
@baitDescriptions array is global
	.global	baitDescriptions 
	.section	.rodata
	.align	2
@strings used to describe bait levels
.LC16:
	.ascii	"Bait\000"
	.align	2
.LC17:
	.ascii	"Better Bait\000"
	.align	2
.LC18:
	.ascii	"Even better bait\000"
	.align	2
.LC19:
	.ascii	"Even better than better bait\000"
	.align	2
.LC20:
	.ascii	"The ol' bait and switch\000"
	.align	2
.LC21:
	.ascii	"A dead female duck\000"
	.align	2
.LC22:
	.ascii	"A live female duck, so much better\000"
	.align	2
.LC23:
	.ascii	"Masta Bait\000"
	.data
	.align	2
	.type	baitDescriptions, %object
	.size	baitDescriptions, 32
@ creating array of bait description string pointers
baitDescriptions:
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
/*********************************************************************************************************************/


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY MATTHEW CHIANG         *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


/*********************************************************************************************************************/
/*breed descriptions commented by matthew chiang*/
@strings used to describe breeding levels
@breedingDescriptions array is global
	.global	breedingDescriptions
	.section	.rodata
	.align	2
.LC24:
	.ascii	"Pheromones\000"
	.align	2
.LC25:
	.ascii	"Dove pheromones\000"
	.align	2
.LC26:
	.ascii	"Even better dove pheromones\000"
	.align	2
.LC27:
	.ascii	"A breeding box\000"
	.align	2
.LC28:
	.ascii	"A breeding castle\000"
	.align	2
.LC29:
	.ascii	"Pillows\000"
	.align	2
.LC30:
	.ascii	"Smooth jazz\000"
	.align	2
.LC31:
	.ascii	"All of the above + dovematch.com\000"
	.data
	.align	2
	.type	breedingDescriptions, %object
	.size	breedingDescriptions, 32
@creating array of breed-level string pointers
breedingDescriptions:
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
/*********************************************************************************************************************/


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY CALVIN NG              *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


/*********************************************************************************/
/*Declaration of srand variable*/
	.global	srand
	.align	2
	.type	srand, %object
	.size	srand, 4		@allocate 4 bytess of memory to srand (unsigned srand;)
srand:
	.word	1				@set srand = 1
	.text

/*Start of unsigned rand() function */

	.align	2
	.global	rand
	.type	rand, %function
rand:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r3, .randVars 	@load srand address into r3
	ldr	r3, [r3, #0]	@load srand value into r3
	ldr	r2, .randVars+4		@load 1103515245 into r2
	mul	r3, r2, r3		@multiply the value in r3 by 1103515245   # srand = srand * 1103515245
	add	r3, r3, #12288	@add 12288 to the value in r3 and store into r3
	add	r3, r3, #57		@add 57 to the value in r3 and store into r3   # srand = srand +12345
	ldr	r2, .randVars			@load srand address into r2
	str	r3, [r2, #0]	@store the value in r3 into srand
	ldr	r3, .randVars			@load srand address into r3
	ldr	r3, [r3, #0]	@load srand value into r3
	mov	r3, r3, lsr #16	@divide the value in r3 by 65536
	mov	r3, r3, asl #17	
	mov	r3, r3, lsr #17	@this line with the previous line complete the action to modulus the value by 32768
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr				@return (unsigned)(srand / 65536) % 32768
.L3:
	.align	2
.randVars:
	.word	srand
	.word	1103515245
	.size	rand, .-rand
/* End of unsigned rand() function*/	
/**********************************************************************************/


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY ERIC THARMA            *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


	.align	2
	.global	getNetBonus
	.type	getNetBonus, %function
getNetBonus:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0				@setting up the frame and stack pointer
	sub	sp, sp, #12				@allocating bytes: fp starts at 0, sp starts at -12
	mov	r3, #0					@bonus = 0
	str	r3, [fp, #-12]			@store bonus
	mov	r3, #0					@i = 0
	str	r3, [fp, #-8]			@store i
	b	.L5						@go to for loop
.L6:			@FOR LOOP
	ldr	r3, .L7 				@load netBonusDoves
	ldr	r2, [fp, #-8]			@load i
	ldr	r3, [r3, r2, asl #2]	@load netBonusDoves[i]
	ldr	r2, [fp, #-12]			@load bonus
	add	r3, r2, r3				@bonus += netBonusDoves[i]
	str	r3, [fp, #-12] 			@store bonus
	ldr	r3, [fp, #-8]			@load i
	add	r3, r3, #1				@i++
	str	r3, [fp, #-8]			@store i
.L5:			@conditionals used in for loop
	ldr	r3, .L7+4				@load netLevel
	ldr	r3, [r3, #0]		
	ldr	r2, [fp, #-8]			@load i
	cmp	r2, r3 					@compare i and netLevel
	bls	.L6						@if i < netLevel, loop
	ldr	r3, [fp, #-12]			@load bonus
	mov	r0, r3					@move bonus to another register
	add	sp, fp, #0				@reset stack and frame pointers to zero
	ldmfd	sp!, {fp}			@load user mode registers
	bx	lr						@return bonus
.L8:
	.align	2
.L7:			@variables used in local function
	.word	netBonusDoves
	.word	netLevel
	.size	getNetBonus, .-getNetBonus


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY ELLIOTT WRIGHT         *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


/********************************************************************************************/
					/*			Commented by Elliott Wright				*/
	.align	2
	.global	getDealerDiscountBonus
	.type	getDealerDiscountBonus, %function
getDealerDiscountBonus:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12  @save frame and alocate space on stack for vars
	
	
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]	@fp -8 = i
	b	.L10
.L11:
	ldr	r3, .L12
	ldr	r2, [fp, #-8]
	ldr	r3, [r3, r2, asl #2]  @r3 contains dealerBonus[i]
	ldr	r2, [fp, #-12]
	add	r3, r2, r3   @ add dealerbonus[i] to bonus
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1	@increment i (i++)
	str	r3, [fp, #-8]
.L10:
	ldr	r3, .L12+4
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	bls	.L11	@if i <= dealer level goto .L11 (loop)	, else end loop
	ldr	r3, [fp, #-12]
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}		@restore old frame to stack
	bx	lr					@returns bonus
.L13:
	.align	2
.L12:
/*					vars used in getDealerDiscountBonus()									*/
	.word	dealerDiscounts
	.word	dealerLevel
	.size	getDealerDiscountBonus, .-getDealerDiscountBonus
/*********************************************************************************************/


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY CALVIN NG              *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


/************************************************************************************/
/*Start of unsigned getBaitBonus() function */
	.align	2
	.global	getBaitBonus
	.type	getBaitBonus, %function
getBaitBonus:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	mov	r3, #0
	str	r3, [fp, #-12]		@unsigned bonus = 0
	mov	r3, #0
	str	r3, [fp, #-8]		@unsigned i = 0
	b	.L15
.L16:
	ldr	r3, .getBaitBonusVars			@load baitBonusDaves address into r3
	ldr	r2, [fp, #-8]		@load i into r2
	ldr	r3, [r3, r2, asl #2]	@load baitBonusDoves[i] into r3
	ldr	r2, [fp, #-12]		@load bonus into r2
	add	r3, r2, r3			@load bonus+baitBonusDoves into r3
	str	r3, [fp, #-12]		@store new bonus into r3
	ldr	r3, [fp, #-8]		@load i into r3
	add	r3, r3, #1			@i++
	str	r3, [fp, #-8]		@store i into frame pointer
.L15:
	ldr	r3, .getBaitBonusVars+4			@load baitLevel Address into r3
	ldr	r3, [r3, #0]		@load baitLevel value into r3
	ldr	r2, [fp, #-8]		@load i into r2
	cmp	r2, r3				
	bls	.L16				@if i =< baitLevel then .L16
	ldr	r3, [fp, #-12]		@load bonus into r3
	mov	r0, r3				@load bonus into r0
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr					@return bonus
.L18:
	.align	2
.getBaitBonusVars:
	.word	baitBonusDoves
	.word	baitLevel
	.size	getBaitBonus, .-getBaitBonus
/*End of unsigned getBaitBonus() function */
/*************************************************************************************/


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY MATTHEW CHIANG         *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


/*********************************************************************************************************************/
/*getBreedingBonus commented by matthew chiang*/
	.align	2
	.global	getBreedingBonus 
	.type	getBreedingBonus, %function
@entry to getBreedingBonus
getBreedingBonus: 
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	@allocating space to stack and frame pointers
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L20
.L21:
	@loads breedingInterest and i into r3,r2
	ldr	r3, .L22
	ldr	r2, [fp, #-8]
	@stores breedingInterest[i] in r3
	ldr	r3, [r3, r2, asl #2]
	@bonus += breedingInterest[i]
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	@increments i 
	@loads i and adds 1
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	@saves i
	str	r3, [fp, #-8]
.L20:
	@condition of for-loop
	@breedingLevel(L22+4) stored at r3 and i (fp#-8) in r2
	@if i < breedingLevel go to branch L21
	ldr	r3, .L22+4
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	bls	.L21
	@loads Doves into r3 
	ldr	r3, .L22+8
	ldr	r2, [r3, #0]
	ldr	r3, .L22+12
	@calculates and loads doves/10 into r3
	umull	r1, r3, r3, r2
	mov	r2, r3, lsr #3
	@loads bonus into r3
	ldr	r3, [fp, #-12]
	@ calculates bonus * (doves/10) and stores into r3
	mul	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r0, r3
	@restore stack and frame pointers
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	@returns bonus
	bx	lr
.L23:
	.align	2
/* Variables used throughout getBreedingBonus */
.L22:
	.word	breedingInterest
	.word	breedingLevel
	.word	doves
	.word	-858993459
	.size	getBreedingBonus, .-getBreedingBonus
	.align	2
/*********************************************************************************************************************/

/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY ERIN GALLAGHER         *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


	.align	2 @adds padding  so next location will be at beginning of next word boundary
	.global	getFirstCharOfLine @ symbol is now "globally" visible to all other modules
	.type	getFirstCharOfLine, %function @defines type as a function 
getFirstCharOfLine:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4 @adds 4 to the sp adress, stores as frame pointer
	sub	sp, sp, #8 @ creates space for local variables c and ret
	ldr	r3, .L27 @loads address of first char into r3
	ldr	r3, [r3, #0] @loads value of c into r3
	mov	r0, r3  @moves value of c into r0
	bl	_IO_getc @brnch and link (calls getc function)
	mov	r3, r0 @moves value of c into r3??
	strb	r3, [fp, #-5]
	ldrb	r3, [fp, #-5]
	strb	r3, [fp, #-6]
	b	.L25@branches unconditionally to while loop
.L26:@inside while loop
	ldr	r3, .L27 @loads address of next char into r3
	ldr	r3, [r3, #0] @loads value of c into r3
	mov	r0, r3 @moves value of c into r0
	bl	_IO_getc @branch and link (calls getc)
	mov	r3, r0 @moves value of c into ret
	strb	r3, [fp, #-5] @store lowest byte c offset-5 
.L25:@while loop
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #10@compares value of c to new line character
	bne	.L26 @ if not equal branches to .L26
	ldrb	r3, [fp, #-6]	@ zero_extendqisi2@loads lowest byte of fp 
						@offset -6 into r3
	mov	r0, r3@moves value of c into ret for the return
	sub	sp, fp, #4@moves fp to beginning of word
	ldmfd	sp!, {fp, pc}@ frees up sapec on heap
.L28:
	.align	2 @add padding so the next word will be at start of word boundary
.L27:
	.word	stdin @char c
	.size	getFirstCharOfLine, .-getFirstCharOfLine @defines size of return type


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY ERIN GALLAGHER         *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


	.align	2 @adds padding of 2
	.global	getPrice @symbol is now made "globally" visible to all modules
	.type	getPrice, %function @dfines type of getPrice as function
getPrice:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4@adds 4 to the sp adress, stores as frame pointer
	sub	sp, sp, #16@creates space for parameter and local variables
	str	r0, [fp, #-16]@stores adress of level value in r0
	bl	getDealerDiscountBonus @branch and link (call
	str	r0, [fp, #-8]@stores discount in r0
	ldr	r3, [fp, #-16]@load  level into r3
	ldr	r2, [fp, #-16]@loads level into r2
	mul	r3, r2, r3@multiplies level by level and stores it in r3
	ldr	r2, [fp, #-16]@load level into r2
	mul	r3, r2, r3@multiplies level^2 by level and stores it in r3
	ldr	r2, [fp, #-16]@loads level into r2
	mul	r3, r2, r3@multiplies level^3 by level and stores it in r3
	mov	r2, #100@stores 100 in r2
	mul	r3, r2, r3@multiplies level^4 by 100 and stores it as price
	str	r3, [fp, #-12]@stores address of price in r3
	ldr	r2, [fp, #-8]@loads discount into r2
	ldr	r3, [fp, #-12]@loads price into r3
	cmp	r2, r3 @compare discount and price
	bls	.L30 @branch if discount is less or same as price
	mov	r3, #0 @set price to equal 0 for return
	b	.L31@branch to .L31 (inside if) to exit function
.L30:@inside else
	ldr	r2, [fp, #-12]@load price into r2
	ldr	r3, [fp, #-8]@load discount into r3
	rsb	r3, r3, r2 @subtracts discount from price store into r3
	str	r3, [fp, #-12] @stores new price into price
	ldr	r3, .L32@loads register 3 with currenSale
	ldr	r3, [r3, #0]@loads value of currentSale into r3
	ldr	r2, [fp, #-12]@laods  price into r2
	mul	r2, r2, r3@multiplies price and currentSale and stores in r2
	ldr	r3, .L32+4 @reading in 1374389535
	umull	r1, r3, r3, r2@unsigned multiplication store upper bits in r3
	mov	r3, r3, lsr #5@discard the lower 5 bits of r3 
	@same as division by 100
	ldr	r2, [fp, #-12]@load price into r2
	rsb	r3, r3, r2 @price = (price - (price*currentSale)/100)
	str	r3, [fp, #-12]@store price in r3
	ldr	r3, [fp, #-12]@load price into r3
.L31:
	mov	r0, r3@move price into r0 for return
	sub	sp, fp, #4 @move sp to begining of  next word
	ldmfd	sp!, {fp, pc}@free up space on heap
.L33:
	.align	2 @add padding so next word will be at start of new word boundary
.L32:
	.word	currentSale@inserts this word into 32 bit word file
	.word	1374389535@inserts into 32 bit word file
	.size	getPrice, .-getPrice@determines the size of return (32 bits) unsigned int 


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY ERIN GALLAGHER         *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


	.align	2@adds padding of 2
	.global	canUpgrade@defines symbol as "globally" visible to all modules
	.type	canUpgrade, %function @defines type as function
canUpgrade:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr} @saves old frame pointer
	add	fp, sp, #4 @adds 4 to address of stack pointer, save as frame pointer
	sub	sp, sp, #16 @creates space for parameter and local variables
	str	r0, [fp, #-16] @stores upgrade into this address
	ldr	r3, [fp, #-16] @load upgrade from the address into r3
	ldr	r3, [r3, #0] @load value of upgrade into r3
	cmp	r3, #7@ compages upgrade to max level(=7)
	bls	.L35@branch to .L35 if upgrade is loweror same as Max_Level
	mvn	r3, #0 @move -1 into r3
	b	.L36 @branch 
.L35:@if
	ldr	r3, [fp, #-16] @loads address of upgrade into r3
	ldr	r3, [r3, #0] @loads value of upgrade into r3
	add	r3, r3, #1 @ upgrade + 1
	mov	r0, r3 @move value of (upgrade +1) into r0
	bl	getPrice @branch and link (call getPrice Function)returns address
	str	r0, [fp, #-8] @ load price intp r0
	ldr	r3, .L38 @load address of doves  into r3
	ldr	r3, [r3, #0] @load the actual number of doves the user has into r3
	ldr	r2, [fp, #-8] @load value of price into r2
	cmp	r2, r3 @compare price and doves
	bhi	.L37 @branch if  price is greater than doves
	ldr	r3, [fp, #-8] @load value of price into r3
	b	.L36 @branch unconditionally to .L36 to return price
.L37:@else
	mvn	r3, #0 @move -1 into r3 to indicate price is too high
.L36:@return
	mov	r0, r3 @move  -1 into r0
	sub	sp, fp, #4 @move sp to beginning of next word
	ldmfd	sp!, {fp, pc} @free  up space on heap
.L39:
	.align	2 @add padding of  2
.L38:
	.word	doves @inserts this word into 32 bit word file
	.size	canUpgrade, .-canUpgrade @defines the size of returned integer


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY ELLIOTT WRIGHT         *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


/*************************************************************************************************************/
					/*			Commented by Elliott Wright				*/
	
	.section	.rodata
	.align	2
.LC32:
	.ascii	"\012--- Already at maximum level ---\000"
	.align	2
.LC33:
	.ascii	"\012--- Successfully purchaced upgrade for %d doves"
	.ascii	"! ---\012\000"
	.align	2
.LC34:
	.ascii	"\012--- Cannot afford upgrade! ---\000"
	.text
	.align	2
	.global	buy
	.type	buy, %function
buy:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	
	
	
	stmfd	sp!, {fp, lr} @ Save frame on stack
	add	fp, sp, #4		  @ Move the frame pointer
	sub	sp, sp, #16		  @ Make room for local vars
	
	
	
	str	r0, [fp, #-16]  
	ldr	r3, [fp, #-16]		@
	ldr	r3, [r3, #0]		@ if upgrade is at max level
	cmp	r3, #7				@ printf "Cannot upgrade"
	bls	.L41				@
	ldr	r0, .L44			@
	
	
					
	bl	puts
	bl	getFirstCharOfLine	@GetFirstCharOfLine() 
	b	.L40
	
.L41:
	ldr	r0, [fp, #-16]
	bl	canUpgrade
	
	str	r0, [fp, #-8]	 
	ldr	r3, [fp, #-8]	
	cmn	r3, #1			
	beq	.L43			@		if price is == -1 goto L43
	
	
	ldr	r3, .L44+4		@ price != -1 (can affored upgrade)
	
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-8]	
	rsb	r2, r3, r2 		 @Doves = Doves - Price
	
	ldr	r3, .L44+4
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	add	r2, r3, #1			@upgrade*++
	
	ldr	r3, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, .L44+8
	mov	r0, r3
	ldr	r1, [fp, #-8]
	
	bl	printf				@printf "successfully purchesed upgrade"
	bl	getFirstCharOfLine
	b	.L40		@End buy()
.L43:
	ldr	r0, .L44+12				@
	bl	puts					@ printf "cannot affored upgrade"
	bl	getFirstCharOfLine		@ end buy()
.L40:
	sub	sp, fp, #4			 
	ldmfd	sp!, {fp, pc}	   @ Restore old frame to stack
.L45:
	.align	2
.L44:
	.word	.LC32  @	vars
	.word	doves  @	vars
	.word	.LC33  @	vars
	.word	.LC34  @	vars
	.size	buy, .-buy	
	
/************************************************************************************************/


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY CALVIN NG              *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


/*************************************************************************************/
/*Start of unsigned countUpgrade() function */
	.align	2
	.global	countUpgrades
	.type	countUpgrades, %function
countUpgrades:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r3, .countUpgradesVars			@load netLevel address into r3
	ldr	r2, [r3, #0]		@load netLevel value into r2
	ldr	r3, .countUpgradesVars+4			@load dealerLevel address into r3
	ldr	r3, [r3, #0]		@load dealerLevel value into r3
	add	r2, r2, r3			@add netLevel and dealerLevel, store into r2
	ldr	r3, .countUpgradesVars+8			@load baitLevel address into r3
	ldr	r3, [r3, #0]		@load baitLevel value into r3
	add	r2, r2, r3			@add netLevel,dealerLevel and baitLevel, store into r2
	ldr	r3, .countUpgradesVars+12			@load breedingLevel address into r3
	ldr	r3, [r3, #0]		@load breedingLevel value into r3
	add	r3, r2, r3			@add breedingLevel to sum, store into r3
	mov	r0, r3				
	add	sp, fp, #0		
	ldmfd	sp!, {fp}		
	bx	lr					@return the sum of upgrades
.L48:
	.align	2
.countUpgradesVars:
	.word	netLevel		@netLevel Address
	.word	dealerLevel		@dealerLevel Address
	.word	baitLevel		@baitLevel Address
	.word	breedingLevel	@breedingLevel Address
	.size	countUpgrades, .-countUpgrades
/*End of unsigned countUpgrades() function */	
/*************************************************************************************/


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY ERIC THARMA            *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


	.align	2
	.global	netDoves
	.type	netDoves, %function
netDoves:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!			@allocate space for fp and sp
	add	fp, sp, #0				
	ldr	r3, .L50				@load netLevel
	ldr	r2, [r3, #0]
	ldr	r3, .L50+4				@load netBonusDoves
	ldr	r3, [r3, r2, asl #2]	@load netBonusDoves[netLevel]
	mov	r0, r3					@switch registers
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr						@return netBonusDoves[netLevel]
.L51:
	.align	2
.L50:			@variables used in netDoves
	.word	netLevel
	.word	netBonusDoves
	.size	netDoves, .-netDoves


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY CALVIN NG              *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


/****************************************************************************************/
/*Start of unsigned baitDoves() function */
	.align	2
	.global	baitDoves
	.type	baitDoves, %function
baitDoves:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r3, .baitDovesVars		@Load baitClickCount address into r3
	ldr	r3, [r3, #0]	@Load baitClickCount value into r3
	cmp	r3, #9			
	bne	.L53			@If baitClickCount == 9 then =>.L53
	ldr	r3, .baitDovesVars		@load baitClickCount address into r3
	mov	r2, #0					
	str	r2, [r3, #0]	@baitClickCount = 0
	ldr	r3, .baitDovesVars+4		@load baitLevel array address into r3
	ldr	r2, [r3, #0]	@load value of baitLevel array into r2
	ldr	r3, .baitDovesVars+8		@load baitBonusDoves array address into r3
	ldr	r3, [r3, r2, asl #2]	@load baitBonusDoves[baitLevel] value into r3
	b	.L54
.L53:
	ldr	r3, .baitDovesVars		@load baitClickCount address into r3
	ldr	r3, [r3, #0]	@load baitClickCount value into r3
	add	r2, r3, #1		@add 1 to baitClickCount and load into r2
	ldr	r3, .baitDovesVars		@load baitClickCount address into r3
	str	r2, [r3, #0]	@store new baitClickCount value into the baitClickCount address
	mov	r3, #0			@r3 = 0
.L54:
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr				@return
.L56:
	.align	2
.baitDovesVars:
	.word	baitClickCount
	.word	baitLevel
	.word	baitBonusDoves
	.size	baitDoves, .-baitDoves
/*End of unsigned baitDoves() function */	


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY ERIC THARMA            *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


	.align	2
	.global	breedDoves
	.type	breedDoves, %function
breedDoves:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r3, .L60				@load breedingClickCount
	ldr	r3, [r3, #0]		
	cmp	r3, #99					
	bne	.L58					@if breedingClickCount != 99, branch to else
	ldr	r3, .L60				@load breedingClickCount
	mov	r2, #0				
	str	r2, [r3, #0]			@store breedingClickCount
	ldr	r3, .L60+4				@load breedingLevel
	ldr	r2, [r3, #0]
	ldr	r3, .L60+8				@load breedingInterest
	ldr	r3, [r3, r2, asl #2]	@load breedingInterest[breedingLevel]
	ldr	r2, .L60+12				@load doves
	ldr	r1, [r2, #0]			@switch the register that holds doves
	ldr	r2, .L60+16				
	umull	r0, r2, r2, r1		
	mov	r2, r2, lsr #3			@(doves/10)
	mul	r3, r2, r3				@breedingInterest[breedingLevel] = breedingInterest[breedingLevel] * (doves/10)
	b	.L59				
.L58:			@else statement; increment breedingClickCount
	ldr	r3, .L60				@load breedingClickCount
	ldr	r3, [r3, #0]		
	add	r2, r3, #1				@breedingClickCount++
	ldr	r3, .L60		
	str	r2, [r3, #0]			@store breedingClickCount
	mov	r3, #0
.L59:
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
.L61:
	.align	2
.L60:			@variables used in breedDoves
	.word	breedingClickCount
	.word	breedingLevel
	.word	breedingInterest
	.word	doves
	.word	-858993459
	.size	breedDoves, .-breedDoves


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY ERIC THARMA            *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


	.align	2
	.global	getDoves
	.type	getDoves, %function
getDoves:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4				
	ldr	r3, .L63				@load doves
	ldr	r3, [r3, #0]
	add	r2, r3, #1				@doves++
	ldr	r3, .L63				
	str	r2, [r3, #0]			@load then store doves
	bl	netDoves				@netDoves()
	mov	r2, r0					
	ldr	r3, .L63				@load doves
	ldr	r3, [r3, #0]
	add	r2, r2, r3				@doves += return value from netDoves()
	ldr	r3, .L63				
	str	r2, [r3, #0]			@load then store doves
	bl	baitDoves				@baitDoves()
	mov	r2, r0
	ldr	r3, .L63				@load doves
	ldr	r3, [r3, #0]
	add	r2, r2, r3				@doves += return value from baitDoves()
	ldr	r3, .L63				
	str	r2, [r3, #0]			@load then store doves
	bl	breedDoves				@breedDoves()
	mov	r2, r0
	ldr	r3, .L63				
	ldr	r3, [r3, #0]
	add	r2, r2, r3				@doves += return value from breedDoves()
	ldr	r3, .L63				
	str	r2, [r3, #0]			@load then store doves
	ldmfd	sp!, {fp, pc}
.L64:
	.align	2
.L63:			@variables used in getDoves
	.word	doves
	.size	getDoves, .-getDoves


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY MATTHEW CHIANG         *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


/*********************************************************************************************************************/
/*help() commented by matthew chiang*/
	.section	.rodata
	.align	2
	@strings used throughout help function
	@game title and description string
.LC35:
	.ascii	"\011\011\011### DANCING DOVES ###\012 Welcome to Do"
	.ascii	"ve Dealer! As a young aspiring dove hunter, put you"
	.ascii	"r hunting\012 instincts to the test as you try to c"
	.ascii	"atch as many doves as possible. Cash\012 in your do"
	.ascii	"ves at the local shop where you can buy equipment t"
	.ascii	"o better \012 help you work your way up the dove hu"
	.ascii	"nting ranks! \012\000"
	.align	2
	@game controls string
.LC36:
	.ascii	"\011\011\011CONTROLS:\012\011\011<ENTER> - Go Hunti"
	.ascii	"ng \012\011\011b       - Shop\012\011\011q       - "
	.ascii	"Quit\012\000"
	.align	2
	@game quote string
.LC37:
	.ascii	"\"There is no hunting like the hunting of doves, an"
	.ascii	"d those who have hunted doves\012 long enough and l"
	.ascii	"iked it, never care for anything else thereafter.\""
	.ascii	" \012\011-Ernest Hemmingdove\012\000"
	.text
	.align	2
	.global	help 
	.type	help, %function
	@entry to the help function
help: 
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	@clears screen
	ldr	r0, .L66
	bl	printf
	@prints title and game description strings: ###DANCING DOVES###...
	ldr	r0, .L66+4
	bl	puts
	@prints controls: CONTROLS: <ENTER>...
	ldr	r0, .L66+8
	bl	puts
	@prints game quote: There is no hunting like the...
	ldr	r0, .L66+12
	bl	puts
	@restores stack pointer and stack frame
	ldmfd	sp!, {fp, pc}
.L67:
	.align	2
	@variables used by help 
.L66:
	.word	clearScreen
	.word	.LC35
	.word	.LC36
	.word	.LC37
	.size	help, .-help
/*********************************************************************************************************************/


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY MICHAEL LAYZELL        *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


/**
 * shop() inline strings - Commented/Translated by Michael Layzell
 * Pointers to these strings are found in the shopVars array
 * And the strings are used in the shop() function
 * In the original c program, these strings were inlined
 */
	.section	.rodata
	.align	2
.shopWelcomeMessage:
	.ascii	"Welcome to the shop! Choose what upgrade you would "
	.ascii	"like to purchase.\012\000"
	.align	2
.shopDovesMessage:
	.ascii	"You have %d doves to spend.\012\012\000"
	.align	2
.shopNetUMsg:
	.ascii	" 1: Upgrade Net - %d doves - %d doves per <ENTER>\012"
	.ascii	"\000"
	.align	2
.shopDescriptionFormat:
	.ascii	"    %s\012\012\000"
	.align	2
.shopNetDoneMsg:
	.ascii	" 1: Net Fully Upgraded!\012\000"
	.align	2
.shopDealerMsg:
	.ascii	" 2: Upgrade Dealer - %d doves - %d dove discount on"
	.ascii	" upgrades\012\000"
	.align	2
.shopDealerDoneMsg:
	.ascii	" 2: Dealer Fully Upgraded!\012\000"
	.align	2
.shopBaitMsg:
	.ascii	" 3: Upgrade Bait - %d doves - %d doves per 10 <ENTE"
	.ascii	"R>s\012\000"
	.align	2
.shopBaitDoneMsg:
	.ascii	" 3: Bait Fully Upgraded!\012\000"
	.align	2
.shopBreedingMsg:
	.ascii	" 4: Upgrade Breeding - %d doves - %d new doves/10 d"
	.ascii	"oves every 100 <ENTER>s\012\000"
	.align	2
.shopBreedingDoneMsg:
	.ascii	" 4: Breeding Fully Upgraded!\012\000"
	.align	2
.shopHelpMsg:
	.ascii	"Type <ENTER> to exit the store\000"
	.align	2
.charPrompt:
	.ascii	"> \000"

	.text
	.align	2
	.global	shop
	.type	shop, %function
/**
 * void shop() {} - Commented/Translated by Michael Layzell
 * Based on compiled code (changes made to simplify)
 *
 * LOCAL VARIABLES:
 * c (byte/char): [fp, #-13]
 */
shop:
	@ Save the frame on the stack, and allocate space on the stack
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #12

	@@ printf(clearScreen);
	ldr	r0, .shopVars
	bl	printf

	@@ printf("Welcome to the ...");
	ldr	r0, .shopVars+4
	bl	printf

	@@ printf("You have %d doves ...", doves);
	ldr	r0, .shopVars+8
	ldr	r3, .shopVars+12
	ldr	r1, [r3]
	bl	printf

.shopNetDisplay:
	@@ if (netLevel > 7) GOTO .shopNetDone
	ldr	r3, .shopVars+16
	ldr	r3, [r3]
	cmp	r3, #7
	bhi	.shopNetDone

	@@ r1 (parameter 2) = getPrice(netLevel + 1)
	ldr	r0, .shopVars+16
	ldr	r0, [r0]
	add	r0, r0, #1
	bl	getPrice
	mov	r1, r0

	@@ r2 (parameter 3) = netBonusDoves[netLevel + 1];
	ldr	r3, .shopVars+16
	ldr	r3, [r3]
	add	r2, r3, #1
	ldr	r3, .shopVars+24
	ldr	r2, [r3, r2, asl #2]

	@@ printf(" 1: Upgrade Net ...", getPrice(netLevel + 1),
	@@                               netBonusDoves[netLevel + 1]);
	ldr	r0, .shopVars+20
	bl	printf

	@@ r1 (parameter 2) = netDescriptions[netLevel];
	ldr	r3, .shopVars+16
	ldr	r1, [r3]
	ldr	r3, .shopVars+32
	ldr	r1, [r3, r1, asl #2]

	@@ printf("    %s\n\n", netDescriptions[netLevel]);
	ldr	r0, .shopVars+28
	bl	printf

	@ Skip .shopNetDone
	b	.shopDealerDisplay

.shopNetDone:
	@@ printf(" 1: Net Fully Upgraded!\n");
	ldr	r0, .shopVars+36
	bl	puts

.shopDealerDisplay:
	@@ if (dealerLevel > 7) GOTO .shopDealerDone
	ldr	r3, .shopVars+40
	ldr	r3, [r3]
	cmp	r3, #7
	bhi	.shopDealerDone

	@@ r1 (parameter 2) = getPrice(dealerLevel + 1);
	ldr	r3, .shopVars+40
	ldr	r3, [r3]
	add	r0, r3, #1
	bl	getPrice
	mov	r1, r0

	@@ r2 (parameter 3) = dealerDiscounts[dealerLevel + 1];
	ldr	r3, .shopVars+40
	ldr	r3, [r3]
	add	r2, r3, #1
	ldr	r3, .shopVars+48
	ldr	r2, [r3, r2, asl #2]

	@@ printf(" 2: Upgrade Dealer ...", getprice(dealerLevel + 1),
	@@                                  dealerDiscoints[dealerLevel + 1]);
	ldr	r0, .shopVars+44
	bl	printf

	@@ r1 (parameter 2) = dealerDescriptions[dealerLevel];
	ldr	r3, .shopVars+40
	ldr	r1, [r3]
	ldr	r3, .shopVars+52
	ldr	r1, [r3, r1, asl #2]

	@@ printf("    %s\n\n", dealerDescriptions[dealerLevel]);
	ldr	r0, .shopVars+28       @ Load description format string
	bl	printf

	@ Skip shopDealerDone
	b	.shopBaitDisplay

.shopDealerDone:
	@@ printf(" 2: Dealer Fully Upgraded!\n");
	ldr	r0, .shopVars+56
	bl	puts

.shopBaitDisplay:
	@@ if (baitLevel > 7) GOTO .shopBaitDone
	ldr	r3, .shopVars+60
	ldr	r3, [r3]
	cmp	r3, #7
	bhi	.shopBaitDone

	@@ r1 (parameter 2) = getPrice(baitLevel + 1);
	ldr	r3, .shopVars+60
	ldr	r3, [r3]
	add	r0, r3, #1
	bl	getPrice
	mov	r1, r0

	@@ r2 (parameter 3) = baitBonusDoves[baitLevel + 1];
	ldr	r3, .shopVars+60
	ldr	r3, [r3]
	add	r2, r3, #1
	ldr	r3, .shopVars+68
	ldr	r2, [r3, r2, asl #2]

	@@ printf(" 3: Upgrade Bait ...", getPrice(baitLevel + 1),
	@@                                baitBonusDoves[baitLevel + 1]);
	ldr	r0, .shopVars+64
	bl	printf

	@@ r1 (parameter 2) = baitDescriptions[baitLevel];
	ldr	r3, .shopVars+60
	ldr	r1, [r3]
	ldr	r3, .shopVars+72
	ldr	r1, [r3, r1, asl #2]

	@@ printf("    %s\n\n", baitDescriptions[baitLevel]);
	ldr	r0, .shopVars+28
	bl	printf

	@ Skip shopBaitDone
	b	.shopBreedingDisplay

.shopBaitDone:
	@@ printf(" 3: Bait Fully Upgraded!\n");
	ldr	r0, .shopVars+76
	bl	puts

.shopBreedingDisplay:
	@@ if (breedingLevel > 7) GOTO .shopBreedingDone
	ldr	r3, .shopVars+80
	ldr	r3, [r3]
	cmp	r3, #7
	bhi	.shopBreedingDone

	@@ r1 (parameter 2) = getPrice(breedingLevel + 1);
	ldr	r3, .shopVars+80
	ldr	r3, [r3]
	add	r0, r3, #1
	bl	getPrice
	mov	r1, r0

	@@ r2 (parameter 3) = breedingInterest[breedingLevel + 1];
	ldr	r3, .shopVars+80
	ldr	r3, [r3]
	add	r2, r3, #1
	ldr	r3, .shopVars+88
	ldr	r2, [r3, r2, asl #2]

	@@ printf(" 2: Upgrade Breeding ...", getPrice(breedingLevel + 1),
	@@                                    breedingInterest[breedingLevel + 1]);
	ldr	r0, .shopVars+84
	bl	printf

	@@ r1 (parameter 2) = breedingDescriptions[breedingLevel];
	ldr	r3, .shopVars+80
	ldr	r1, [r3]
	ldr	r3, .shopVars+92
	ldr	r1, [r3, r1, asl #2]

	@@ printf("    %s\n\n", breedingDescriptions[breedingLevel]);
	ldr	r0, .shopVars+28
	bl	printf

	@ Skip .shopBreedingDone
	b	.shopDisplayPrompt

.shopBreedingDone:
	@@ printf(" 4: Breeding Fully Upgraded!\n");
	ldr	r0, .shopVars+96
	bl	puts

.shopDisplayPrompt:
	@@ printf("Type <ENTER> to exit the store\n");
	ldr	r0, .shopVars+100
	bl	puts

	@@ printf("> ");
	ldr	r0, .shopVars+104
	bl	printf

	@@ c = getFirstCharOfLine();
	bl	getFirstCharOfLine
	strb	r0, [fp, #-13]

.shopMaybeBuyNet:
	@@ if (c != '1') GOTO .shopMaybeBuyDealer
	ldrb	r3, [fp, #-13]
	cmp	r3, #49
	bne	.shopMaybeBuyDealer

	@@ else buy(&netLevel);
	ldr	r0, .shopVars+16
	bl	buy

	@@ return (GOTO exit)
	b	.shopExit

.shopMaybeBuyDealer:
	@@ if (c != '2') GOTO .shopMaybeBuyBait
	ldrb	r3, [fp, #-13]
	cmp	r3, #50
	bne	.shopMaybeBuyBait

	@@ else buy(&dealerLevel);
	ldr	r0, .shopVars+40
	bl	buy

	@@ return (GOTO exit)
	b	.shopExit

.shopMaybeBuyBait:
	@@ if (c != '3') GOTO .shopMaybeBuyBreeding
	ldrb	r3, [fp, #-13]
	cmp	r3, #51
	bne	.shopMaybeBuyBreeding

	@@ else buy(&baitLevel);
	ldr	r0, .shopVars+60
	bl	buy

	@@ return (GOTO exit)
	b	.shopExit

.shopMaybeBuyBreeding:
	@@ if (c != '4') return (GOTO exit)
	ldrb	r3, [fp, #-13]
	cmp	r3, #52
	bne	.shopExit

	@@ else buy(&breedingLevel);
	ldr	r0, .shopVars+80
	bl	buy

.shopExit:
	@@ Restore stack pointer & restore stack frame
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, pc}

/* variables used by main() */
	.align	2
.shopVars:
	.word	clearScreen
	.word	.shopWelcomeMessage
	.word	.shopDovesMessage
	.word	doves
	.word	netLevel
	.word	.shopNetUMsg
	.word	netBonusDoves
	.word	.shopDescriptionFormat
	.word	netDescriptions
	.word	.shopNetDoneMsg
	.word	dealerLevel
	.word	.shopDealerMsg
	.word	dealerDiscounts
	.word	dealerDescriptions
	.word	.shopDealerDoneMsg
	.word	baitLevel
	.word	.shopBaitMsg
	.word	baitBonusDoves
	.word	baitDescriptions
	.word	.shopBaitDoneMsg
	.word	breedingLevel
	.word	.shopBreedingMsg
	.word	breedingInterest
	.word	breedingDescriptions
	.word	.shopBreedingDoneMsg
	.word	.shopHelpMsg
	.word	.charPrompt
	.size	shop, .-shop

/* shop() END */


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY MATTHEW CHIANG         *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


/*********************************************************************************************************************/	
/*currentUpgrades commented by matthew chiang*/
	.section	.rodata
	.align	2
.LC51:
	.ascii	"\012## CURRENT UPGRADES ##\000"
	.align	2
.LC52:
	.ascii	" Net (level %d)      - %u doves per <ENTER>\012\000"
	.align	2
.LC53:
	.ascii	" Dealer (level %d)   - %d dove discount on upgrades"
	.ascii	"\012\000"
	.align	2
.LC54:
	.ascii	" Bait (level %d)     - %d doves in %d <ENTER>s\012\000"
	.align	2
.LC55:
	.ascii	" Breeding (level %d) - %d new doves in %d <ENTER>s\012"
	.ascii	"\000"
	.text
	.align	2
	.global	currentUpgrades
	.type	currentUpgrades, %function
@entry to currentUpgrades function
currentUpgrades:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@allocating space for stack and frame pointers
	stmfd	sp!, {r4, r5, fp, lr}
	add	fp, sp, #12
	@prints ###CURRENT UPGRADES###
	ldr	r0, .L84
	bl	puts
	@loads net level string (LC52) and netLevel and prepares to call getNetBonus()
	ldr	r5, .L84+4
	ldr	r3, .L84+8
	ldr	r4, [r3, #0]
	@calls getNetBonus()
	bl	getNetBonus
	@prints the net level string, netLevel, and value returned by getNetBonus()
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
	bl	printf
	@loads dealer level string (LC53) and dealerLevel and prepares to call getDealerBonus()
	ldr	r5, .L84+12
	ldr	r3, .L84+16
	ldr	r4, [r3, #0]
	@calls getDealerBonus()
	bl	getDealerDiscountBonus
	@prints the dealer level string, dealerLevel, and value returned by getDealerBonus()
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
	bl	printf
	@loads bait level string (LC54), baitLevel and prepares to call getBaitBonus()
	ldr	r5, .L84+20
	ldr	r3, .L84+24
	ldr	r4, [r3, #0]
	@calls getBaitBonus
	bl	getBaitBonus
	mov	r2, r0
	ldr	r3, .L84+28
	@subtracts baitClickCount (.L84+#28) from 10
	ldr	r3, [r3, #0]
	rsb	r3, r3, #10
	@prints the bait level string, baitLevel,value returned by getBaitBonus() and 10-baitClickCount
	mov	r0, r5
	mov	r1, r4
	bl	printf
	@loads breeding level string (LC55), breedingLevel and prepares to call getBreedingBonus()
	ldr	r5, .L84+32
	ldr	r3, .L84+36
	ldr	r4, [r3, #0]
	@calls getBreedingBonus
	bl	getBreedingBonus
	mov	r2, r0
	ldr	r3, .L84+40
	@subtracts breedingClickCount (.L84+#40) from 100
	ldr	r3, [r3, #0]
	rsb	r3, r3, #100
	mov	r0, r5
	mov	r1, r4
	bl	printf
	@restores stack and frame pointers
	ldmfd	sp!, {r4, r5, fp, pc}
.L85:
	.align	2
@variables used throughout currentUpgrades()
.L84:
	.word	.LC51
	.word	.LC52
	.word	netLevel
	.word	.LC53
	.word	dealerLevel
	.word	.LC54
	.word	baitLevel
	.word	baitClickCount
	.word	.LC55
	.word	breedingLevel
	.word	breedingClickCount
	.size	currentUpgrades, .-currentUpgrades
/*********************************************************************************************************************/


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY MATTHEW CHIANG         *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


/*********************************************************************************************************************/
/*displaySales commented by matthew chiang*/
	.section	.rodata
	.align	2
.LC56:
	.ascii	"\012SALE! SALE! Everything an extra %d%c off! Today"
	.ascii	" only!\012\000"
	.text
	.align	2
	.global	displaySales
	.type	displaySales, %function
displaySales:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	@allocating space for frame and stack pointer
	add	fp, sp, #4
	sub	sp, sp, #8
	@sale = rand() at fp#-8
	bl	rand 
	str	r0, [fp, #-8]
	@currentSale = 0 at r2
	ldr	r3, .L88
	mov	r2, #0
	str	r2, [r3, #0]
	@compares sale to 30000. 
	ldr	r2, [fp, #-8]
	ldr	r3, .L88+4
	cmp	r2, r3
	@if sale < 30000 (branch to .L86)
	bls	.L86
	@if sale > 30000
	@load sale to r1, and string "SALE! SALE..." into r3 
	ldr	r1, [fp, #-8]
	ldr	r3, .L88+8
	@sale % 60 into r2
	umull	r2, r3, r3, r1
	mov	r2, r3, lsr #5
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	rsb	r2, r3, r1
	@sale % 60 + 1 into r2
	add	r2, r2, #1
	@currentSale = value at r2 (sale % 60 + 1)
	ldr	r3, .L88
	str	r2, [r3, #0]
	@loads sale description string (LC56) and currentSale into registers
	ldr	r2, .L88+12
	ldr	r3, .L88
	ldr	r3, [r3, #0]
	@prints sale description string with currentSale
	mov	r0, r2
	mov	r1, r3
	mov	r2, #37
	bl	printf
@if sale < 30000, function does nothing. restore sp and fp
.L86:
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L89:
	.align	2
/* variables used within displaySale */
.L88:
	.word	currentSale
	.word	30000
	.word	-2004318071
	.word	.LC56
	.size	displaySales, .-displaySales
/*********************************************************************************************************************/


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY ELLIOTT WRIGHT         *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


/************************************************************************************************/
					/*			Commented by Elliott Wright				*/
	
	.align	2
	.global	getAchievements
	.type	getAchievements, %function
getAchievements:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4		@Save frame and allocate space on stack
	
	
	ldr	r3, .L104
	ldr	r3, [r3, #0]  
	cmp	r3, #99
	bls	.L91		@if doves <= 100 goto .L91 (skip unlocking achievment)
	ldr	r3, .L104+4
	ldr	r3, [r3, #0]
	orr	r2, r3, #1	@Unlocks achievment
	ldr	r3, .L104+4
	str	r2, [r3, #0] 
.L91:
	bl	countUpgrades
	mov	r3, r0
	cmp	r3, #0
	beq	.L92		@if countupgrades is == 0 skip unlocking upgrade
	ldr	r3, .L104+4
	ldr	r3, [r3, #0]
	orr	r2, r3, #2	@Unlocks achievment
	ldr	r3, .L104+4
	str	r2, [r3, #0]	
.L92:
	ldr	r3, .L104+8
	ldr	r3, [r3, #0]
	cmp	r3, #8		
	bne	.L93		@if dealerlevel != 8 skip unlocking upgrade 
	ldr	r3, .L104+4
	ldr	r3, [r3, #0]
	orr	r2, r3, #4		@Unlocks achievment
	ldr	r3, .L104+4
	str	r2, [r3, #0]	
.L93:
	ldr	r3, .L104+12
	ldr	r3, [r3, #0]
	cmp	r3, #8
	bne	.L94		@if netlevel != 8 skip unlocking upgrade 
	ldr	r3, .L104+4
	ldr	r3, [r3, #0]
	orr	r2, r3, #8		@Unlocks achievment
	ldr	r3, .L104+4
	str	r2, [r3, #0]	
.L94:
	ldr	r3, .L104+16
	ldr	r3, [r3, #0]
	cmp	r3, #8
	bne	.L95		@if baitlevel != 8 skip unlocking upgrade 
	ldr	r3, .L104+4
	ldr	r3, [r3, #0]
	orr	r2, r3, #16		@Unlocks achievment
	ldr	r3, .L104+4
	str	r2, [r3, #0]	
.L95:
	ldr	r3, .L104+20
	ldr	r3, [r3, #0]
	cmp	r3, #8
	bne	.L96			@if netlevel != 8 skip unlocking upgrade 
	ldr	r3, .L104+4
	ldr	r3, [r3, #0]
	orr	r2, r3, #32		@Unlocks achievment
	ldr	r3, .L104+4
	str	r2, [r3, #0]	
.L96:
	ldr	r3, .L104
	ldr	r2, [r3, #0]
	ldr	r3, .L104+24
	cmp	r2, r3
	bls	.L97			@if doves < 1000 skip unlocking upgrade
	ldr	r3, .L104+4
	ldr	r3, [r3, #0]
	orr	r2, r3, #64		@Unlocks achievment
	ldr	r3, .L104+4
	str	r2, [r3, #0]	
.L97:
	ldr	r3, .L104
	ldr	r2, [r3, #0]
	ldr	r3, .L104+28
	cmp	r2, r3
	bls	.L98			@if doves < 10000 skip unlocking upgrade
	ldr	r3, .L104+4
	ldr	r3, [r3, #0]
	orr	r2, r3, #128	@Unlocks achievment
	ldr	r3, .L104+4
	str	r2, [r3, #0]	
.L98:
	ldr	r3, .L104
	ldr	r2, [r3, #0]
	ldr	r3, .L104+32
	cmp	r2, r3
	bls	.L99			@if doves < 100000 skip unlocking upgrade
	ldr	r3, .L104+4
	ldr	r3, [r3, #0]
	orr	r2, r3, #256	@Unlocks achievment
	ldr	r3, .L104+4
	str	r2, [r3, #0]	
.L99:
	ldr	r3, .L104
	ldr	r2, [r3, #0]
	ldr	r3, .L104+36
	cmp	r2, r3
	bls	.L100			@if doves < 1000000 skip unlocking upgrade
	ldr	r3, .L104+4
	ldr	r3, [r3, #0]
	orr	r2, r3, #512	@Unlocks achievment
	ldr	r3, .L104+4
	str	r2, [r3, #0]	
.L100:
	ldr	r3, .L104
	ldr	r2, [r3, #0]
	ldr	r3, .L104+40
	cmp	r2, r3	
	bls	.L101			@if doves < 10000000 skip unlocking upgrade
	ldr	r3, .L104+4
	ldr	r3, [r3, #0]
	orr	r2, r3, #1024	@Unlocks achievment
	ldr	r3, .L104+4
	str	r2, [r3, #0]	
.L101:
	ldr	r3, .L104
	ldr	r2, [r3, #0]
	ldr	r3, .L104+44
	cmp	r2, r3
	bls	.L102			@if doves < 100000000 skip unlocking upgrade
	ldr	r3, .L104+4
	ldr	r3, [r3, #0]
	orr	r2, r3, #2048	@Unlocks achievment
	ldr	r3, .L104+4
	str	r2, [r3, #0]	
.L102:
	ldr	r3, .L104
	ldr	r2, [r3, #0]
	ldr	r3, .L104+48
	cmp	r2, r3
	bls	.L90		@if doves < 1000000000 skip unlocking upgrade
	ldr	r3, .L104+4
	ldr	r3, [r3, #0]
	orr	r2, r3, #4096	@Unlocks achievment
	ldr	r3, .L104+4
	str	r2, [r3, #0]	
.L90:
	ldmfd	sp!, {fp, pc} @restore old frame to stack 
.L105:
	.align	2
.L104:
	.word	doves
	.word	achievements
	.word	dealerLevel		@vars
	.word	netLevel
	.word	baitLevel		@vars
	.word	breedingLevel
	.word	999
	.word	9999			@vars
	.word	99999
	.word	999999
	.word	9999999			@vars
	.word	99999999
	.word	999999999
	.size	getAchievements, .-getAchievements
/********************************************************************************************/


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY ERIC THARMA            *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


	.section	.rodata
	.align	2
.LC57:
	.ascii	"## ACHIEVEMENTS ##\000"
	.align	2
.LC58:
	.ascii	"TIME TO BUY AN UPGRADE!\000"
	.align	2
.LC59:
	.ascii	"Upgrade GET!\000"
	.align	2
.LC60:
	.ascii	"Discount Master!\000"
	.align	2
.LC61:
	.ascii	"Net Master!\000"
	.align	2
.LC62:
	.ascii	"Bait Master!\000"
	.align	2
.LC63:
	.ascii	"Breeding Master!\000"
	.align	2
.LC64:
	.ascii	"A thousand doves!\000"
	.align	2
.LC65:
	.ascii	"Ten thousand doves!\000"
	.align	2
.LC66:
	.ascii	"ONE HUNDRED thousand doves!\000"
	.align	2
.LC67:
	.ascii	"A million!! doves!\000"
	.align	2
.LC68:
	.ascii	"TEN MILLION!! doves!\000"
	.align	2
.LC69:
	.ascii	"A HUNDRED MILLION!! doves!\000"
	.align	2
.LC70:
	.ascii	"BILLIONS OF DOVES OH MY GOODNESS!\000"
	.text
	.align	2
	.global	displayAchievements
	.type	displayAchievements, %function
displayAchievements:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	ldr	r0, .L120				@load "## ACHIEVEMENTS ##\000"
	bl	puts					@print "## ACHIEVEMENTS ##\000"
	ldr	r3, .L120+4				@load achievements
	ldr	r3, [r3, #0]
	and	r3, r3, #1				@achievements & 0x1
	uxtb	r3, r3				@extended byte from 8-bit to 32-bit
	cmp	r3, #0					
	beq	.L107					@if (achievements & 0x1) == 0, branch to next if
	ldr	r0, .L120+8				@load "TIME TO BUY AN UPGRADE!\000"
	bl	puts					@print "TIME TO BUY AN UPGRADE!\000"
.L107:
	ldr	r3, .L120+4				@load achievements
	ldr	r3, [r3, #0]			
	and	r3, r3, #2				@achievements & 0x2
	cmp	r3, #0
	beq	.L108					@if (achievements & 0x2) == 0, branch to next if
	ldr	r0, .L120+12			@load "Upgrade GET!\000"
	bl	puts					@print "Upgrade GET!\000"
.L108:
	ldr	r3, .L120+4				@load achievements
	ldr	r3, [r3, #0]		
	and	r3, r3, #4				@achievements & 0x4
	cmp	r3, #0				
	beq	.L109					@if (achievements & 0x4) == 0, branch to next if
	ldr	r0, .L120+16			@load "Discount Master!\000"
	bl	puts					@print "Discount Master!\000"
.L109:
	ldr	r3, .L120+4				@load achievements
	ldr	r3, [r3, #0]
	and	r3, r3, #8				@achievements & 0x8
	cmp	r3, #0
	beq	.L110					@if (achievements & 0x8) == 0, branch to next if
	ldr	r0, .L120+20			@load "Net Master!\000"
	bl	puts					@print "Net Master!\000"
.L110:
	ldr	r3, .L120+4				@load achievements
	ldr	r3, [r3, #0]
	and	r3, r3, #16				@achievements & 0x16
	cmp	r3, #0
	beq	.L111					@if (achievements & 0x16) == 0, branch to next if
	ldr	r0, .L120+24			@load "Bait Master!\000"
	bl	puts					@print "Bait Master!\000"
.L111:
	ldr	r3, .L120+4				@load achievements
	ldr	r3, [r3, #0]
	and	r3, r3, #32				@achievements & 0x32
	cmp	r3, #0
	beq	.L112					@if (achievements & 0x32) == 0, branch to next if		
	ldr	r0, .L120+28			@load "Breeding Master!\000"
	bl	puts					@print "Breeding Master!\000"
.L112:
	ldr	r3, .L120+4				@load achievements
	ldr	r3, [r3, #0]
	and	r3, r3, #64				@achievements & 0x64
	cmp	r3, #0
	beq	.L113					@if (achievements & 0x64) == 0, branch to next if
	ldr	r0, .L120+32			@load "A thousand doves!\000"
	bl	puts					@print "A thousand doves!\000"
.L113:
	ldr	r3, .L120+4				@load achievements
	ldr	r3, [r3, #0]
	and	r3, r3, #128			@achievements & 0x128
	cmp	r3, #0
	beq	.L114					@if (achievements & 0x128) == 0, branch to next if
	ldr	r0, .L120+36			@load "Ten thousand doves!\000"
	bl	puts					@print "Ten thousand doves!\000"
.L114:
	ldr	r3, .L120+4				@load achievements
	ldr	r3, [r3, #0]
	and	r3, r3, #256			@achievements & 0x256
	cmp	r3, #0
	beq	.L115					@if (achievements & 0x256) == 0, branch to next if
	ldr	r0, .L120+40			@load "ONE HUNDRED thousand doves!\000"
	bl	puts					@print "ONE HUNDRED thousand doves!\000"
.L115:
	ldr	r3, .L120+4				@load achievements
	ldr	r3, [r3, #0]
	and	r3, r3, #512			@achievements & 0x512
	cmp	r3, #0
	beq	.L116					@if (achievements & 0x512) == 0, branch to next if
	ldr	r0, .L120+44			@load "A million!! doves!\000"
	bl	puts					@print "A million!! doves!\000"
.L116:
	ldr	r3, .L120+4				@load achievements
	ldr	r3, [r3, #0]
	and	r3, r3, #1024			@achievements & 0x1024
	cmp	r3, #0
	beq	.L117					@if (achievements & 0x1024) == 0, branch to next if
	ldr	r0, .L120+48			@load "TEN MILLION!! doves!\000"
	bl	puts					@print "TEN MILLION!! doves!\000"
.L117:
	ldr	r3, .L120+4				@load achievements
	ldr	r3, [r3, #0]
	and	r3, r3, #2048			@achievements & 0x2048
	cmp	r3, #0
	beq	.L118					@if (achievements & 0x2048) == 0, branch to next if
	ldr	r0, .L120+52			@load "A HUNDRED MILLION!! doves!\000"
	bl	puts					@print "A HUNDRED MILLION!! doves!\000"
.L118:
	ldr	r3, .L120+4				@load achievements
	ldr	r3, [r3, #0]
	and	r3, r3, #4096			@achievements & 0x4096
	cmp	r3, #0
	beq	.L106					@if (achievements & 0x4096) == 0, branch to next if
	ldr	r0, .L120+56			@load "BILLIONS OF DOVES OH MY GOODNESS!\000"
	bl	puts					@print "BILLIONS OF DOVES OH MY GOODNESS!\000"
.L106:
	ldmfd	sp!, {fp, pc}
.L121:
	.align	2
.L120:			@variables used in displayAchievements
	.word	.LC57				@"## ACHIEVEMENTS ##\n"
	.word	achievements
	.word	.LC58				@"TIME TO BUY AN UPGRADE!\n"
	.word	.LC59				@"Upgrade GET!\n"
	.word	.LC60				@"Discount Master!\n"
	.word	.LC61				@"Net Master!\n"
	.word	.LC62				@"Bait Master!\n"
	.word	.LC63				@"Breeding Master!\n"
	.word	.LC64				@"A thousand doves!\n"
	.word	.LC65				@"Ten thousand doves!\n"
	.word	.LC66				@"ONE HUNDRED thousand doves!\n"
	.word	.LC67				@"A million!! doves!\n"
	.word	.LC68				@"TEN MILLION!! doves!\n"
	.word	.LC69				@"A HUNDRED MILLION!! doves!\n"
	.word	.LC70				@"BILLIONS OF DOVES OH MY GOODNESS!\n"
	.size	displayAchievements, .-displayAchievements


/****************************************
 * CODE IS COMMENTED GENERATED ASSEMBLY *
 * COMMENTING BY MICHAEL LAYZELL        *
 * MADE FOR CISC 221 ASSIGNMENT 1       *
 * WINTER 2014 - GROUP 10               *
 ***************************************/


/**
 * main() inline strings - Commented/Translated by Michael Layzell
 * Pointers to these strings are found in the mainVars array
 * And the strings are used in the main() function
 * In the original c program, these strings were inlined
 */
	.section	.rodata
	.align	2
.mainPrompt:
	.ascii	"\012%d doves - %d/32 upgrades\012\000"
	.align	2
.mainGoodbye:
	.ascii	"Game over - you acquired %d/32 upgrades\012\000"
	.text
	.align	2
	.global	main
	.type	main, %function

/**
 * int main() {} - Commented/Translated by Michael Layzell
 * Based on compiled code (changes made to simplify)
 *
 * LOCAL VARIABLES:
 * c (byte/char): [fp, #-13]
 */
main:
	stmfd	sp!, {r4, r5, fp, lr} @ Save the frame on the stack
	add	fp, sp, #12           @ Move the frame pointer
	sub	sp, sp, #8            @ Make room for local variables in main

.mainloop:
	@ Call other functions to display the prompt's preamble
	@@ help()
	bl	help                  @ Display the game's help

	@@ getAchievements()
	bl	getAchievements       @ Check if you should get any new achievements

	@@ displayAchievements()
	bl	displayAchievements   @ Display any current achievements

	@@ currentUpgrades()
	bl	currentUpgrades       @ Display the current upgrade status

	@@ displaySales()
	bl	displaySales          @ Display sales (if any)

	@ Print the main prompt
	bl	countUpgrades         @ Count the # of upgrades and save it in r2 (parameter 3)
	@@ printf("%d doves - ...", doves);
	mov	r2, r0
	ldr	r0, .mainVars         @ Load the prompt into r0 (parameter 1)
	ldr	r1, .mainVars+4       @ Load the number of doves into r1 (parameter 2)
	ldr	r1, [r1]
	bl	printf                @ Call printf

	@@ printf("> ");
	ldr	r0, .mainVars+8       @ Load a pointer to the "> " prompt into r3
	bl	printf                @ Print the "> " prompt

	@@ c = getFirstCharOfLine();
	bl	getFirstCharOfLine
	strb	r0, [fp, #-13]

.mainMaybeDoves: @ Check if '\n' entered (going dove hunting)
	@@ if (c != '\n') GOTO .mainMaybeStore
	ldrb	r3, [fp, #-13]
	cmp	r3, #10               @ Check if c is '\n' (decimal ASCII 10) (get new doves)
	bne	.mainMaybeStore       @ It wasn't, move on to checking stores

	@@ getDoves()
	bl	getDoves              @ If it is, then get some doves

	@ Skip Remaining Maybes
	b	.mainClearScreen      @ And clear the screen

.mainMaybeStore: @ Check if 'b' entered (going to the shop)
	@@ if (c != 'b') GOTO .mainMaybeExit
	ldrb	r3, [fp, #-13]
	cmp	r3, #98               @ Check if (c) is 98 ('b')
	bne	.mainMaybeExit

	@@ shop()
	bl	shop                  @ If it is, visit the store, then clear screen

	@ Skip Remaining Maybes
	b	.mainClearScreen

.mainMaybeExit: @ Check if 'q' entered (quit the game)
	@@ if (c == 'q') GOTO .mainExit
	ldrb	r3, [fp, #-13]
	cmp	r3, #113              @ Check if (c) is 113 ('q')
	beq	.mainExit             @ If it is, exit the program, otherwise clear screen and loop

.mainClearScreen:
	@@ printf(clearScreen);
	ldr	r0, .mainVars+12      @ Load the ANSI clear screen code
	bl	printf                @ Print it to the screen

	@ Loop back into the main loop
	b	.mainloop             @ Loop back to the beginning

.mainExit:
	@@ r1 = countUpgrades()
	bl	countUpgrades         @ Count the number of upgrades
	mov	r1, r0                @ Move the return value to the second parameter

	@@ printf("Game over - ...", countUpgrades());
	ldr	r0, .mainVars+16      @ Load the format string into r0
	bl	printf                @ Print the number of upgrades acquired

	@@ return 0;
	mov	r0, #0                @ Set the return value to 0
	sub	sp, fp, #12           @ Return the stack pointer to its old value
	ldmfd	sp!, {r4, r5, fp, pc} @ Restore the old frame to the stack (and return)

/* variables used by main() */
	.align	2
.mainVars:
	.word	.mainPrompt
	.word	doves
	.word	.charPrompt
	.word	clearScreen
	.word	.mainGoodbye
	.size	main, .-main
/* int main() {} END */

