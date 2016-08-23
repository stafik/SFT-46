trigger AddRelatedRecords2 on Account (after insert, after update) {

    List<Opportunity> oppList = new List<Opportunity>();
    
    // Add an Opp for each account if it doesn't already have one.
    // Iterate over accounts that are in this trigger but that don't have Opps
    
    for (Account a : [SELECT  Id, Name FROM Account
                     WHERE Id IN :Trigger.New AND
                      Id NOT IN (SELECT AccountId FROM Opportunity)]) {
                          
    	// Add a default Opp for this account
    	oppList.add(new Opportunity(Name = a.Name + ' Opportunity',
                                   StageName = 'Prospecting',
                                   CloseDate = System.today().addMonths(1),
                                   AccountId = a.Id));
                      }
    if (oppList.size() > 0) {
        insert OppList;
    }
}