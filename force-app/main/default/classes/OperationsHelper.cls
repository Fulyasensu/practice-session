public  class OperationsHelper {
   public Decimal largestOutOfTwoNumbers(Decimal one,Decimal two){
    Decimal big;
    if(one>=two){
        big=one;
    }else{
        big=two;
    }
    return big;
   }
   public Decimal smallestOutofThreeNumbers(Decimal one,Decimal two,Decimal three){
    decimal sm= math.min(one,two);
    decimal sm1=math.min(sm,three);
    return sm1;

   }

   public Integer sumOfPositiveIntegers(Integer n){
   Integer a;
   if(n<0){
   system.debug ('we are not calculating the sum for negative number');

   }else {
    a=0;
    for (Integer i=1; i<n; i++){
        a=a+i;
        
    }
    
    }
    return a;
}
}