require('coin_combinations')
require('rspec')

describe('Fixnum#coin_combinations') do
  it('returns the coins equal to the cents given') do
    expect(67.coin_combinations()).to(eq('Your change is 2 quarters, 1 dime, 1 nickel, and 2 cents.'))
  end
end