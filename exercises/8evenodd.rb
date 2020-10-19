arg = ARGV[0].to_i

p out = if arg && arg != 0
          arg.even? ? 'Число чётное': 'Число нечётное'
        else
          'Введите число'
        end
