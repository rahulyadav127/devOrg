public class AccountTeamMemberTriggerHandler {
    /*
     populate Account Team Member on Account Object in custom field 
*/
    public static void populateTeamMemberOnAccount(List<AccountTeamMember> TeamMemberList){
        set<id> accountIds = New set<id>();
        List<Account> accList = new List<Account>();
        for(AccountTeamMember accTeamMember : TeamMemberList){
             accountIds.add(accTeamMember.AccountId);
        }
        Map<String,List<String>> acctUserMap = New Map<String,List<String>>();
        for(AccountTeamMember accTeamMember : [Select Id,AccountId, UserId FROM AccountTeamMember WHERE AccountId in : accountIds]){
         
            if(!acctUserMap.containsKey(accTeamMember.AccountId)){
                acctUserMap.put(accTeamMember.AccountId,new List<String>());
            }
            acctUserMap.get(accTeamMember.AccountId).add(accTeamMember.UserId);
        }
        Account acct ;
        for(String acctId : accountIds){
            acct = new Account(Id = acctId);
            if(acctUserMap.containsKey(acctId)){
                for(String user : acctUserMap.get(acctId)){
                    if(acct.AccountTeamMemberIDs__c == null){
                        acct.AccountTeamMemberIDs__c = user;
                    }else{
                        acct.AccountTeamMemberIDs__c = acct.AccountTeamMemberIDs__c +',' + user;
                    }
                }
                accList.add(acct);
            }
        }
        try{
            UPDATE accList;
        }
        catch(exception e){
            system.debug('errorMsg  ='+e.getMessage());
        }
    }
}