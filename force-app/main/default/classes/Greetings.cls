public class Greetings {
  public string language = ' ' ;
  
  public string GreetingHello(){
    string greet ='';
    if(language =='Hindi'){
        greet ='Namaste';

    } else if (language == 'turkish'){
        greet = 'merhaba';

    } else if ( language == 'Russian'){
        greet = 'Pivet';
    } else {
      greet = 'Helloo';
    
    }
    
   
    
   
    return greet;
  }
}