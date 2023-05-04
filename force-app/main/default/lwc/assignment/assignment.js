import PreferenceType from '@salesforce/schema/ResourcePreference.PreferenceType';
import { LightningElement } from 'lwc';

export default class Assignment extends LightningElement {
firstName = "Fulya";
lastName = "Ozen";
age= 30;
cities = ["antalya","istanbul","londra", "izmit"]
specialities ={



    developer: "perfect",
    Artitect :'medium',
};

get fullName (){
    return this.firstName + " " + this.lastName;
}
}