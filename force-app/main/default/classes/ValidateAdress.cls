public class ValidateAdress {
   public void ValidateHomeAddress(){
    string HouseName='Bowyers court';
    string StreetName='Railshead rd';
    string CityName='London';
    string StateName='Middlesex';
    string StateIsoCode='mdsx';
    
    string CountryName='United Kingdom';
    string CountryIsoCode='UK';

    system.debug('The number of character is' + StreetName.length());
    system.debug ('Does street name contain house name?' +StreetName.contains(houseName));
    system.debug('Does street name contains Iso code?' + StreetName.contains(StateIsoCode));
    system.debug ('convert to upper/lower case=' + StateIsoCode.toUpperCase()+CountryIsoCode.toUpperCase()+CountryName.toUpperCase()+CityName.toLowerCase()+'/'+StateName.toLowerCase());
    string HouseAddress=HouseName+ ''+ StreetName+''+ CityName+ ''+ StateName+''+
    StateIsoCode+ ''+CountryName + ''+ CountryIsoCode;
    system.debug( HouseAddress);


   }
}