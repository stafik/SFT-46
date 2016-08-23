public class StringArrayTest {

    public static List<String> generateStringArray(Integer stringNumber) {
        
        List<String> stringList = new List<String>();
        Integer i;
        
        for (i=0; i<stringNumber; i++) {
        	stringList.add('Test ' + i);
        }
    	return stringList;
    }
    
}