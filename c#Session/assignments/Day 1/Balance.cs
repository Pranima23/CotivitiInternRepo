using System;
					
/*
This program enables users to deposit, check balance and withdraw.
*/
public class Program
{
	//function to deposit
	public static int Deposit(int CurrentBalance, int DepositAmount){
		if (DepositAmount > 0) {
			Console.WriteLine("Deposit successful");
			CurrentBalance += DepositAmount;
		} else {
			Console.WriteLine("Deposit can't be negative or zero");
		}
		return CurrentBalance;
		
	}
	
	//function to check balance
	public static void CheckBalance(int CurrentBalance){
		if (CurrentBalance > 0) {
			Console.WriteLine("Current Balance is {0}", CurrentBalance);
		} else {
			Console.WriteLine("No balance");
		}
		return;
	}
	
	//function to withdraw
	public static int Withdraw(int CurrentBalance, int WithdrawAmount){
		if (CurrentBalance <= 0) {
			Console.WriteLine("No balance");
			Console.WriteLine("Withdraw failed");
		} else if (WithdrawAmount < 0) {
			Console.WriteLine("Can't withraw negative amount");
			Console.WriteLine("Withdraw failed");
		} else if (CurrentBalance < WithdrawAmount) {
			Console.WriteLine("Insufficient fund");
			Console.WriteLine("Withdraw failed");
		}
		else {
			Console.WriteLine("Withdraw successful");
			CurrentBalance -= WithdrawAmount;
		} 		
		return CurrentBalance;
	}
	public static void Main()
	{
		int CurrentBalance = 0;		

		for(int i=0; i<=5; i++){
			int Choice;
			Console.Write("\nEnter 1 to deposit\nEnter 2 to check balance\nEnter 3 to withdraw cash\n");
			Choice = Convert.ToInt32(Console.ReadLine());
			switch(Choice) {
				case 1:
					// deposit
					int DepositAmount;
					Console.Write("Enter amount to deposit: ");
					DepositAmount = Convert.ToInt32(Console.ReadLine());
					CurrentBalance = Deposit(CurrentBalance, DepositAmount);
					CheckBalance(CurrentBalance);
					break;
				case 2:
					// check balance
					CheckBalance(CurrentBalance);
					break;
				case 3:
					// withdraw 
					int WithdrawAmount;
					Console.Write("Enter amount to withdraw");
					WithdrawAmount = Convert.ToInt32(Console.ReadLine());
					CurrentBalance = Withdraw(CurrentBalance, WithdrawAmount);
					CheckBalance(CurrentBalance);
					break;
			}
			
		}
	
	
	}
}