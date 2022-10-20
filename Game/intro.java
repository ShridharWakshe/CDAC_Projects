package Game;
import java.util.*;

public class intro{
	String playerName1;
	String playerName2;
	void intro1(){
		//intro
		  System.out.println("                            ================================================================");
		  Scanner sc = new Scanner(System.in);
		  System.out.println("                                   ||==>>	     WELCOME TO THE GAME       <<==||");
		  System.out.println("                            ================================================================");
			System.out.print("                                          Enter the name of player 1 ::  ");
			playerName1 = sc.nextLine();
			System.out.print("                                          Enter the name of player 2 ::  ");
			playerName2 = sc.nextLine();
			System.out.println("                            ================================================================");
			System.out.println("");
			System.out.println("                                                 WELCOME  " + playerName1 + " & " + playerName2 + "\n");
			System.out.println("                            ================================================================");
            System.out.println("                                        !!!!!!=====Let's Start the Game=====!!!!!!");
			System.out.println("                            ================================================================");
				System.out.println("");
	}//intro 2
    void intro2(){
	   
	System.out.println();
        System.out.println();
        System.out.println("                                                       LET'S START");
        System.out.println();
        System.out.println();
		System.out.println("                             ================================================================");
}
}