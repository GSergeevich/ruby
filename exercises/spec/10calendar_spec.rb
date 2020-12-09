require '../10calendar.rb'

RSpec.describe 'Тесты календаря' do
  context 'Создание объекта даты "сейчас"' do
    before(:each) do
      @date = Time.new(2020,rand(1..12),01)
      p @date.month
      last_day = last_day_of_month(@date)
    end

    it 'должен выдавать корректное количество дней в месяце' do 
    expect(last_day_of_month(@date)).to be_between(28,31)
  end
  end
end
