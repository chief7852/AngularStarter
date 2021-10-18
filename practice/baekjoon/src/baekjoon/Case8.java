package baekjoon;

public class Case8 {
	public static void main(String[] args) {
		int[] answer = new int[2];
		int[] lottos = {1,2,3,4,5,6};
		int[] win_nums = {7,8,9,10,11,12};
		
		int max = 0;
		int min = 0;
		
		int zeroNum = 0; 
		for(int i = 0 ; i < lottos.length; i++) {
			if(lottos[i] != 0) {
				boolean flag = false;
				for(int j : win_nums) {
					
					if(lottos[i] == j) {
						max++;
						flag = true;
						break;
					}
				}
				
				if(flag == false) {
					min++;
				}
				
			}else {
				zeroNum++;
			}
		}
		
		System.out.println(max);
		System.out.println(min);
		System.out.println(zeroNum);
		
		answer[0] = (max+zeroNum == 0)? 6 : 7-(max + zeroNum);
		answer[1] = (min+zeroNum+1 == 7)? 6: (min+zeroNum == 0)? 1: min+zeroNum+1;
		System.out.println(answer[0]+"µî");
		System.out.println(answer[1] + "µî");
		
//		for(int i = 0 ; i <lottos.length; i++) {
//			if(lottos[i] == 0) {
//				max += 1;
//			}else {
//				
//			}
//		}
	}
}
