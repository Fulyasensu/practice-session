public with sharing class RestCallout {
    
//Endpoint : https://th-apex-http-callout.herokuapp.com/animals
    // HTTP Method : GET
    public static HttpResponse getAnimal(){
        // 1.Prepare HttpRequest and wrap all the necessary data in it.
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');

        // 2. Prepare Internet
        Http http = new Http();

        // 3. Send the HttpRequest over the internet in order to receive HttpResponse back
        HttpResponse response = http.send(request);

        // 4. Process HttpResponse
        System.debug(response.getStatusCode());
        System.debug(response.getBody());

        return response;
    }

    //End Point : 'https://api.instantwebtools.net/v1/airlines'
    // Http method : 'GET'
    public static HttpResponse getAirlines(){
       // 1.Prepare HttpRequest and wrap all the necessary data in it.
       HttpRequest request = new HttpRequest();
       request.setEndpoint('https://api.instantwebtools.net/v1/airlines');
       request.setMethod('GET');

       // 2. Prepare Internet  
       Http http = new Http();
       
       // 3. Send the HttpRequest over the internet in order to receive HttpResponse back 
       HttpResponse response = http.send(request);
       
       // 4. Process HttpResponse

       if(response.getStatusCode() == 200){
        String jsonString = response.getBody();
        system.debug(jsonString);
       }

       return response;
    }
    //Endpoint : https://api.onlinewebtutorblog.com/employees
    //Http Method : GET
    public static HttpResponse getEmployees(){
               // 1.Prepare HttpRequest and wrap all the necessary data in it.
       HttpRequest request = new HttpRequest();
       request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
       request.setMethod('GET');

       // 2. Prepare Internet  
       Http http = new Http();
       
       // 3. Send the HttpRequest over the internet in order to receive HttpResponse back 
       HttpResponse response = http.send(request);
       
       // 4. Process HttpResponse

       if(response.getStatusCode() == 200){
            String jsonString = response.getBody();
            //System.debug(jsonString);

            // Deserialize JSON format message to APEX Format
            EmployeeResponse empRes = (EmployeeResponse) JSON.deserialize(jsonString, EmployeeResponse.class);

            List<EmployeeResponse.EmployeeWrapper> empData = empRes.data;            List<Employee__c> employees = new List<Employee__c>();

            for(EmployeeResponse.EmployeeWrapper wrap : empData){
                Employee__c emp = new Employee__c();
                emp.Name = String.valueOf(wrap.id);
                emp.User_Name__c = wrap.username;
                emp.Name__c = wrap.name;
                emp.Email__c = wrap.email;
                emp.Gender__c = wrap.gender;
                emp.Designation__c = wrap.designation;
                emp.Phone_number__c = wrap.phone_number;
                emp.Address__c = wrap.complete_address;

                employees.add(emp);
            }

           try{
                insert employees;
            }catch(Exception ex){
                System.debug(ex.getMessage());
            }
       }
       

       return response;
    } 


    // //public static HttpResponse postAnimal(){

    //  HttpRequest request = new Httprequest();   
    //  request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
    //  request.setMethod('POST');
    //  //set Json body
    //  request.setbody('{"name";"mighty moose"}');
    //  request.setHeader('Content-Type', 'application/json; charset=UTF-8');
    // Http http= new Http();
    // HttpResponse response = http.send(request);
    // System.debug(response.getStatus());
    // System.debug(response.getStatusCode());
    // System.debug(response.getBody());
    // return response;
    
    
    // }

}