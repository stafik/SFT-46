public class RandomContactFactory {

    public static List<Contact> generateRandomContacts(Integer howManyContacts, String contactLastName) {
        
        List<Contact> contactList = new List<Contact>();
        
        for (Integer i = 0; i < howManyContacts; i++) {
            contactList.add(new Contact(FirstName = contactLastName + i + i, LastName = contactLastName + ' ' + i));
            System.debug(contactList);
        }
        
        System.debug('contactList: ' + contactList);
    	return contactList;
    }
}