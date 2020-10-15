class Figure
  def set_form(form)
    forms = ['round','triangle','square','dot']
    @code = 0
    if forms.index(form) == nil
      puts format('%s is not correct for form,use one of %s',form,forms.to_s)
    else
      @code |= forms.index(form)
      @code <<= 8
    end
  end

  def set_center(x,y)
    if !(0..255).include? x
      puts format('%s , %s is not correct for coordinate,use both in 0..255 range', x,y)
    else
      @code |= x
      @code <<= 8
      @code |= y
      @code <<= 3
    end
  end


  def set_color(color)
    colors =['red','green','violet','yellow','blue','white','black']
    if colors.index(color) == nil
      puts format('%s is not correct for color,use one of %s',color,colors.to_s)
    else
      @code |= colors.index(color)
    end
  end

  def decode(code)
    code_str = code.to_s(2)
    colors =['red','green','violet','yellow','blue','white','black']
    color = code_str[-3..-1].to_i(2)
    color = colors[color] 
    code_str = code_str[0...-3]
    x = code_str[-8..-1].to_i(2)
    code_str = code_str[0...-8]
    y = code_str[-8..-1].to_i(2)
    code_str = code_str[0...-8]
    forms = ['round','triangle','square','dot']
    form = forms[code_str.to_i(2)]

    puts color
    puts form
    puts x
    puts y
  end

  def decode1(code)
    colors =['red','green','violet','yellow','blue','white','black']
    forms = ['round','triangle','square','dot']
    color = code & 7
    color = colors[color] 
    code >>= 3
    x = code & 255
    code >>= 8
    y = code & 255
    code >>= 8
    form = code & 3
    form = forms[form]

    puts color
    puts form
    puts x
    puts y
  end

  def code 
    @code
  end

  def put
    puts @code.to_s(2)
  end

end

fig = Figure.new

fig.set_form('triangle')
fig.set_center(3,2)
fig.set_color('white')
fig.put
code = fig.code
fig.decode(code)
fig.decode1(code)

