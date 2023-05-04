public class accCon {
    public static decimal TotalAmount() {
        List<Opportunity>ListOpp =[select id,stageName, amount from Opportunity where StageName ='Closed Won'and Amount!=null];
        decimal sumAmount =0;
        for (Opportunity eachOpp : ListOpp){ 
            sumAmount+=eachOpp.Amount;
        }
        return sumAmount;
    }

    public List <Account> AccountCont(){ 
        List<Account>listAccCount= [select id,name from account where Id In (select accountId from Contact)];
        return listAccCount;
    }
}