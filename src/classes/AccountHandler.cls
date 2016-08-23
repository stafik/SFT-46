public class AccountHandler {

    public static Account insertNewAccount(String accountName) {
        
        Account acct = new Account(Name=accountName);
        
        try {
            Database.SaveResult srList = Database.insert(acct, true);
            
            if (srList.isSuccess()) {
                return acct;
            }
            else {
                return null;
            }
        }
        catch (DmlException e) {
            return null;
        }
    }
}