import { LightningElement,wire } from 'lwc';

//import adapter
import { getObjectInfo } from 'lightning/uiObjectInfoApi';

//import contact oject
import CONTACT_OBJ from '@salesforce/schema/Contact'

export default class GetObjectInfo_Contact extends LightningElement {

//return data, error 
// data :.......
    conRtId;
    @wire(getObjectInfo,{objectApiName: CONTACT_OBJ})
    contactHandler({data,error}){

        if(data){
        console.log(data);
        this.conRtId= data.defaultRecordTypeId;

        }
        if(error){
            console.log(error);
        }
    }


}