public class ContactTriggerHandler {
    public static void contactValidation(List<Contact>ConTriggerNew,
                                        List<contact> ConTriggerOld,
                                         Map<id, contact> conTriggerNewMap,
                                         Map<id, contact> conTriggerOldMap) {
             for(contact eachContact : conTriggerNew)  {
                if(conTriggerOldMap.get(eachContact.Id).LeadSource == 'Partner Referral' ){
                    eachContact.addError('Partner Referral contacts cannit be changed');

                }

             }                             
         }

    }