// Description
// Total amount of money to buy fruits

// Assume you need to buy X1 kg apples, Y1 kg oranges, and Z1 kg grapes. Your friend wants to buy X2 kg apples, Y2 kg oranges, and Z2 kg grapes.

// The costs are: apples @R1 rupees per kg, oranges @R2 rupees per kg, grapes @R3 rupees per kg.

// Now, the total amount of money you both need to carry can be calculated using multiplication of the two given inputs.

// If any of the input is negative, display Invalid Input

// Write a Pseudocode for this scenario.

// Sample Input :

// Enter the number of kgs of apples, oranges and grapes bought by you
// 4
// 6
// 2
// Enter the number of kgs of apple, orange and grapes bought by your friend
// 3
// 2
// 1
// Enter the price of apple, orange and grapes per kg
// 25
// 15
// 18

// Sample Output  :

// You need to pay Rs.226 and your friend needs to pay Rs.123.

// Explanation:
// Amount to be paid by you is 4 * 25 + 6 * 15 + 2 *18 = 100 + 90 + 36 = 226
// Amount to be paid by your friend is 3 * 25 + 2 * 15 + 1 *18 = 75 + 30 + 18 = 123

// Hint:  Declare 3 arrays of size 3. like arr1[3], arr2[3] and price[3].
// Get the input and do the needed calculations using arr1, arr2 and price array.

BEGIN
declare yourQuantity[3],friendQuantity[3],price[3],i,yourTotal,friendTotal
set yourTotal=0
set friendTotal=0
print "Enter the number of kgs of apples, oranges and grapes bought by you"
for i=0 to 2 do 
read yourQuantity[i]
if yourQuantity[i]<0 then 
print "Invalid Input"
stop
end if 
end for
print "Enter the number of kgs of apple, orange and grapes bought by your friend"
for i=0 to 2 do 
read friendQuantity[i]
if friendQuantity[i]<0 then 
print "Invalid Input"
stop
end if 
end for
print "Enter the price of apple, orange and grapes per kg"
for i=0 to 2 do 
read price[i]
if price[i]<0 then 
print "Invalid Input"
stop
end if 
end for
for i=0 to 2 do 
yourTotal=yourTotal+(yourQuantity[i]*price[i])
friendTotal=friendTotal+(friendQuantity[i]*price[i])
end for
print "You need to pay Rs."+yourTotal+" and your friend needs to pay Rs."+friendTotal+"."
END 