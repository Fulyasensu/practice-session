trigger Contact1Trigger on Contact (before insert),before update, after insert, after update {


    if(trigger.isAfter && trigger.isUpdate){
        System.debug('after update');
        System.debug('version1');

        for(contact con: trigger.new){
            
        }
    }




}