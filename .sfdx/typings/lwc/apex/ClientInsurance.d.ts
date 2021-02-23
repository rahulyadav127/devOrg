declare module "@salesforce/apex/ClientInsurance.getClientRecords" {
  export default function getClientRecords(): Promise<any>;
}
declare module "@salesforce/apex/ClientInsurance.insertClientData" {
  export default function insertClientData(param: {name: any, country: any, address: any, email: any, phone: any, postalcode: any}): Promise<any>;
}
declare module "@salesforce/apex/ClientInsurance.insertClientInsurance" {
  export default function insertClientInsurance(param: {name: any, insuranceamount: any, startdate: any, enddate: any}): Promise<any>;
}
declare module "@salesforce/apex/ClientInsurance.saveClientAddress" {
  export default function saveClientAddress(param: {billingstateprovince: any, billingcity: any, billingstreet: any, shippingcity: any, shippingstreet: any, website: any, ids: any}): Promise<any>;
}
declare module "@salesforce/apex/ClientInsurance.fetchClient" {
  export default function fetchClient(param: {ids: any}): Promise<any>;
}
declare module "@salesforce/apex/ClientInsurance.fetchClientInsurance" {
  export default function fetchClientInsurance(param: {ids: any}): Promise<any>;
}
