import { LightningElement } from 'lwc';
//import Object
import CONTACT__OBJECT  from "@salesforce/schema/Contact";

//Import Fields
import LASTNAME_FIELDS from "@salesforce/schema/Contact.LastName";
export default class LightningRecordForm extends LightningElement {

objectApiName = CONTACT__OBJECT;
recordId = '0038d00000OSS3FAAX'
fields = [LASTNAME_FIELDS];

}  