trigger CourseProfessorTrigger on Course_Professor__c(before insert, before update) {
    if (trigger.isBefore ) {
      CourseProfessorTriggerHandler.rejectDuplicateRecord(trigger.new);
    }
    }     