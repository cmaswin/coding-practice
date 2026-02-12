// Description


// Star fitness club wants to calculate the Body Mass Index(BMI) for all its customers. Customers may enter their height and weight. Each customer should know their body mass index and weight they should lose or gain to be fit. Help them to achieve this with the help of a java program. 

// The formula for calculating BMI is weight/(height/100)^2.

// Display the BMI with respect to 2 decimal points.

// If BMI is greater than or equal to 25, print "You are overweight" and then print the BMI units to be reduced to become fit as "Reduce <BMI units> to be fit".

// If BMI is less than 25 and greater than or equal to 18.5, print "You are fit and healthy".

// If BMI is less than 18.5, print "You are underweight" and then print the BMI units to be gained to become fit as "Gain <BMI units> to be fit".



// Note:

// In the Sample Input / Output provided, the highlighted text in bold corresponds to the input given by the user, and the rest of the text represents the output. 
// Adhere to the code template, if provided. 
// Please do not use System.exit(0) to terminate the program. 
// BMI and its units should have only 2 decimal points.
// Use System.out.printf() method to round the output to its corresponding decimal places. 


// Sample Input 1:

// Enter weight in kg

// 108

// Enter height in cm

// 168

// Sample Output 1:

// Your BMI is 38.27. You are overweight

// Reduce 13.27 to be fit



// Sample Input 2:

// Enter weight in kg

// 68

// Enter height in cm

// 172

// Sample Output 2:

// Your BMI is 22.99. You are fit and healthy



// Sample Input 3:

// Enter weight in kg

// 42.7

// Enter height in cm

// 158

// Sample Output 3:

// Your BMI is 17.10. You are underweight

// Gain 1.40 to be fit

import java.util.Scanner;
public class Day1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter weight in kg");
        double weight = sc.nextDouble();
        System.out.println("Enter height in cm");
        double height = sc.nextDouble();

        double bmi = weight / Math.pow(height / 100, 2);
        System.out.printf("Your BMI is %.2f. ", bmi);

        if (bmi >= 25) {
            System.out.println("You are overweight");
            double reduceUnits = bmi - 25;
            System.out.printf("Reduce %.2f to be fit", reduceUnits);
        } else if (bmi >= 18.5) {
            System.out.println("You are fit and healthy");
        } else {
            System.out.println("You are underweight");
            double gainUnits = 18.5 - bmi;
            System.out.printf("Gain %.2f to be fit", gainUnits);
        }

        sc.close();
    }
}