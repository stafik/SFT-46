trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) {
    
    List<Task> tasksToUpload = new List<Task>();

    for (Opportunity opp : Trigger.new) {
        if (opp.StageName == 'Closed Won') {
            Task oppTask = new Task(Subject = 'Follow Up Test Task',
                                   WhatId = opp.Id);
            
            tasksToUpload.add(oppTask);
        }
    }
    
    if (tasksToUpload.size() > 0) {
        insert tasksToUpload;
    }
}