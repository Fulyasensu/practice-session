import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';
import STAGENAME_FIELD from '@salesforce/schema/Opportunity.StageName';
import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
import NAME_FIELD from '@salesforce/schema/Opportunity.Name';

import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';


export default class OppInformation_Opp extends LightningElement {


  dftOppId;
  OppName = NAME_FIELD;

  @wire (getObjectInfo, {objectApiName:OPPORTUNITY_OBJECT})
  objectHandler({data,error}){
    if(data){
    this.dftOppId=data.defaultRecordTypeId;
    }
}

typeOption;
@wire(getPicklistValues,{fieldApiName:TYPE_FIELD,recordTypeId:'$dftOppId'})
typeHandler({data,error}){
    if (data) {
      console.log(data);
      this.typeOption=data.values;
    }


  }

 StageOption;
@wire(getPicklistValues,{fieldApiName:STAGENAME_FIELD ,recordTypeId:'$dftOppId'})
stageHandler({data,error}){
    if (data) {
      console.log(data);
      this.StageOption=data.values;
    }
    

  }
  
OppType;
TypeHandler(event){
    this.OppType=event.detail.value;
  }
OppStage;
StageHandler(event){
    this.OppStage=event.detail.value;
}
  
OppName1;
NameHandler(event){
  this.OppName1=event.target.value;
}

}