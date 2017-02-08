class BankAccount
  @@total_accounts = 0

  def initialize
    @savings_account = 0
    @checking_account = 0
    @savings_balance = 0
    @checking_balance = 0
    @@total_accounts += 1
    @interest = 0.1
    account
  end

  def account_info
    puts @checking_account
    puts @savings_account
    puts @savings_balance
    puts @checking_balance
    puts @interest
    self
  end


  def saving_bal
    puts '$' + @savings_balance.to_s + 'Savings Account'
    self
  end

  def checking_bal
    puts '$' + @checking_balance.to_s + 'Checking Account'
    self
  end

  def deposit(account, amount)
    if account == 'savings'
      puts 'Adding to Savings'
      @savings_balance += amount
      self

    elsif account == 'checking'
      puts 'Adding to Checking'
      @checking_balance += amount
      self
    end
  end

  def withdraw(account, amount)
    if account == 'savings'
      print  'Withdrawing from Savings  '
      @savings_balance -= amount
      self

    elsif account == 'checking'
      print 'Withdrawing from Checking  '
      @checking_balance -= amount
      self
    end
  end

  def total
    puts total_amount = '$' + (@checking_balance + @savings_balance).to_s
    self
  end

  private
  def account
    @savings_account = rand.to_s[2..11]
    @checking_account = rand.to_s[2..11]
  end

end

new_account = BankAccount.new

new_account.checking_bal
new_account.deposit('savings', 100)
new_account.checking_bal
new_account.saving_bal
new_account.checking_bal
new_account.withdraw('savings', 50)
new_account.deposit('savings', 100)
new_account.checking_bal
new_account.saving_bal
new_account.total
new_account.account_info

new_account.saving_bal