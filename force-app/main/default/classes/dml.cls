public class dml {
   public static void createBulkContacts(){

        list<contact>cntlist = new list<contact>();
        Contact cn1= new Contact();
        cn1.firstName= 'Mark ';
        cn1.LastName= 'Buffalo';
        cntlist.add(cn1);
 

        Contact cn2= new Contact();
        cn2.firstName= 'Mark ';
        cn1.LastName= 'Buffalo';
        cntlist.add(cn2);

        Contact cn3= new Contact();
        cn3.firstName= 'Chris ';
        cn3.LastName= 'Hemsworth';
         cntlist.add(cn3);

         Contact cn4= new Contact();
        cn4.firstName= 'Scarlett ';
        cn4.LastName='Johansson';
        cntlist.add(cn4);

        Contact cn5= new Contact();
        cn5.firstName= 'Chris ';
        cn5.LastName='Hemsworth';
        cntlist.add(cn5);

        insert cntlist;
        
    }
  
   


}