trigger SoqlTriggerBulk2 on Account (before insert) {

    // Get the related Opps for the Accounts in this trigger.
    List<Opportunity> relatedOpps = [SELECT Id, Name, CloseDate FROM Opportunity WHERE AccountId IN :Trigger.New];
    
    // Iterate over the related Opps
    for (Opportunity opp : relatedOpps) {
        // do some processing
    }
    
    // Or this way:
    for (Opportunity opt : [SELECT Id, Name, CloseDate FROM Opportunity WHERE AccountId IN :Trigger.New]) {
        // something here
    }
}