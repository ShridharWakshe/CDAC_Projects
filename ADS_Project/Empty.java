package ADS_Project;

public class Empty{
	
	boolean isParkingEmpty(){
	
		
		if(CarParking.front == -1 && CarParking.rear == -1){
			System.out.println("+---------------------------------+");  
			System.out.println("|          Car parking is         |");
			System.out.println("|               Empty             |");
			System.out.println("+---------------------------------+");
			return true;
		}else{
			System.out.println("+---------------------------------+");  
			System.out.println("|      Car parking is not Empty   |");
			System.out.println("|     Please choose other option  |");
			System.out.println("+---------------------------------+");
		}
		return false;
	}
}