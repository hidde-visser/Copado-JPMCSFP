/**
* --------------------------------------------------------------------------
* Name:        ACME_CalculatorLogic.cls
* Description: Business logic class for performing mathematical calculations
*              Currently supports calculating square of a number
* 
* Test Class:  ACME_CalculatorLogic_Test.cls
*
* Date        Version  Author                Tag     Summary of Changes
* ----------  -------  -------------------  -------  ------------------------
* 2024-12-12  1.0      BuildAgent           None    Initial Version
* --------------------------------------------------------------------------
*/
public with sharing class CalculatorLogic {
    
    /**
    * Calculates the square of the input number
    * @param number The input number to be squared
    * @return Decimal The square of the input number
    * @throws IllegalArgumentException if input is null
    */
    public static Decimal calculateSquare(Decimal n) {
        // Input validation
        if (n == null) {
            throw new IllegalArgumentException('Input number cannot be null');
        }
        
        // Calculate and return square
        return n * n;
    }
}