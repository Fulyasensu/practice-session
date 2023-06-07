import { LightningElement, wire } from 'lwc';
import { getFieldValue, getFieldDisplayValue, getRecord } from 'lightning/uiRecordApi';

/*import PRIORITY_FIELD from '@salesforce/schema/Case.Priority';
import PHONE_FIELD from '@salesforce/schema/Case.ContactPhone'; */


export default class GetRecord_Case extends LightningElement {

    recordId = '5008d00000PMASzAAP';
    @wire(getRecord,{recordId: '$recordId' , layoutTypes : ['Full'], mode : ['View']})
    caseRecord;
    get priority(){
       // console.log('data '+JSON.stringify(this.caseRecord.data));
        return getFieldValue(this.caseRecord.data,'Case.Priority');

    }

    get phone(){
        return getFieldValue(this.caseRecord.data, 'Case.ContactPhone');

    }

 get email(){

    return getFieldValue(this.caseRecord.data, 'Case.ContactEmail');

 }
 get accName(){
    return getFieldDisplayValue(this.caseRecord.data, 'Case.Account');
 }

}