trigger Contact03Trigger on Contact (before insert, before update, after insert, after update) {

    if(trigger.isBefore && trigger.isInsert){


        list<Contact> ConTrigger =trigger.new;
        for(contact cn :ConTrigger)
    }
    if (trigger.isAfter&& trigger.isInsert) {
        
    }
    if(trigger.isBefore && trigger.isUpdate){

    }
    if(trigger.isAfter && trigger.isUpdate){

    }
}