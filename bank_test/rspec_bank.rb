require_relative 'bankaccount'
RSpec.describe BankAccount do
  it 'Checks checking and savings balance starts at 0' do
    # zyx create to new bank accounts to be tested
    bankaccount1 = BankAccount.new
    bankaccount2 = BankAccount.new
    # zyx What to expect to happen with these new bank accounts
    expect(bankaccount1.checking_bal).to eq(0)
    expect(bankaccount1.saving_bal).to eq(0)
    expect(bankaccount2.checking_bal).to eq(0)
    expect(bankaccount2.saving_bal).to eq(0)
  end
  it 'Deposit 100 in checking and savings twice then checks it' do
    # zyx this is depositing into accounts
    bankaccount1 = BankAccount.new
    bankaccount1.deposit('savings', 100)
    bankaccount1.deposit('checking', 100)
    bankaccount2 = BankAccount.new
    bankaccount2.deposit('checking', 100)
    bankaccount2.deposit('savings', 100)
    # zyx What to expect to happen with these new bank accounts
    expect(bankaccount1.checking_bal).to eq(100)
    expect(bankaccount1.saving_bal).to eq(100)
    expect(bankaccount2.checking_bal).to eq(100)
    expect(bankaccount2.saving_bal).to eq(100)
  end
  it 'returns ACCOUNT TO LOW for bank account withdraw if it will over draw' do
    # zyx this is overdrawing bank account
    bankaccount1 = BankAccount.new
    bankaccount2 = BankAccount.new
    # zyx What to expect to happen with these new bank accounts
    expect(bankaccount1.withdraw('savings', 100)).to eq('Account To Low!')
    expect(bankaccount1.withdraw('checking', 100)).to eq('Account To Low!')
    expect(bankaccount2.withdraw('savings', 100)).to eq('Account To Low!')
    expect(bankaccount2.withdraw('checking', 100)).to eq('Account To Low!')
  end
  it 'Checks total after adding 100 to each account total 200' do
    # zyx create to new bank accounts to be tested
    bankaccount1 = BankAccount.new
    bankaccount1.deposit('savings', 100)
    bankaccount1.deposit('checking', 100)
    bankaccount2 = BankAccount.new
    bankaccount2.deposit('checking', 100)
    bankaccount2.deposit('savings', 100)
    # zyx What to expect to happen with these new bank accounts
    expect(bankaccount1.total).to eq(200)
    expect(bankaccount1.total).to eq(200)
    expect(bankaccount2.total).to eq(200)
    expect(bankaccount2.total).to eq(200)
  end
  it 'checks account_info method' do
    # zyx create to new bank accounts to be tested
    bankaccount1 = BankAccount.new
    bankaccount2 = BankAccount.new
    # zyx What to expect to happen with these new bank accounts
    expect(bankaccount1.account_info).to eq(0.1)
    expect(bankaccount1.account_info).to eq(0.1)
    expect(bankaccount2.account_info).to eq(0.1)
    expect(bankaccount2.account_info).to eq(0.1)
  end

  it 'Raise Error For trying to get total_accounts' do
    # zyx create to new bank accounts to be tested
    bankaccount1 = BankAccount.new
    bankaccount2 = BankAccount.new
    # zyx What to expect to happen with these new bank accounts
    expect{bankaccount1.total_accounts}.to raise_error(NoMethodError)
    expect{bankaccount2.total_accounts}.to raise_error(NoMethodError)
  end
  it 'Raise Error trying to look at interest rate' do
    # zyx create to new bank accounts to be tested
    bankaccount1 = BankAccount.new
    bankaccount2 = BankAccount.new
    # zyx What to expect to happen with these new bank accounts
    expect{bankaccount1.interest}.to raise_error(NoMethodError)
    expect{bankaccount2.interest}.to raise_error(NoMethodError)
  end

  it 'Raise Error trying to look at interest rate' do
    # zyx create to new bank accounts to be tested
    bankaccount1 = BankAccount.new
    bankaccount2 = BankAccount.new
    # zyx What to expect to happen with these new bank accounts
    expect{bankaccount1.interest}.to raise_error(NoMethodError)
    expect{bankaccount2.interest}.to raise_error(NoMethodError)
  end

  it 'Raise Error trying to look at any var in Class They are viewable only with methods' do
    # zyx create to new bank accounts to be tested
    bankaccount1 = BankAccount.new
    bankaccount2 = BankAccount.new
    # zyx What to expect to happen with these new bank accounts
    expect{bankaccount1.savings_account}.to raise_error(NoMethodError)
    expect{bankaccount1.checking_account}.to raise_error(NoMethodError)
    expect{bankaccount1.checking_balance}.to raise_error(NoMethodError)
    expect{bankaccount1.savings_balance}.to raise_error(NoMethodError)
    expect{bankaccount2.savings_account}.to raise_error(NoMethodError)
    expect{bankaccount2.checking_account}.to raise_error(NoMethodError)
    expect{bankaccount2.checking_balance}.to raise_error(NoMethodError)
    expect{bankaccount2.savings_balance}.to raise_error(NoMethodError)
  end
end
