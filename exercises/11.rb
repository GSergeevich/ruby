year = %w[Январь Февраль Март Апрель Май Июнь Июль Август Сентябрь Октябрь Ноябрь Декабрь]
p year.sort_by {|m| m.length}[0]
p year.sort_by {|m| m.length}[-1]