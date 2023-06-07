import { LightningElement } from 'lwc';
import CASE_OBJ from '@salesforce/schema/Case';
import Description from '@salesforce/schema/Case.Description';
import AccountId from '@salesforce/schema/Case.AccountId';
import ContactId from '@salesforce/schema/Case.ContactId';
import Origin from '@salesforce/schema/Case.Origin';
import Priority from '@salesforce/schema/Case.Priority';
import Status from '@salesforce/schema/Case.Status';
import Subject from '@salesforce/schema/Case.Subject';

export default class Assignment_CaseForm extends LightningElement {
    objName= CASE_OBJ;
    recordId='5008d00000PMASzAAP';
    fields={
        Description :Description,
        AccountId : AccountId,
        ContactId :ContactId,
        Origin:Origin,
        Priority:Priority,
        Status:Status,
        Subject:Subject
    }

}