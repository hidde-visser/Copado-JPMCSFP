/**
* --------------------------------------------------------------------------
* Name:        ACME_CalculatorLogic_Test.cls
* Description: Test class for ACME_CalculatorLogic.cls
*              Tests square calculation functionality
* 
* Date        Version  Author                Tag     Summary of Changes
* ----------  -------  -------------------  -------  ------------------------
* 2024-12-12  1.0      BuildAgent           None    Initial Version
* --------------------------------------------------------------------------
*/
@IsTest
private class CalculatorLogic_Test {
    
    @IsTest 
    static void testCalculateSquare_PositiveNumber() {
        // Test data
        Decimal input = 5;
        Decimal expectedResult = 25;
        
        // Start the test
        Test.startTest();
        Decimal result = CalculatorLogic.calculateSquare(input);
        Test.stopTest();
        
        // Verify results
        System.assertEquals(expectedResult, result, 
            'Square of 5 should be 25');
    }
    
    @IsTest 
    static void testCalculateSquare_NegativeNumber() {
        // Test data
        Decimal input = -4;
        Decimal expectedResult = 16;
        
        // Start the test
        Test.startTest();
        Decimal result = CalculatorLogic.calculateSquare(input);
        Test.stopTest();
        
        // Verify results
        System.assertEquals(expectedResult, result, 
            'Square of -4 should be 16');
    }
    
    @IsTest 
    static void testCalculateSquare_Zero() {
        // Test data
        Decimal input = 0;
        Decimal expectedResult = 0;
        
        // Start the test
        Test.startTest();
        Decimal result = CalculatorLogic.calculateSquare(input);
        Test.stopTest();
        
        // Verify results
        System.assertEquals(expectedResult, result, 
            'Square of 0 should be 0');
    }
    
    @IsTest 
    static void testCalculateSquare_NullInput() {
        // Test data
        Decimal input = null;
        
        try {
            // Start the test
            Test.startTest();
            Decimal result = CalculatorLogic.calculateSquare(input);
            Test.stopTest();
            
            // If we get here, fail the test
            System.assert(false, 'Expected IllegalArgumentException was not thrown');
        } catch(IllegalArgumentException e) {
            // Verify the correct exception message
            System.assertEquals('Input number cannot be null', e.getMessage(),
                'Exception message does not match expected value');
        }
    }
}


