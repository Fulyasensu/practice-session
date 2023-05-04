import { LightningElement, wire } from 'lwc';

//Import the adapter
import { getPicklistValues } from 'lightning/uiObjectInfoApi';
import { getObjectInfo} from 'lightning/uiObjectInfoApi';

//Import Field
import STATUS_FIELD from '@salesforce/schema/Case.Status';

//Import Object
import CASE_OBJ from '@salesforce/schema/Case';

export default class GetPicklistValues_Case extends LightningElement {

    statusOptions;
    defCaseRTId;

    @wire(getObjectInfo,{objectApiName : CASE_OBJ})
    caseHandler({data,error}){
        if(data){
            this.defCaseRTId = data.defaultRecordTypeId;
        }
    }


    @wire(getPicklistValues,{fieldApiName : STATUS_FIELD, recordTypeId : '012000000000000AAA'})
    caseStatusHandler({data,error}){
        if(data){
            console.log(data);
            this.statusOptions = data.values;  
            //New : Fresh
            //In Progress : Doing
            //Closed : Done          
        }
        if(error){
            console.log(error);
        }
    }

    @wire(getPicklistValues,{fielfdApiName : PRIORITY_FIELD, recordTypeId}
}