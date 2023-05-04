import { LightningElement } from 'lwc';

export default class GetterCalc extends LightningElement {


    a=10;
    b=5;

    get sum(){
        return this.a + this.b;
    }

    get subst(){
        returnthisa.thisb;


    }

    get mult(){
        return this.a * this.b
    }
}