require 'pry'

$accounts = {
	account1: 10000,
	account2: 5000,
	account3: 25000,
	account4: 15000,
	account5: 12000
}

class Customer 
	attr_accessor :cust_name
	def initialize
	 
	end
   
    def start_banking
     puts "Enter your name"
     @name = gets.chomp
     puts "Welcome #{@name} to the fake national bank"
     
     # i for run the loop
     i = 1

	     loop do 
		       puts "\nEnter Your Choice:"
		       puts "Enter 1 to get the balances from all accounts \nEnter 2 to Investing in Mutul funds: \nEnter 9 to exit:"

		       @option = gets.chomp.to_i

		       case @option 
			       	when 9
			       		break
			       	when 1
			       		print_balance
			       	when 2
			       		get_mutual_fund_amount
			       	else
			       		puts "\nOOps! wrong Input :(\n"
		       end 
    		puts "-------------------------------------------------------------------------------------------------"

		  end

    end 


    def print_balance
    	$accounts.each do |account, bal|
    		puts "#{account} : #{bal.to_f}"
    	end
        puts "-------------------------------------------------------------------------------------------------"

    end

    def get_mutual_fund_amount
    	puts "Enter the amount you want to invest: "
    	@amount = gets.chomp
    	puts "You have entered #{@amount} \n Press 1 to confirm"
    	@cnf = gets.chomp
    	if @cnf.to_i == 1
    		puts "you have confirm the amount "
    	else
    		puts "Please Try again"
    	end
    end
 

end


p = Customer.new()
p.start_banking