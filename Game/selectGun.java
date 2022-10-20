package Game;
import java.util.*;

public class selectGun{
	Scanner sc = new Scanner(System.in);
	int gun = 0;
	boolean input = false;
	String gunName = null;
         selectGun(){
			  
				do{  
		System.out.println("            CHOOSE GUN FROM THE LIST ::\n" );
        System.out.println("                  1. ump-19" );
        System.out.println("                  2. Scar-L" );
        System.out.println("                  3. M416" );
        System.out.println("                  4. Pistol");
        gun = sc.nextInt();
		
        if (gun==1){
            gunName = "ump-19";
			input = true;
        }else if (gun==2){
            gunName = "Scar-L";
			input = true;
        }else if (gun==3){
            gunName = "M416";
			input = true;
        }else if (gun==4){
            gunName = "Pistol";
			input = true;
        }else {
            System.out.println("                  ENTERED INPUT IS NOT VALID, TRY AGAIN");
        }
		}while(input == false);
		 }	
}