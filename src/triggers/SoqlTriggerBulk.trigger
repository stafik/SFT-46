trigger SoqlTriggerBulk on Account (after update) {

    //Perform SOQL query once.
    // Get the accounts and their related Opps
    List<Account> acctsWithOpps = [SELECT Id, (SELECT Id, Name, CloseDate FROM Opportunities)
                                  FROM Account WHERE Id IN :Trigger.New];
    
    // Iterate over the returned accounts
    for (Account a : acctsWithOpps) {
        Opportunity[] relatedOpps = a.Opportunities;
        // some other processing
        System.debug('acctWithOpps: ' + acctsWithOpps);
    }
}