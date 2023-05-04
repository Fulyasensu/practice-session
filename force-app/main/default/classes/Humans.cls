public with sharing class Humans {
    public string FullName( string firstName, string lastName) {
    string fullName = ' ';
    fullName = firstName.toUpperCase();
    fullName += ' ' +lastName.toUpperCase();
    return fullName; 
        

    }
}