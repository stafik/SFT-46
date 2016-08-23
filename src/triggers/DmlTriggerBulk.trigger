trigger DmlTriggerBulk on Account (after update) {
	// Get related Opps for the accounts in this trigger
	List<Opportunity> relatedOpps = [SELECT Id, Name, Probability FROM Opportunity WHERE AccountId IN :Trigger.New];
    
    List<Opportunity> oppsToUpdate = new List<Opportunity>();
    
    // Iterate over the related Opportunities
    for(Opportunity opp : relatedOpps) {
        // Update the description when Probability is greater than 50% but less than 100%
        if ((opp.Probability >= 50) && (opp.Probability < 100)) {
            opp.Description = 'New description for Opp';
            oppsToUpdate.add(opp);
        }
    }
    // Perform DML on a collection
    update oppsToUpdate;
}