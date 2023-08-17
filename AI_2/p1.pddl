(define (problem coffee-shop-problem-1)
  (:domain coffee-shop)

  ;; define objects
  (:objects
    customer-1 - customer
    customer-2 - customer
    cold-drink-1 - cold-drink
    cold-drink-2 - cold-drink
    table-2 - table
    table-3 - table
    table-4 - table)

  ;; define initial state
  (:init
    (order-placed customer-1 cold-drink-1)
    (order-placed customer-2 cold-drink-2)
    (not (prepare-warm-drink))
   
    (not (tray-in-use))
    (not (tray-with-drinks))
    (= (total-cost) 0))

  ;; define goal state
  (:goal
    (and
      (drink-served customer-1 cold-drink-1 table-2)
      (drink-served customer-2 cold-drink-2 table-2)
      (cleaned table-3)
      (cleaned table-4)))
      
  ;; define cost function
  (:metric minimize (total-cost)))

