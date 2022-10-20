package ADS_Project;

public class Full{
	
	boolean isParkingFull(){
		
		
		if((CarParking.front == 0 && CarParking.rear == CarParking.Slots -1) || (CarParking.rear == (CarParking.front - 1) % (CarParking.Slots - 1))){
		
			System.out.println("+---------------------------------+");  
			System.out.println("|        Car parking is full!     |");
			System.out.println("|     Please choose other option  |");
			System.out.println("+---------------------------------+");
			return true;
		
		}else {
			System.out.println("+---------------------------------+");  
			System.out.println("|      Car parking is not full!   |");
			System.out.println("|     Please choose other option  |");
			System.out.println("+---------------------------------+");
			return false;
		}
	}
	
}