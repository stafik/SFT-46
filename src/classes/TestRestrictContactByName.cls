@isTest
public class TestRestrictContactByName {
	
    @isTest static void testContactTrigger() {
        
        Contact contacto = new Contact(LastName = 'INVALIDNAME');
        Database.SaveResult result = Database.insert(contacto);
        
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', result.getErrors()[0].getMessage());
    }
}