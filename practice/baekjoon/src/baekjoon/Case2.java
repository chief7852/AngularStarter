package baekjoon;

public class Case2 {
	public static void main(String[] args) {
//		1-1 입력된 수가 짝수라면 2로 나눈다.
//		입력된 수가 홀수면 3을 곱하고 1을 더한다.
//		결과로 나온 수에 같은 작업을 1이될때까지 반복한다.
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
