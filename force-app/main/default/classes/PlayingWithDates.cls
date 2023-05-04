public class PlayingWithDates {
   public void printDateOutput(){
    Date newDate= date.today();
    system.debug(newDate);

    date d1= date.newInstance(2789, 11, 5);
    system.debug(d1);

    date d2= date.newInstance(1459,3,4);
    system.debug(d2);

    Integer day = 16;
    Integer month= 2;
    Integer year =2017;

    date myGirls= date.newInstance(year, month, day);
    system.debug(myGirls);

   }
}