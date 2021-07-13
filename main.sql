select id, age, coins_needed, power from wands as w1 join wands_property as p1 on w1.code=p1.code where is_evil=0 
and coins_needed = (select min(coins_needed) from wands as w2 join wands_property as p2 on (w2.code = p2.code) where w2.power = w1.power and p2.age = p1.age)
order by power desc, age desc