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
    @checking_account
    @savings_account
    @savings_balance
    @checking_balance
    @interest
  end


  def saving_bal # zyx this has been checked
    @savings_balance
  end

  def checking_bal # zyx this has been checked
    @checking_balance
  end

  def deposit(account, amount)  # zyx this has been checked
    if account == 'savings'
      @savings_balance += amount

    elsif account == 'checking'  # zyx this has been checked
      @checking_balance += amount
    end
  end

  def withdraw(account, amount) # zyx this has been checked
    if account == 'savings'
      if (@savings_balance - amount) < 0
        return 'Account To Low!'
      else
        return @savings_balance -= amount
      end
    elsif account == 'checking'
      if (@checking_balance - amount) < 0
        return 'Account To Low!'
      else
        return @checking_balance -= amount
      end
    end
  end

  def total
    total_amount = (@checking_balance + @savings_balance)
  end

  private
  def account
    @savings_account = rand.to_s[2..11]
    @checking_account = rand.to_s[2..11]
  end

end

new_account = BankAccount.new

# puts new_account.checking_bal
# puts new_account.deposit('savings', 100)
# puts new_account.checking_bal
# puts new_account.saving_bal
# puts new_account.checking_bal
# puts new_account.withdraw('savings', 50)
# puts new_account.deposit('savings', 100)
# puts new_account.checking_bal
# puts new_account.saving_bal
# puts new_account.total
# puts new_account.account_info

# puts new_account.saving_bal