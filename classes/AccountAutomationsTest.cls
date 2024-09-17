@isTest
private class AccountAutomationsTest {
    
    @isTest static void testDefaultDescription() {
        Account acc = new Account(Name='Test Account');
        
        Test.startTest();
        acc = AccountAutomations.setDefaultDescription(acc);
        Test.stopTest();
        
        System.assertEquals('Default description', acc.Description);
    }
    
    @isTest static void testDefaultBillingAddress() {
        Account acc = new Account(Name='Test Account');
        
        Test.startTest();        
        acc = AccountAutomations.setDefaultBillingAddress(acc);
        Test.stopTest();
        
        System.assertEquals('123 Main St', acc.BillingStreet);
        System.assertEquals('Anytown', acc.BillingCity);
        System.assertEquals('CA', acc.BillingState);
        System.assertEquals('90210', acc.BillingPostalCode);
        System.assertEquals('USA', acc.BillingCountry);
    }
}