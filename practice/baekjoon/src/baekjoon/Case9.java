package baekjoon;

public class Case9 {
	public static void main(String[] args) {
//		���̵���� 3�� �̼� 15�� ����
//		���̵� ���ĺ� �ҹ���, ���� , ����, ����, ��ħǥ�� ����
//		.�� ó���� ���� ����� �� ����.
		
		String new_id = "...!@BaT#*..y.ab cdefghijklm.";
//		String new_id = "";
		if(new_id != "") {
			
			//1�ܰ�
			new_id = new_id.toLowerCase();
			//2�ܰ�
			new_id = new_id.replaceAll("[^\uAC00-\uD7A3xfe0-9a-zA-Z-._\\s]", "");
			
			//3�ܰ�
			while(new_id.indexOf("..") != -1) {
				new_id = new_id.replace("..", ".");
			}
			
			//4�ܰ�
			StringBuffer id = new StringBuffer(new_id);
			
			id =(id.charAt(0) == '.')? id.deleteCharAt(0) : id;
			id =(id.charAt(id.length()-1) == '.')? id.deleteCharAt(id.length()-1) : id;
			//5�ܰ�
//		id
			
			new_id = id+"";
			
			new_id = new_id.replaceAll(" ", "");
			System.out.println(new_id);
//			new_id = (new_id == "")? "a": new_id; ���߿� �� �߰�
			
			//6�ܰ�
		}else {
			new_id = "a";
		}
		
	}
}
