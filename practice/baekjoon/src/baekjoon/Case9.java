package baekjoon;

public class Case9 {
	public static void main(String[] args) {
//		아이디길이 3자 이샹 15자 이하
//		아이디 알파벳 소문자, 숫자 , 빼기, 밑줄, 마침표만 가능
//		.는 처음과 끝에 사용할 수 없다.
		
		String new_id = "...!@BaT#*..y.ab cdefghijklm.";
//		String new_id = "";
		if(new_id != "") {
			
			//1단계
			new_id = new_id.toLowerCase();
			//2단계
			new_id = new_id.replaceAll("[^\uAC00-\uD7A3xfe0-9a-zA-Z-._\\s]", "");
			
			//3단계
			while(new_id.indexOf("..") != -1) {
				new_id = new_id.replace("..", ".");
			}
			
			//4단계
			StringBuffer id = new StringBuffer(new_id);
			
			id =(id.charAt(0) == '.')? id.deleteCharAt(0) : id;
			id =(id.charAt(id.length()-1) == '.')? id.deleteCharAt(id.length()-1) : id;
			//5단계
//		id
			
			new_id = id+"";
			
			new_id = new_id.replaceAll(" ", "");
			System.out.println(new_id);
//			new_id = (new_id == "")? "a": new_id; 나중에 다 추가
			
			//6단계
		}else {
			new_id = "a";
		}
		
	}
}
