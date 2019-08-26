
import java.util.*;

class Reg
 {
	int i,b, g , h , s ;
	public int counter;
	public long UrNic;
	Scanner s3 = new Scanner (System.in);
	long[] NIC= {42301 ,42302,42303,42304,42305,42306,42307,42308,42309,42310,
			     42311 ,42312,42313,42314,42315,42316,42317,42318,42319,42320};
 }

class Person extends Reg
{     int a,m , n, o;
	  Scanner s = new Scanner(System.in);
		 void Voting()
		 {
	  System.out.println("Now enter your vote : ");
	 
	  a = s.nextInt();
	 if
	    (a==383)
		 {
		   System.out.println("You have voted for Party 1");
		    m++;
	     }
	 else if
	        (a==384)
		 {
		  System.out.println("You have voted for Party 2");
		  n++;
		 }
	 else if
	       (a==385)
		 {
		   System.out.println("You have voted for Party 3"); 
		   o++;
		 }
	 else if
	     (a!=383 && a!=384&&a!=385)
		 System.out.println("Not found !");
	 
	   System.out.println(m);
       System.out.println(n);
       System.out.println(o);
	}
}
//class Show 
class Candidates 
 {
	int a;
	int i,m,n,o;
	//Scanner s=new Scanner(System.in);
	  void show()
	{
	     int[] array ={383,384,385};
	    System.out.printf(" Welcome to Voting System\n");
       for(int Candidate=0;Candidate<3;Candidate++)
       {
		    System.out.println(" Candidate  "+(Candidate+1) + "\t  "+(array[Candidate]));
       }
	}
 }


class Voter extends Reg
{
	long RegistrationShow()
	{ 
		System.out.println("Enter Your NIC");
		Scanner s1 = new Scanner(System.in);
		long UrNic=s1.nextLong();
		
		for( b = 0; b < 20 ;b++)
		{
		 if  (UrNic == NIC[b])
				{
			     // System.out.println("You are eligible");
			      //System.out.println(" Enter Gender  ");
			      return UrNic;
				}
		/*if  (UrNic == NIC[b])
		     {
			    System.out.println(" Enter Gender \n Press 1"+" for male \n Press 2 for female ");
			    g = s3.nextInt();
			    if ( g == 1)
			    	 h++;
			    else 
			         s++;
			       // return UrNic;
			   }*/
		 }
		return 0;
       }
	void mf_check(long nic)
	{
		if  (nic == NIC[b])
	     {
		    System.out.println(" Enter Gender \n Press 1"+" for male \n Press 2 for female ");
		    g = s3.nextInt();
		    if ( g == 1)
		    	 h++;
		    else 
		         s++;
		       // return UrNic;
		   }
	}
}
class Check 
	{ 
		long[] arr=new long[20];
		boolean CheckPersonExist(long aCnic , int count)
	
		{
			for(int counter=0;counter<20;counter++)
			{
				if(aCnic==arr[counter])
					return true;
			}
			arr[count] = aCnic;
			return false;
		}
	}

	
class Result
{
	public void Conclusion(int m, int n, int o , int h , int s)

	{ 
	  System.out.println("Your result");
	  System.out.println(" Party 1 =  " +m);
	  System.out.println(" Party 2 = " +n);
	  System.out.println(" Party 3 = " +o);
	  
	  System.out.println(" Voters ");
	  System.out.println(" Male Voters = " +h );
	  System.out.println(" Female Voters = " + s);
	  
	  if (m > n  && m > 0)
		  System.out.println(" Party 1 Won ");
	  if (n > m  && n > 0)
		  System.out.println(" Party 2 Won ");
	  if (o > n  && o > m)
		  System.out.println(" Party  3 Won ");
    }

}


public class VotingSystem{

	public static void main(String[] args) {
       char aChar;
       aChar = 'a';
       int counter = -1;
       Reg obj1=new Reg();
       Check obj2 = new Check();
       Result res=new Result();
      Candidates obj5 = new Candidates();
       Person obj4 = new Person();
       //Show obj=new Show();
       Voter obj3= new Voter();
	    do
	    {
	    	counter ++;
	   long iCnic = obj3.RegistrationShow();
	
	   if(obj2.CheckPersonExist(iCnic , counter))
		{
			System.out.println("You are not eligible... !");
		}
		else
		{
			System.out.println("You are eligible... !");
			obj3.mf_check(iCnic);
			obj5.show();
			obj4.Voting();
		    System.out.println(" Want to vote ? press y");
		    Scanner st = new Scanner(System.in);
		    String c=st.next();
		    aChar = c.charAt(0);
			}
	    }
	    while( aChar=='y');
	    res.Conclusion(obj4.m,obj4.n,obj4.o , obj3.h , obj3.s);
	    System.out.println(obj4.m);
	       System.out.println(obj4.n);
	       System.out.println(obj4.o);
	    
	    }
}



