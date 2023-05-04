import { LightningElement, wire} from 'lwc';
//Import the adapters
import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
//Import object
import ACCOUNT_OBJECT from '@salesforce/schema/Account';

export default class GetPicklistValyesByRecordType_Account_2 extends LightningElement {

@wire(getObjectInfo,{objectApiName : ACCOUNT_OBJECT})
objectHandler({data,error}){
    console.log(data);
}   

}