package baekjoon;

public class Case2 {
	public static void main(String[] args) {
//		1-1 �Էµ� ���� ¦����� 2�� ������.
//		�Էµ� ���� Ȧ���� 3�� ���ϰ� 1�� ���Ѵ�.
//		����� ���� ���� ���� �۾��� 1�̵ɶ����� �ݺ��Ѵ�.
		int num = 16;
		int answer = findAnswer(num);
		System.out.println(answer);
	}
	
	
	public static int findAnswer(int num) {
		int answer = 0;
		while (num != 1) {
			if(num % 2 == 1) {
				num = num * 3 + 1;
			}else {
				num = num/2;
			}
			answer += 1;
			if(answer >= 500) {
				return -1;
			}
		}
		return answer;
	}
	
}
