@isTest
public class TestVerifyDate {
    
    @isTest static void datesInverval40Days() {
        
        Date date1, date2, result, endOfMonth;
        
        date1 = Date.today();
        date2 = Date.today().addDays(40);
        endOfMonth = Date.today().toStartOfMonth().addMonths(1) - 1;
        result = VerifyDate.CheckDates(date1, date2);
        
        System.assertEquals(result, endOfMonth);
    }
 
    @isTest static void datesInterval25Days() {
        
        Date date1, date2, result;
        
        date1 = Date.today();
        date2 = date1.addDays(25);
        result = VerifyDate.CheckDates(date1, date2);
        
        System.assertEquals(result, date2);
    }
}