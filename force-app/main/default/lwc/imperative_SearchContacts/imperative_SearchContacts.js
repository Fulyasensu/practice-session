import { LightningElement } from 'lwc';
import searchContacts from '@salesforce/apex/ContactController_LWC.searchContacts';

export default class Imperative_SearchContacts extends LightningElement {
    searchWord;
    contacts;
    error;
    
    searchHandler(event){
        this.searchWord=event.target.value;
        searchContacts({searchString :this.searchWord})
        .then(result =>{
            this.contacts=result;
        })
.catch(error =>{
    this.error=error;
})
        }
    }
