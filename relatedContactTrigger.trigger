trigger relatedContactTrigger on Contact (after insert, after update, after delete) {

    RelatedContactHandler acchandler = new RelatedContactHandler();

    if (Trigger.isAfter) {
        if (Trigger.isInsert || Trigger.isUpdate) {
            
            acchandler.updateAccountsContact(Trigger.new);
        } else if (Trigger.isDelete) {
            acchandler.updateAccountsContact(Trigger.old);
        }
    
    }


}