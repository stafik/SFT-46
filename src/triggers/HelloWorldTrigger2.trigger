trigger HelloWorldTrigger2 on Account (before insert, after insert, after delete) {
    if(Trigger.isInsert) {
        if(Trigger.isBefore) {
            System.debug('Before Trigger');
        }
        else if(Trigger.isAfter) {
            System.debug('After Trigger');
        }
    }
    else if(Trigger.isDelete) {
        System.debug('Delete Trigger');
    }
}