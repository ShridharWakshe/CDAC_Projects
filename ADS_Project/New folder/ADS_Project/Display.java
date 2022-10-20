package ADS_Project;

public class Display{
	void displayCars(String Q[]){
		
		
		int b = 1;
		if(CarParking.front == -1 && CarParking.rear == -1){
			System.out.println("+---------------------------------+");  
			System.out.println("|        There is no car in       |");
			System.out.println("|          Car Parking            |");
			System.out.println("+---------------------------------+");
			
		}
		else{
			System.out.println("+---------------------------------+");  
			System.out.println("|     List of cars in parking     |");
			System.out.println("+---------------------------------+");
			System.out.println();
			
		if(CarParking.rear >= CarParking.front){
			
		for(int i = CarParking.front;i <= CarParking.rear;i++){
			System.out.println("Car in Slot "+ b +" --> "+Q[i]+" ");
			b++;
		}
		}
		else{
			for(int i = CarParking.front ; i<CarParking.Slots ; i++){
			System.out.println("Car in Slot "+ b +" --> "+Q[i]+" ");
			b++;
			}
			for( int i = 0; i <= CarParking.rear; i++){
				System.out.println("Car in Slot "+ b +" --> "+Q[i]+" ");
				b++;
			}
		}	
	}System.out.println();
    }
}