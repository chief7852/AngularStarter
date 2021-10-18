package baekjoon;

public class Case4 {
	
	// 유클리드 호제법
//	static int n = 36;
//	static int m = 16;
	static int a = 1071;
	static int b = 1029;
	public static void main(String[] args) {
//		int min = (n < m) ? n : m;
//		int gcd = 0;
//		for(int i = 1; i <= min; i++) {
//			if(n % i ==0 && m%i ==0) {gcd = i; System.out.println(gcd);}
//		}
//		System.out.printf("최대공약수 : %s \n최소공배수 : %s",gcd , n * m / gcd);
		
		int[] answer = new int[2];
		Gcdcul findanswer = new Gcdcul();
		answer[0] = findanswer.findGcd(a, b);
		answer[1] = a * b /answer[0];
	}
}
class Gcdcul{
	
	public int findGcd(int a, int b) {
		boolean yn = true;
		while(yn) {
			int r = a%b;
			a = b;
			b = r;
			System.out.printf("a : %s, b : %s \n",a, r);
			if(b == 0) {yn = false;}
			
		}
		return a;
	}
	
}
