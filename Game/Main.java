package Game;
import java.util.*;

public class Main{
	static int status=0;
	 public static void main(String[] args){
		                                                                         //intro
		 intro in = new intro();
		 in.intro1();
		 Scanner sc = new Scanner(System.in);
				
				                                                       //choose a gun	 for player 1
	    System.out.println("                                           It's "+ in.playerName1 +"'s chance to select a GUN");	
		selectGun sg = new selectGun();
		Player1 player1 = new Player1(in.playerName1,sg.gunName,100);        //Player 1 object
		
        System.out.println("                                               "+in.playerName1 +" has selected " + sg.gunName );
		System.out.println("                                               "+in.playerName1 +"'s health is "+ player1.getHealth());
		System.out.println("                             ================================================================");
		                                                              //choose a gun	 for player 2
		System.out.println("                             ================================================================");
		System.out.println("                                              It's "+ in.playerName2 +" Chance To Select:-");		
		selectGun sg2 = new selectGun();
		Player2 player2 = new Player2(in.playerName2,sg2.gunName,100);          //player2 object
		
	    System.out.println("                                               "+in.playerName2 +" has selected " + sg2.gunName );
		System.out.println("                                               "+in.playerName2 +"'s health is "+ player2.getHealth());
		System.out.println("                             ================================================================");
		                         
								                                                 //intro 2
		intro in1 = new intro();
		in.intro2();
		                                                                    //choose a player to fight
					   
		do{
		System.out.println("                                         Which player do you want  to choose ?");
        System.out.println("                                             Enter 1 for "+in.playerName1+" OR 2 for "+in.playerName2);
        int chanceOfPlayer=sc.nextInt();  
        if (chanceOfPlayer==1){
            System.out.println("                                                    You choose "+in.playerName1);
            System.out.println("                                                press 1 to attack "+in.playerName2);
                int attackGun= sc.nextInt();          
				if (attackGun==1){
                    player2.damageByGun1();  
					
				}else {
           System.out.println("ENTER CORRECT INPUT.");
        } 
					
					
        }else if (chanceOfPlayer==2){
            System.out.println("                                                  You choose "+in.playerName2);
             System.out.println("                                             press 1 to attack "+in.playerName1);
            int attackGun= sc.nextInt();
            if (attackGun==1){
                player1.damageByGun1();
				
        }else {
           System.out.println("                                               ENTER CORRECT INPUT.");
        } 
		}
		if(Player1.flag==1 || Player2.flag==1){
			System.out.println("                                         The Player had Died!!! Game Ends");
		         break;
		}
		else{			
		System.out.println("                                Do you want to continue?? Press 1 to continue, to exit press 2");
		status=sc.nextInt();
		}
		}while(status==1);
			System.out.println("                                          Thank you for playing!!  See you soon!!");
		}
		
}