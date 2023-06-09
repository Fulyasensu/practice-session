trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('--- trigger start ----');
    if (Trigger.isBefore) {
        AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }


    // if (Trigger.isBefore && Trigger.isUpdate) {
    //     //set<id> accIds = trgNewMap.keySet();
    //     for (Id eachId : trgNewMap.keySet()) {
    //         //get new account using map.get(key) from trigger.newMap
    //         account newAcc = trgNewMap.get(eachId);//latest updated values.
    //         //get OLD account using map.get(key) from trigger.oldMap
    //         account oldAcc = trgOldMap.get(eachId);//previous values.

    //         //get website field of new and old account
    //         string newWebsite = newAcc.Website;
    //         system.debug('newWebsite is ===> ' + newWebsite);
    //         string oldWebsite = oldAcc.Website;
    //         system.debug('oldWebsite is ===> ' + oldWebsite);
    //         //check if website field is changed.
    //         if (newWebsite != oldWebsite) {
    //             system.debug('For account ' + newAcc.Name + ', new WEBSITE is ' + newWebsite);
    //         }
    //     }
    // }

    // if (Trigger.isAfter && Trigger.isUpdate ) {
    //     system.debug('==AFTER UPDATE==');
    //     set<id> accIds = trgNewMap.keySet();
    //     set<id> accIdsOld = trgOldMap.keySet();

    //     for (Id eachID : accIds) {
    //         system.debug('--for each START--');
    //         system.debug('each Id is ' + eachID);
    //         account newAcc = trgNewMap.get(eachId);
    //         account oldAcc = trgOldMap.get(eachId);
    //         system.debug('new acc name is ' + newAcc.Name + ', its old name WAS ' + oldAcc.Name);
    //         system.debug('--for each END--');
    //     }
    // }

    // if (Trigger.isBefore && Trigger.isInsert ) {
    //     system.debug('==BEFORE INSERT==');
    //     system.debug('trigger.newMap -> ' + trgNewMap); //null -> ID is null, so Map<id, account> is ALSO NULL.
    //     system.debug('trigger.oldMap -> ' + trgoldMap); //null --> OLD is NULL.
    // }
    // if (Trigger.isAfter && Trigger.isInsert ) {
    //     system.debug('==AFTER INSERT==');
    //     system.debug('trigger.newMap -> ' + trgNewMap);//yes (not null)
    //     system.debug('trigger.oldMap -> ' + trgoldMap);//null -> no old record so oldmap is null.
    // }
    // if (Trigger.isBefore && Trigger.isUPdate ) {
    //     system.debug('==BEFORE Update==');
    //     system.debug('trigger.newMap -> ' + trgNewMap); //yes
    //     system.debug('trigger.oldMap -> ' + trgoldMap); //yes
    // }
    


    // if(Trigger.isAfter && Trigger.isUpdate){
    //     for (account oldAcc : trigger.old) {
    //         system.debug('oldAcc.id is ' + oldAcc.Id + ', old accName is ' + oldAcc.Name);
    //     }

    //     for (account newAcc : trigger.new) {
    //         system.debug('newacc.id is ' + newAcc.Id + ', new accName is ' + newAcc.Name);
    //     }
        
    // }

    system.debug('==== trigger end ====');
    /*
    if (Trigger.isBefore && Trigger.isInsert) {
        //old is null in insert
        system.debug('trigger.old before insert --> ' + trigger.old);
    }

    if (Trigger.isafter && Trigger.isInsert) {
        //old is null in insert
        system.debug('trigger.old after insert --> ' + trigger.old);
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('trigger.old before udpate --> ' + trigger.old);
    }

    if (Trigger.isafter && Trigger.isUpdate) {
        system.debug('trigger.old after update --> ' + trigger.old);
    }
    

    
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('trigger.new before insert --> ' + trigger.new);//value is present (not null), but ID is NULL
    }

    if (Trigger.isafter && Trigger.isInsert) {
        system.debug('trigger.new after insert --> ' + trigger.new);//present, ID also present.
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('trigger.new before udpate --> ' + trigger.new);//yes
    }

    if (Trigger.isafter && Trigger.isUpdate) {
        system.debug('trigger.new after update --> ' + trigger.new);//yes
    }
    */
    


    /*

    //isAfter will be true in 'after insert' and 'after update' trigger
    List<account> newAccounts = trigger.new;
    if(trigger.isAfter && trigger.isInsert){
        //trigger.new we get latest inserted/updated records
        system.debug('after trigger, new data --> ' + newAccounts);
        system.debug('number of records inserted/updated: ' + newAccounts.size() );

        for (account eachAccount : newAccounts) {
            system.debug('*** account id is ' + eachAccount.Id + ' account name is ' + eachAccount.Name);
        }
    }
*/
   

/*
    if(Trigger.isBefore){
        system.debug('we are in BEFORE trigger.');
        if(Trigger.isInsert){
            system.debug('before insert trigger called.');
        } 
        if(trigger.isUpdate){
            system.debug('before update trigger called.');
        }
    }
    if(Trigger.isAfter){
        system.debug('we are in AFTER trigger. SBNC');
        if(Trigger.isInsert){
            system.debug('after insert trigger called.');
        } 
        if(trigger.isUpdate){
            system.debug('after update trigger called.');
        }
    }
    */
/*
    if(trigger.isBefore && trigger.isInsert){
        system.debug('before insert trigger called.');
    }
    if(trigger.isAfter && trigger.isInsert){
        system.debug('after insert trigger called.');
    }
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('before update trigger called.');
    }
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('after update trigger called.');
    }
    
    
*/

    /*
     // system.debug('-------');
    // system.debug('.isInsert --> ' + trigger.isInsert);
    // system.debug('.isUpdate --> ' + trigger.isUpdate);
    // system.debug('-------');

    system.debug('-------');
    system.debug('.isBefore --> ' + trigger.isBefore);
    system.debug('.isAfter --> ' + trigger.isAfter);
    system.debug('-------');

    if(Trigger.isBefore){
        system.debug('before insert account trigger called.');
    }
    if(Trigger.isAfter){
        system.debug('after insert account trigger called.');
    }
    */
   
}