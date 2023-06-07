import { LightningElement, wire } from 'lwc';
import getTenAccounts from '@salesforce/apex/AccountController_LWC.getTenAccounts';
const columns = [
    { label: 'Name', fieldName: 'Name', type: 'text' },
    { label: 'Type', fieldName: 'Type', type: 'text' },
    { label: 'Rating', fieldName: 'Rating', type: 'text' },
    { label: 'Annual Revenue', fieldName: 'AnnualRevenue', type: 'currency' }
];

export default class WireApex_Account extends LightningElement {
    columns = columns;

    @wire(getTenAccounts)
    accounts;

    @wire(getTenAccounts)
    acocuntHandler ({data,error}){
        if(data){
            this.accountValues= data;
        }
    }

    //accountHandler - data,error-AS A function
//accounts.data & accounts.error-as a property
//accounts = {
    //data : ....
    //error : ..... 
//
}