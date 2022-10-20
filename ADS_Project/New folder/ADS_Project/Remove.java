package ADS_Project;

public class Remove{
	String removeCar(String Q[]){
		
		
		String element;
		if(CarParking.front == -1 && CarParking.rear == -1)
		{
			System.out.println("+---------------------------------+");  
			System.out.println("|        There is no car in       |");
			System.out.println("|          Car Parking            |");
			System.out.println("+---------------------------------+");
			return  "-1";
		}
		else{
			element = Q[CarParking.front];
			
			if(CarParking.front == CarParking.rear){
				CarParking.front = -1;
				CarParking.rear = -1;
			}
			else{
				CarParking.front = (CarParking.front+1)%CarParking.Slots;
			}
			System.out.println("+---------------------------------+");  
			System.out.println("|     Removed car is = "+element+"         |");
			System.out.println("+---------------------------------+");
			return element;
					
			
		}
	}
	
}