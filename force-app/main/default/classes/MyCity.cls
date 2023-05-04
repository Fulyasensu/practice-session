public class MyCity {
    public void cityInformation(){
        string country = 'Gezmek istedigim ulke Turkiye';
        string city= ', gormek istedigim sehir Aydin';
        string a= country + city;
        system.debug(a);

    }

    public void StringMethod(){

        String job= 'I am a salesforce Developer.';
        system.debug(job);
        boolean checkjob= job.contains('force');
        integer checkcharacter= job.length();
        string capital= job.toUpperCase();
        system.debug ('Cumlemizde force kelimesi varmi?= ' +   checkjob + ' karakter sayisi =  '+ checkcharacter +
          '   Cumlenin yeni hali=   ' + capital);


    }
}