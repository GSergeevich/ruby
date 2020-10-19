arg = ARGV[0].to_i

p out = if arg && arg != 0
          arg.positive? ? 'Число положительное': 'Число отрицательное'
        else
          'Введите число'
        end
