@isTest
public class SetAccountSourceToWebTest {
   
    @isTest
    static void testAccountTrigger() {
        List<Case> casosHijos = new List<Case>();
        List<Case> casosPadres = new List<Case>();
        
        Account testAccount = new Account(Name='Test Account');
        
        insert testAccount;
        
        Account newAccount = [SELECT Id, AccountSource FROM Account LIMIT 1];
        
        Test.startTest();
	        System.assertEquals(newAccount.AccountSource, 'Web');
        Test.stopTest();
        
    }
    
}