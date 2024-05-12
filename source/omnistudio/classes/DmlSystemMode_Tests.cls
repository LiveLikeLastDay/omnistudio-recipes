@isTest
private class DmlSystemMode_Tests {
    @isTest
    static void testInsertSingleSObject() {
        // Create test SObject
        Account testAccount = new Account(Name = 'Test Account');

        // Instantiate the class
        DmlSystemMode systemMode = new DmlSystemMode();

        // Call the method
        systemMode.insertSingleSObject(testAccount);

        // Assert that the record was inserted
        System.assertEquals(
            1,
            [SELECT COUNT() FROM Account WHERE Id = :testAccount.Id]
        );
    }
}
