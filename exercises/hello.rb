# frozen_string_literal: true

class Hello
  def hello
    @time = { night: 0..6, morning: 6..12, day: 12..18, evening: 18..24 }
    @time.each do |time, range|
      puts "Good #{time}!" if range.include?(Time.now.hour)
    end
  end
end
