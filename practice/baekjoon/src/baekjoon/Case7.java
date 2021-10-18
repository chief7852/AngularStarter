package baekjoon;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Case7 {
	public static void main(String[] args) {
		String s = "one2three4";
		
		String[] filter ={"zero","one","two","three","four","five","six","seven","eight","nine"};
		
		for(int i = 0; i < filter.length; i ++ ) {
			if(s.indexOf(filter[i]) != -1) {				
				System.out.println("Ã£À½"+ i);
				s.replace(filter[i], "s");
				System.out.println(s);
				System.out.println(filter[i]);
			}
		}
//		s = s.replaceAll(filter[1], 1+"");
		System.out.println(s);
	}
}
