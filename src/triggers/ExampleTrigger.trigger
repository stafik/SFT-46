trigger ExampleTrigger on Contact (after insert, after delete) {
    if (Trigger.isInsert) {
        Integer recordCount = Trigger.New.size();
        // call a method from another class
        EmailManager.sendMail('pstawinoga@craftware.biz', 'Trailhead Trigger Tutorial', recordCount + ' contact(s) were inserted.');
    }
    else if (Trigger.isDelete) {
        // another action
    }
}