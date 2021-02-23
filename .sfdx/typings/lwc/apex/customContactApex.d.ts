declare module "@salesforce/apex/customContactApex.getAllContactRelatedToParent" {
  export default function getAllContactRelatedToParent(param: {currentAccId: any}): Promise<any>;
}
declare module "@salesforce/apex/customContactApex.addAllSelectedContact" {
  export default function addAllSelectedContact(param: {conList: any, currentAccId: any}): Promise<any>;
}
