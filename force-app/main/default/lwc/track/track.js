import { LightningElement,track } from 'lwc';

export default class Track extends LightningElement {

//Object
@track batch = {
    batchName : "Batch 13",
    batchSize : 70
}

batchNameHandler(event){
    this.batch.batchName = event.target.value;
}

}