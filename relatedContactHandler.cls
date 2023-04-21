public with sharing class relatedContactHandler {
    public void updateAccountsContact(List<Contact> contacts) {
        
        Set<Id> accIdsToUpdate = new Set<Id>();
    	for (Contact contact : contacts) {
            accIdsToUpdate.add(contact.AccountId);
        }
        List<Account> accountsToUpdate = [SELECT Id, (SELECT Id FROM Contacts) FROM Account WHERE Id IN :accountIdsToUpdate];
        for (Account account : accountsToUpdate) {
            
            account.Number_of_Contacts__c = account.Contacts.size();
        }
        update accountsToUpdate;
    }


}

