package el;

import java.util.HashMap;
import java.util.Map;

public class ELMethod {
	private Map hashmap = new HashMap();
	
	public int sumNumber(int num1, int num2) {
		return num1 + num2;
	}
	
	public void setMember(String name, String age) {
		hashmap.put(name, age);
	}
	
	public String getMember(String name) {
		return (String) hashmap.get(name);
	}
	
	public String getInfo() {
		return "EL Method Ver.1.0";
	}
}
