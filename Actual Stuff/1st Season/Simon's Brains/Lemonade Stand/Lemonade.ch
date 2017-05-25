/* File: lemonade3.ch
Calculate the cost with sales tax for a Lemonade Shop
with multiple orders */
/* declare variables */
int cups;
int tot = 0;
double price, taxrate, subtotal, tax, total;
string_t answer = "yes"; /* "yes" to continue, others to quit */
/* fixed price and tax rate */
price = 1.29; // $1.29 per cup
taxrate = 0.0825; // 8.25% (8.25 percent) sales tax
/* get the user input for the value of the variable cups */
/* ’%%’ will print out one ’%’ */
printf("Welcome to Mary’s Lemonade Shop\n");
printf("We sell lemonade by the cup, $1.29 per cup with 8.25%% sales tax.\n");
while(answer == "yes") {
printf("Please enter the number of cups.\n");
scanf("%d", &cups);
/* process the order */
subtotal = price * cups; // cost before tax
tax = taxrate * subtotal; // sales tax
total = subtotal + tax; // total cost with tax
/* display the cost as output */
printf("Subtotal: $%.2lf\n", subtotal);
printf(" Tax: $%.2lf\n", tax);
printf(" Total: $%.2lf\n", total);
printf("Thank you.\n\n");
tot = tot + cups;
printf("Would you like to order more lemonade? Type yes if you do.\n");
scanf("%s", &answer);
} while(answer == "y"){
printf("Please enter the number of cups.\n");
scanf("%d", &cups);
/* process the order */
subtotal = price * cups; // cost before tax
tax = taxrate * subtotal; // sales tax
total = subtotal + tax; // total cost with tax
/* display the cost as output */
printf("Subtotal: $%.2lf\n", subtotal);
printf(" Tax: $%.2lf\n", tax);
printf(" Total: $%.2lf\n", total);
printf("Thank you.\n\n");
printf("Would you like to order more lemonade? Type y if you do.\n");
scanf("%s", &answer);
} 

printf("\nThank you for buying %d cups of lemonade, have a nice day!\n\n", tot);

