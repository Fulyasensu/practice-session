@isTest
private class TestRejectDuplicateBookings {
    
    @isTest
    static void testDuplicateBooking() {
        // Create a test course and professor
        
        Course__c testCourse = new Course__c(Name__c='Test Course', Admission_Officer__c=);
        Professor__c testProfessor = new Professor__c(Name='Test Professor');
        insert testCourse;
        insert testProfessor;
        
        // Create a test booking
        Course_Professor__c testBooking = new Course_Professor__c(Course__c=testCourse.Id, Professor__c=testProfessor.Id);
        insert testBooking;
        
        // Try to create another booking for the same course and professor
        Course_Professor__c testDuplicate = new Course_Professor__c(Course__c=testCourse.Id, Professor__c=testProfessor.Id);
        Test.startTest();
        // Insert the duplicate booking and expect an error
        try {
            insert testDuplicate;
            System.assert(false, 'Expected error was not thrown');
        } catch(DmlException e) {
            System.assert(e.getDmlMessage(0).contains('A professor can only be booked for one course at a time.'), 'Incorrect error message');
        }
        Test.stopTest();
    }
}