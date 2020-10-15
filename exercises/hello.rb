class Hello
  def hello
    @time = {:night => 0..6,:morning => 6..12,:day => 12..18,:evening => 18..24}
    @time.each do |time,range|
      if range.include?(Time.now.hour)
        puts "Good #{time}!"
      end
    end

  end
end

