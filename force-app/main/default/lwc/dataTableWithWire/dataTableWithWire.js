import getAccounts from '@salesforce/apex/AccountController.getAccounts';
import { LightningElement,wire,track } from 'lwc';

export default class DataTanleWithWire extends LightningElement {
    @track data;
    @track  columns = [
        {label : 'Label', fieldName:'Name', type:'text'},
        {label : 'Phone', fieldName:'Phone', type:'phone'},
        {label : 'Industry', fieldName:'Industry', type:'text'},
        
    ]

    @wire(getAccounts) accountData({error,data}){
        if(data){
            this.data = data;
        }
        else if(error){
            this.data = undefined;
        }
    }
}