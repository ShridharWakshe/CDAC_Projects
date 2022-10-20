package ADS_Project;
import java.util.*;

public class CarParking{
	static Scanner sc = new Scanner(System.in);
	static int Slots;
	static int front, rear;
	//static int i = 0;
	static int a = 0;
	static int b = 0;
	
	CarParking(){
		front = -1;
		rear = -1;
	}
	
		public static void main(String args[]){
			
			Add add = new Add();
			Remove r = new Remove();
			Display d = new Display();
			Full f = new Full();
			Empty em = new Empty();
					
					System.out.println("\t\t+---------------------------------+");
					System.out.println("\t\t|            WELCOME TO           |");
					System.out.println("\t\t|          SSS CAR PARKING        |");
					System.out.println("\t\t+---------------------------------+");
				//CarParking q = new CarParking();
				
				/*String Q[];
				int Slotsxyz = 0;
				int flag ;
			       do{
					 flag = 1;
					System.out.println("Enter number of car parking slots");
					//sc.nextInt();
					try{
						
					  Slotsxyz = sc.nextInt();
					}catch(InputMismatchException e){
						System.out.println("Invalid Input for number of Slots");
						flag++;	
				    }finally{
						System.out.println("sdfhsdhgv");
					}
					}while(flag!=1);
					
					
					Slots = Slotsxyz;*/
					System.out.println("Enter number of car parking slots");
					int input=0,notInt=0,newInput=0;
					int flag = 0;
					while (notInt == 0){
						try {
							newInput=Integer.parseInt(sc.nextLine());
							Slots=newInput;
							notInt=1;
						}
						catch(NumberFormatException e){
							System.out.println("That is not an integer, please try again." );
						}
					}
					
				    String	Q[] = new  String[Slots];

					
					
					
				int count = 0;
				do{
					System.out.println("Please select an option: " + "\n 1 Add a Car " + " \n 2 Remove Car "  + " \n 3 Display Parking" 
									  + " \n 4 Is parking Full" + " \n 5 Is parking Empty" + "\n 6 Exit");
					int userInput=0;			  
					try{			  
					userInput = sc.nextInt();
					}catch(InputMismatchException e){
						System.out.println("Invalid input!!");
					}
					sc.nextLine();
					switch(userInput){
						
						case 1:  System.out.println("Enter car/customer name");
						        
								 String s = sc.nextLine();
								 if(Q.length <= b){
									System.out.println("+---------------------------------+");  
									System.out.println("|     The Slots are Full!!!       |");
									System.out.println("+---------------------------------+");
									a++;
									
								 }else{
								 add.addCar(Q,s);
								 }
							break;
							
						case 2:b--;
								 r.removeCar(Q);
							break;
							
						case 3:
								 d.displayCars(Q);
							break;

						case 4:
								 f.isParkingFull();
							break;

						case 5:
								 em.isParkingEmpty();
							break;

						case 6: count++;
							break;

						default:
								System.out.println("--------------------------------------------------------");
								System.out.println("                    Notification!!!                     ");
								System.out.println("          Please choose an option from 1 - 6"            );
								System.out.println("--------------------------------------------------------");
					}
				} while(count == 0);
			}
}