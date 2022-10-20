package Game;

public class Player2 extends Player1{
    private int health;

    public Player2(String name, String Weapon , int health  ){
       super(name,Weapon,health);  // As, we are extending it from Player1, so we are storing the value of the player 1 to player 2. It is done with the help of super keyword.
        this.health=health;
    }

    //@Override
    public void damageByGun1() {
         this.health = this.health - 30;
            if (this.health<=0){
				this.health=0;
			}
            System.out.println("                                            !!!HIT, health reduced by 30!!!");
            System.out.println("                                                 Current health is "+this.health);
            System.out.println();
			
         if(this.health == 0){
			 flag =1;
            System.out.println("!!!"+getName()+" "+" Died!!!");
			System.out.println();
			
        }
	}
   }