import { LightningElement } from 'lwc';
//import apex method
import getTenAccounts from '@salesforce/apex/AccountController_LWC.getTenAccounts';


export default class P2cActionAtParent extends LightningElement {
    accounts;
    error;
    
    clickHandler(){
        getTenAccounts()
        .then(result=>{
            this.accounts=result;
        })
     .catch(error=>{

     })       

    }
}