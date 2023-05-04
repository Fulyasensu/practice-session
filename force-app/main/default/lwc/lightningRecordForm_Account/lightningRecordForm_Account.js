import { LightningElement } from 'lwc';

import { ShowToastEvent } from 'lightning/platformShowToastEvent';
//import Object
import ACCOUNT_OBJ from'@salesforce/schema/Account';

//import fields
import ACCNAME_FIELD from '@salesforce/schema/Account.Name';
import RATING_FIELD from '@salesforce/schema/Account.Rating';
import ACCNUM_FIELD from '@salesforce/schema/Account.AccountNumber';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import WEBSITE_FIELD from '@salesforce/schema/Account.Website';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import TYPE_FIELD from '@salesforce/schema/Account.Type';


export default class LightningRecordForm_Account extends LightningElement {

    objName = ACCOUNT_OBJ;
    recordId ='0018d00000PkfAqAAJ';
    fields = [ACCNAME_FIELD,RATING_FIELD,ACCNUM_FIELD,PHONE_FIELD,WEBSITE_FIELD,INDUSTRY_FIELD, TYPE_FIELD];
    successHandler(){
        const event = new ShowToastEvent({
            title:"Success",
            message:"Record saved Succesfully",
            variant:"Success",

        });
        this.dispatchEvent(event);
    }
    errorHandler(){
        const event = new ShowToastEvent({
        title :"Error",
        message :"There is an error. Pls check",
        variant :" Error"

         } );
         this.dispatchEvent(event);
        }
    }