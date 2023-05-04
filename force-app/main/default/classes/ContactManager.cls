//Endpoint : https://batch-13-dev-ed.develop.my.salesforce.com/services/apexrest/Case/
@RestResource(urlMapping = '/Contact/*')
global with sharing class ContactManager{
    
    /**
        *  This method is exposing Case record by their Salesforce Id
        * Endpoint : https://batch-13-dev-ed.develop.my.salesforce.com/services/apexrest/Case/5008d00000Jey96AAB
        * Http Method : GET
    */
    @HttpGet
    global static Contact getContactById(){
        //grab the caseId from the end of the URL
        RestRequest request = RestContext.request;
        String uri = request.requestURI;

        Integer lastIndex = uri.lastIndexOf('/'); //to find the index of last "/" character
        Id ContactId = uri.substring(lastIndex+1);

        Contact cs = [SELECT id, FirstName, LastName ,Title, Email , Department
                   FROM Contact
                   WHERE Id =: contactId];
        return cs;
    }

    /*   This method will create a new case record. 
    * We need a body part in JSON format
    * Endpoint : https://batch-13-dev-ed.develop.my.salesforce.com/services/apexrest/Case
    * Http Method: Post - @HttpPost
    * Return : Case Id
    */
    @HttpPost
    global static Id postContact(String FirstName, String LastName ,String Title,String Email ){
        // 1. Get Incoming REST Callout request context
     Contact con = new Contact();
      con.FirstName = FirstName;
      con.LastName = LastName;
      con.Email = Email;
      con.Title = Title;
      

        insert con;

        return con.id;
    }

    // EndPoint : https://batch-13-dev-ed.develop.my.salesforce.com/services/apexrest/Case
    // Http Method: Update - @HttpPatch
    @HttpPatch
    global static Case patchCase(){
        RestRequest request = RestContext.request;
        String body = request.requestBody.toString();

        Case cs = (Case) JSON.deserialize(body, Case.class);

        update cs;

        return cs;
    }

    // EndPoint : https://batch-13-dev-ed.develop.my.salesforce.com/services/apexrest/Case
    // Http Method: Upsert - @HttpPut
    @HttpPut
    global static Id putCase(String Id, String Subject, String Type, String Priority){
        Case cs = new Case();
        cs.Id = Id;
        cs.Subject = Subject;
        cs.Priority = Priority;
        cs.Type = Type;
        upsert cs;
        return cs.Id;
    }

    // EndPoint : https://batch-13-dev-ed.develop.my.salesforce.com/services/apexrest/Case/5008d00000Jey96AAB
    // Http Method:@HttpDelete
    @HttpDelete
    global static String deleteCase(){
        // To handle Case Id
        RestRequest request = RestContext.request;
        String uri = request.requestURI;
        Integer lastIndex = uri.lastIndexOf('/');
        Id caseId = uri.substring(lastIndex + 1);
        // Delete Case Record
        try{
            Case cs = [SELECT Id FROM Case WHERE Id = : caseId];
            delete cs;
        }catch(Exception ex){
            return 'Fail';
        }
        return 'Success';
    }
}