public with sharing class WireApex_Opportunity {
    public static List<Opportunity> listOpp() {

return[Select Id,Name, ExpectedRevenue, Amount, CloseDate, StageName from Opportunity where StageName='Closed Won'limit 10];
    }
}