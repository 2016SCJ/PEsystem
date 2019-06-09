package other;

public class myUtil {
	public static boolean isNumeric(String str){  //¼ì²é×Ö·û´®Ö»º¬ÓĞÊı×Ö
		for (int i = str.length();--i>=0;){    
			if (!Character.isDigit(str.charAt(i))){  
				return false;  
			}  
		}  
		return true;  
	} 
}
