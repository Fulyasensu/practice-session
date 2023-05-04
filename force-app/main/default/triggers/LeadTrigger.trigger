trigger LeadTrigger on Lead (before insert,before update) {
    for(lead LeadRecord: Trigger.new){
      if(string.isBlank(leadRecord.Rating))  
          leadRecord.Rating= 'Warm';
    }
     system.debug('Leadtrigger is executed');   
    }