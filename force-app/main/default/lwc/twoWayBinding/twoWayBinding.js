import { LightningElement } from 'lwc';

export default class TwoWayBinding extends LightningElement {

studentName;
age;
changeHandler(event){
    this.studentName = event.target.value;
}

ageHandler(event){
    this.age = event.target.value;
}

}