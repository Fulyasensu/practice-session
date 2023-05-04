import { LightningElement } from 'lwc';
import LASTNAME_FIELD from '@salesforce/schema/Lead.LastName';
import LEAD_OBJECT from '@salesforce/schema/Lead';
import COMPANY_FIELD from '@salesforce/schema/Lead.Company';
import STATUS_FIELD from '@salesforce/schema/Lead.Status';




export default class AssignmentRecordForm extends LightningElement {
    objName=LEAD_OBJECT;
    fields={
        lastName : LASTNAME_FIELD,
        company: COMPANY_FIELD,
        status: STATUS_FIELD
    };
    recordId='';

}