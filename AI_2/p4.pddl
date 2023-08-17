(define (problem coffee-shop-4)
  (:domain coffee-shop)
  (:objects
    customer-1 - customer
    customer-2 - customer
    customer-3 - customer
    customer-4 - customer
    table-1 - table
    table-3 - table
    table-4 - table
    warm-drink-1 - warm-drink
    warm-drink-2 - warm-drink
    warm-drink-3 - warm-drink
    warm-drink-4 - warm-drink
    cold-drink-1 - cold-drink
    cold-drink-2 - cold-drink
    cold-drink-3 - cold-drink
    cold-drink-4 - cold-drink)
  (:init
    ;; table 4
    (order-placed customer-1 cold-drink-1)
    (order-placed customer-2 cold-drink-2)
    ;; table 1
    (order-placed customer-3 cold-drink-3)
    (order-placed customer-4 cold-drink-4)
    ;; table 3
    (order-placed customer-1 warm-drink-1)
    (order-placed customer-2 warm-drink-2)
    (order-placed customer-3 warm-drink-3)
    (order-placed customer-4 warm-drink-4)
    (not (tray-in-use))
    (not (tray-with-drinks))
   
      (= (total-cost) 0))
   
  (:goal
    (and
      (drink-served customer-1 cold-drink-1 table-4)
      (drink-served customer-2 cold-drink-2 table-4)
      (drink-served customer-3 cold-drink-3 table-1)
      (drink-served customer-4 cold-drink-4 table-1)
      (drink-served customer-1 warm-drink-1 table-3)
      (drink-served customer-2 warm-drink-2 table-3)
      (drink-served customer-3 warm-drink-3 table-3)
      (drink-served customer-4 warm-drink-4 table-3)
      (cleaned table-4)))
  (:metric minimize (total-cost)))

