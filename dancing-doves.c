#include <stdio.h>

// The maximum level of an upgrade is 8
#define MAX_LEVEL 8

// Current upgrade levels
unsigned netLevel = 0;
unsigned dealerLevel = 0;
unsigned baitLevel = 0;
unsigned breedingLevel = 0;

// Current number of doves
unsigned doves = 0;

// Click Counters
unsigned baitClickCount = 0;
unsigned breedingClickCount = 0;

// The current discount (%)
unsigned currentSale = 0;

// Achievements
unsigned achievements = 0;

// ANSI escape code for clearing the screen
const char clearScreen[] = "\x1B[2J\x1B[H";

// Bonus Magnitudes
const unsigned netBonusDoves[] = {0,1,2,3,4,5,6,7,8};
const unsigned dealerDiscounts[] = {0,30,60,120,240,480,960,1920,3840};
const unsigned baitBonusDoves[] = {0,10,30,60,100,150,210,280,360};
const unsigned breedingInterest[] = {0,1,2,3,4,5,6,7,8};

// Descriptions of the bonuses
// These will only be displayed in the shop function
const char* netDescriptions[] = {
	"A net", 
	"A better net", 
	"An even better net", 
	"SILK NET", 
	"SILKIER NET", 
	"SILKIEST NET", 
	"GOLDEN NET OF AWESOME", 
	"MAGIC GOLDEN NET OF AWESOME"};
const char* dealerDescriptions[] = {
	"Dealer",
	"Better Dealer",
	"Betterer Dealer",
	"Bettererer Dealer",
	"Dealer of doves",
	"Dove Lord",
	"Dove Baron",
	"Dove Kingpin"};
const char* baitDescriptions[] = {
	"Bait",
	"Better Bait",
	"Even better bait",
	"Even better than better bait",
	"The ol' bait and switch",
	"A dead female duck",
	"A live female duck, so much better",
	"Masta Bait"};
const char* breedingDescriptions[] = {
	"Pheromones",
	"Dove pheromones",
	"Even better dove pheromones",
	"A breeding box",
	"A breeding castle",
	"Pillows",
	"Smooth jazz",
	"All of the above + dovematch.com"};

// PRNG - generates a "random" number between 0 and 32767
// Because we don't have access to a good seed, the pattern will be identical every run
unsigned long srand = 1;
unsigned rand() {
	srand = srand * 1103515245 + 12345;
	return (unsigned)(srand / 65536) % 32768;
}

unsigned getNetBonus() {
	unsigned i, bonus;
	for (i=0; i<=netLevel; i++) {
		bonus += netBonusDoves[i];
	}

	return bonus;
}

unsigned getDealerDiscountBonus() {
	unsigned i, bonus;
	for (i=0; i<=dealerLevel; i++) {
		bonus += dealerDiscounts[i];
	}

	return bonus;
}

unsigned getBaitBonus() {
	unsigned i, bonus;
	for (i=0; i<=baitLevel; i++) {
		bonus += baitBonusDoves[i];
	}

	return bonus;
}

unsigned getBreedingBonus() {
	unsigned i, bonus;
	for (i=0; i<= breedingLevel; i++) {
		bonus += breedingInterest[i];
	}

	bonus *= (doves / 10);

	return bonus;
}

char getFirstCharOfLine() {
	// Gets and returns the first character from a line of input
	// Discards the rest of the line

	char c, ret;
	c = getc(stdin);
	ret = c;

	// Discard the rest of the line
	while (c != '\n')
		c = getc(stdin);

	return ret;
}

unsigned getPrice(unsigned level) {
	// Returns the price for acquiring the level of upgrade
	// Should also take the dealer level into account

	unsigned discount = getDealerDiscountBonus();
	unsigned price = (level*level*level*level)*100;

	if (discount > price)
		return 0;	
	else {
		price = price - discount;
		price = price - (price * currentSale) / 100;

		return price;
	}
}

int canUpgrade(unsigned *upgrade) {
	// Checks if the type of upgrade is already maxed
	// Checks if you have enough money to buy the upgrade
	// If you do, return the price
	// otherwise return -1

	unsigned price;

	if (*upgrade >= MAX_LEVEL) // Cannot upgrade past max level
		return -1;

	// Return the price
	price = getPrice((*upgrade) + 1);
	if (price <= doves){
		return price;
	} else {
		return -1;
	}
}

void buy(unsigned *upgrade) {
	// Checks if you can buy the upgrade (call canUpgrade())
	// If you can, subtracts the cost from money, and gets the upgrade
	// Otherwise, prints out a warning, and returns

	if (*upgrade >= MAX_LEVEL) {
		printf("\n--- Already at maximum level ---\n");

		getFirstCharOfLine();
		return;
	}
	
	int price = canUpgrade(upgrade);

	if (price != -1){
		doves = doves - price;
		(*upgrade)++;

		printf("\n--- Successfully purchaced upgrade for %d doves! ---\n", price);

		getFirstCharOfLine();

	} else{ // cannont affored upgrade (-1)

		printf("\n--- Cannot afford upgrade! ---\n");

		getFirstCharOfLine();

	}
}

unsigned countUpgrades() {
	// Returns the number of upgrades we have unlocked

	return (netLevel+dealerLevel+baitLevel+breedingLevel);
}


unsigned netDoves() {
	return netBonusDoves[netLevel];
}

unsigned baitDoves() {
	// Returns the amount of dove which bait gives you
	// Should return 0 every time except for the 10th time

	if (baitClickCount == 9){
		baitClickCount = 0;
		return (baitBonusDoves[baitLevel]);
	}else{
		baitClickCount++;
		return 0;
	}
}

unsigned breedDoves() {
	// Returns the amount of dove which breeding would give you
	// Breeding takes a long time, should be a %age every 100 clicks.

	if (breedingClickCount == 99){
		breedingClickCount = 0;

		return (breedingInterest[breedingLevel] * (doves / 10)); // Integer division
	}else{
		breedingClickCount++;
		return 0;
	}
}

void getDoves() {
	// Should add the base 1 dove to the dove count
	// Calls other dove-getting functions, adding return values to doves

	// Add one dove
	doves++;
	doves += netDoves(); // Add doves from nets
	doves += baitDoves(); // Add doves from bait
	doves += breedDoves(); // add doves from breeding
}

void help() {
	// Clear the screen
	printf(clearScreen);

	//game description
	printf("\t\t\t### DANCING DOVES ###\n Welcome to Dove Dealer! As a young aspiring dove hunter, put your hunting\n instincts to the test as you try to catch as many doves as possible. Cash\n in your doves at the local shop where you can buy equipment to better \n help you work your way up the dove hunting ranks! \n\n");
	//game controls
	printf("\t\t\tCONTROLS:\n\t\t<ENTER> - Go Hunting \n\t\tb       - Shop\n\t\tq       - Quit\n\n");
	//game wisdom
	printf("\"There is no hunting like the hunting of doves, and those who have hunted doves\n long enough and liked it, never care for anything else thereafter.\" \n\t-Ernest Hemmingdove\n\n");
}

void shop() {
	// Displays the shop interface
	// Waits for a number to be inputted, and dispatches to buy()

	char c;

	// Clear the screen
	printf(clearScreen);

	// Prompt
	printf("Welcome to the shop! Choose what upgrade you would like to purchase.\n");
	printf("You have %d doves to spend.\n\n", doves);

	// Display avaliable upgrades
	if (netLevel < MAX_LEVEL) {
		printf(" 1: Upgrade Net - %d doves - %d doves per <ENTER>\n",
				getPrice(netLevel+1), netBonusDoves[netLevel+1]);
		printf("    %s\n\n", netDescriptions[netLevel]);
	} else {
		printf(" 1: Net Fully Upgraded!\n\n");
	}

	if (dealerLevel < MAX_LEVEL) {
		printf(" 2: Upgrade Dealer - %d doves - %d dove discount on upgrades\n",
				getPrice(dealerLevel+1), dealerDiscounts[dealerLevel+1]);
		printf("    %s\n\n", dealerDescriptions[dealerLevel]);
	} else {
		printf(" 2: Dealer Fully Upgraded!\n\n");
	}

	if (baitLevel < MAX_LEVEL) {
		printf(" 3: Upgrade Bait - %d doves - %d doves per 10 <ENTER>s\n",
				getPrice(baitLevel+1), baitBonusDoves[baitLevel+1]);
		printf("    %s\n\n", baitDescriptions[baitLevel]);
	} else {
		printf(" 3: Bait Fully Upgraded!\n\n");
	}

	if (breedingLevel < MAX_LEVEL) {
		printf(" 4: Upgrade Breeding - %d doves - %d new doves/10 doves every 100 <ENTER>s\n",
				getPrice(breedingLevel +1), breedingInterest[breedingLevel+1]);
		printf("    %s\n\n", breedingDescriptions[breedingLevel]);
	} else {
		printf(" 4: Breeding Fully Upgraded!\n\n");
	}

	// Upgrade selection prompt
	printf("Type <ENTER> to exit the store\n");
	printf("> ");

	// Listen for a character
	c = getFirstCharOfLine();

	// Buy something
	if (c == '1')
		buy(&netLevel); // Buy net
	else if (c == '2')
		buy(&dealerLevel); // Buy dealer
	else if (c == '3')
		buy(&baitLevel); // Buy bait
	else if (c == '4')
		buy(&breedingLevel); // Buy breeding
}

void currentUpgrades() {
	// Prints out the current status of the upgrades

	printf("\n## CURRENT UPGRADES ##\n");
	printf(" Net (level %d)      - %d doves per <ENTER>\n", 
			netLevel, getNetBonus());
	printf(" Dealer (level %d)   - %d dove discount on upgrades\n", 
			dealerLevel, getDealerDiscountBonus());
	printf(" Bait (level %d)     - %d doves in %d <ENTER>s\n", 
			baitLevel, getBaitBonus(), 10-baitClickCount);
	printf(" Breeding (level %d) - %d new doves in %d <ENTER>s\n", 
			breedingLevel, getBreedingBonus(), 100-breedingClickCount);
}

void displaySales() {
	unsigned sale = rand();

	currentSale = 0;
	if (sale > 30000) {
		currentSale = sale % 60 + 1;
		printf("\nSALE! SALE! Everything an extra %d%c off! Today only!\n", currentSale, '%');
	}
}

void getAchievements() {
	if (doves >= 100)
		achievements = achievements | 0x1;
	if (countUpgrades() >= 1)
		achievements = achievements | 0x2;
	if (dealerLevel == 8)
		achievements = achievements | 0x4;
	if (netLevel == 8)
		achievements = achievements | 0x8;
	if (baitLevel == 8)
		achievements = achievements | 0x10;
	if (breedingLevel == 8)
		achievements = achievements | 0x20;
	if (doves >= 1000)
		achievements = achievements | 0x40;
	if (doves >= 10000)
		achievements = achievements | 0x80;
	if (doves >= 100000)
		achievements = achievements | 0x100;
	if (doves >= 1000000)
		achievements = achievements | 0x200;
	if (doves >= 10000000)
		achievements = achievements | 0x400;
	if (doves >= 100000000)
		achievements = achievements | 0x800;
	if (doves >= 1000000000)
		achievements = achievements | 0x1000;
}

void displayAchievements() {
	printf("## ACHIEVEMENTS ##\n");
	if (achievements & 0x1)
		printf("TIME TO BUY AN UPGRADE!\n");
	if (achievements & 0x2)
		printf("Upgrade GET!\n");
	if (achievements & 0x4)
		printf("Discount Master!\n");
	if (achievements & 0x8)
		printf("Net Master!\n");
	if (achievements & 0x10)
		printf("Bait Master!\n");
	if (achievements & 0x20)
		printf("Breeding Master!\n");
	if (achievements & 0x40)
		printf("A thousand doves!\n");
	if (achievements & 0x80)
		printf("Ten thousand doves!\n");
	if (achievements & 0x100)
		printf("ONE HUNDRED thousand doves!\n");
	if (achievements & 0x200)
		printf("A million!! doves!\n");
	if (achievements & 0x400)
		printf("TEN MILLION!! doves!\n");
	if (achievements & 0x800)
		printf("A HUNDRED MILLION!! doves!\n");
	if (achievements & 0x1000)
		printf("BILLIONS OF DOVES OH MY GOODNESS!\n");
}

int main() {
	// Constantly loop, listening for user input and performing an action

	char c;

	for (;;) {
		// Flavour & help text, always display before the prompt
		help();

		// Display the current achievements
		getAchievements();
		displayAchievements();

		// Display the current upgrade count
		currentUpgrades();

		// Random Sales
		displaySales();

		// Display the prompt
		printf("\n%d doves - %d/32 upgrades\n", doves, countUpgrades());
		printf("> ");

		// Perform an action
		c = getFirstCharOfLine();

		if (c == '\n')
			getDoves();
		else if (c == 'b')
			shop();
		else if (c == 'q')
			break;

		// Clear the screen
		printf(clearScreen);
	}

	// The game ends
	printf("Game over - you acquired %d/32 upgrades\n", countUpgrades());
	return 0;
}

