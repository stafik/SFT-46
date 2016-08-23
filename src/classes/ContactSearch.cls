public class ContactSearch {

    public static List<Contact> searchForContacts(String contactLastName, String contactMailingPostalCode) {
        
        List<Contact> results;
        
        results = [SELECT FirstName, LastName FROM Contact WHERE LastName = :contactLastName AND MailingPostalCode = :contactMailingPostalCode];
        
        return results;
    }
}