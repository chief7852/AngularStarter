package baekjoon;

import java.util.ArrayList;
import java.util.List;

public class Case3 {
	public static void main(String[] args) {
		int x = 13;
//		int z = x;
		boolean answer = true;
		Hasshad has = new Hasshad();
		int y = has.calculate(x);
		
		if(x % y != 0) {
			answer = false;
		}
		System.out.println(answer);
	}
}


class Hasshad{
	public int calculate(int x) {
		int y = 0;
		while(x > 0) {
			y += x % 10;
			x /= 10;
		}
		return y;
	}
}