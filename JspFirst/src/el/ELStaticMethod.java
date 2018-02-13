package el;

import java.util.HashMap;
import java.util.Map;

public class ELStaticMethod {
	@SuppressWarnings("rawtypes")
	private static Map hashmap = new HashMap();
	
	public static int sumNumber(int num1, int num2) {
		return num1 + num2;
	}
	
	public static void setMember(String name, String age) {
		hashmap.put(name, age);
	}
	
	public  static String getMember(String name) {
		return (String) hashmap.get(name);
	}
	
	public static String getInfo() {
		return "EL Method Ver.1.0";
	}
}
