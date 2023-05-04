
{
'Name' : 'ABC Pvt',
'Type' : 'Consulting',
'industry' : 'education',
'AnnualRevenue' : 200000,
} 

List<Account> accounts = [SELECT Id, Name, Type, Industry, AnnualRevenue
                            from Account
                            WHERE Type != null
                            AND Industry != null
                            AND AnnualRevenue != null
                            LIMIT 5];
String jsonString = JSON.serialize(accounts);



List<Opportunity> opps= [SELECT id, Name, Type, StageName, Amount FROM Opportunity
                            WHERE Type != null
                            AND StageName != null
                            AND Amount !=null
                            ORDER BY Amount DESC
                            LIMIT 10]; 
                            

String jsonString = JSON.serialize(opps);
System.debug(jsonString);     

RestCallout.getAnimal();
RestCallout.getAirlines();




                                        
 
