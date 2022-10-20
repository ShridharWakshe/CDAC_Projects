package Game;

public class Player1 {
    private String name;
    private String weapons;
    private int health;
	public static int flag=0;

    public Player1(String name, String weaponName , int Health){
        this.name=name;
        this.weapons=weaponName;

        if(Health<0 || Health >100){
            this.health=100;
        }else this.health=Health;
    }

    public void damageByGun1(){
        this.health=this.health-30;
        if (this.health<=0){
            this.health=0;
        }
        System.out.println("                                            !!!HIT, health reduced by 30!!!");
        System.out.println("                                               Current health is "+this.health);
        System.out.println();

        if (this.health==0){
			flag =1;
            System.out.println("!!!"+getName()+" "+" Died!!!");
            System.out.println();
        }
    }


    public String getName() {
        return name;
    }

    public String getWeapons() {
        return weapons;
    }

    public int getHealth() {
        return health;
    }
}