(define (problem coffee-shop-2)
  (:domain coffee-shop)

  (:objects
    c1 - customer
    c2 - customer
    c3 - customer
    c4 - customer
    cold-drink1 - cold-drink
    cold-drink2 - cold-drink
    warm-drink1 - warm-drink
    warm-drink2 - warm-drink
    table-1 - table
    table-3 - table)

  (:init
    (order-placed c1 cold-drink1)
    (order-placed c2 cold-drink2)
    (order-placed c3 warm-drink1)
    (order-placed c4 warm-drink2)
     
    (not (tray-in-use))
    (not (tray-with-drinks))
  
      (= (total-cost) 0))
 

  (:goal
    (and
      (drink-served c1 cold-drink1 table-3)
      (drink-served c2 cold-drink2 table-3)
      (drink-served c3 warm-drink1 table-3)
      (drink-served c4 warm-drink2 table-3)
      (cleaned table-1)))
      
       (:metric minimize (total-cost)))

 


