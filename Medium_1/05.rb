def build_top(n)
  stars = 1
  spaces = (n - stars) / 2
  until stars == n
    puts ('*' * stars).center(n)
    stars += 2
  end
end

def stars(n)
  build_top(n)
  stars = n
  until stars < 1
    puts ('*' * stars).center(n)
    stars -= 2
  end
end

stars(1)
stars(3)
stars(5)
stars(9)
