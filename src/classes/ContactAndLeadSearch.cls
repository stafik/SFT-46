public class ContactAndLeadSearch {

    public static List<List<SObject>> searchContactsAndLeads(String param) {
        
        List<List<SObject>> result = [FIND :param 
                                      RETURNING Contact(FirstName, LastName WHERE FirstName = :param OR LastName = :param),
                                      			Lead(FirstName, LastName WHERE FirstName = :param OR LastName = :param)];
        
        return result;
    }
}