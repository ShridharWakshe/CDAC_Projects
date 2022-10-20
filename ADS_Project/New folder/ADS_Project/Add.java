package ADS_Project;

public class Add{
	void addCar(String Q[] ,String element){
		
		
				if(CarParking.front == -1){
					CarParking.front = 0;
				}
				CarParking.rear = (CarParking.rear+1)%CarParking.Slots;
				
				try{
				Q[CarParking.rear]=element;
				}catch(Exception e){
					System.out.println("+---------------------------------+");  
					System.out.println("|     The Slots are Full!!!       |");
					System.out.println("+---------------------------------+");
					CarParking.a++;
				}
				if(CarParking.a==0){
				System.out.println("+---------------------------------+");  
				System.out.println("|     Car arrived in the Slot!!!  |");
				System.out.println("+---------------------------------+");
				CarParking.b++;
				}	
				else{
					System.out.println();
				}
	}
}