solar_system = {Mercury: 330210e23, Venus: 486910e24, Earth: 597410e24, Mars: 641910e23, Jupiter: 189910e27, Saturn: 568510e26, Uran: 868510e25, Neptun: 102410e26, Pluto: 1310e22}
p solar_system.sort_by {|k,v| v}[0...3]
p solar_system.sort_by {|k,v| v}[-3..-1]