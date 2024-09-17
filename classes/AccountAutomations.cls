public class AccountAutomations {
    public static Account setDefaultDescription(Account a){
        if (a.Description == null) {
            a.Description = 'Default description';
        }
        return a;
    }
    
    public static Account setDefaultBillingAddress(Account a){
        a.BillingStreet = '123 Main St'; 
        a.BillingCity = 'Anytown';
        a.BillingState = 'CA';
        a.BillingPostalCode = '90210';
        a.BillingCountry = 'USA';
        return a;
    }
}