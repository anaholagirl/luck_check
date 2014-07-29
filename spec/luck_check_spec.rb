require('rspec')
require('luck_check')

describe ('luck_check') do
  it('will check a double digit number and determine if it is lucky') do
    expect(luck_check("11")).to(eq(true))
  end

  it('will evaluate an odd number input and determine if it is lucky') do
    expect(luck_check("243")).to(eq(false))
  end

  it('will check a multiple digit number and determine if it is lucky') do
    expect(luck_check("003012")).to(eq(true))
  end

  it('will check a multiple digit number and determine if it is lucky') do
    expect(luck_check("0012234")).to(eq(false))
  end
end
