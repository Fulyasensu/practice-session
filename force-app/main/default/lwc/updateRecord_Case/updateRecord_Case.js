import { LightningElement } from 'lwc';

export default class UpdateRecord_Case extends LightningElement {

    inpurData={};
    recordId="5008d00000Q9RnNAAV"
    changeHandler(event){
        const{name,value}= event.target;
        this.inputData[name]=value;
    updateCaseHandler()
        this.inputData['id']=this.recordId;
    
    }
    
update 
}
}