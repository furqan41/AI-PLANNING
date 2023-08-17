(define (domain coffee-shop)

  ;; define types
  (:types
    robot customer table barcounter
    drink
    cold-drink - drink
    warm-drink - drink)

  ;; define constants
  (:constants
    barista - robot1
    waiter - robot2
    cold-drink - cold-drink
    warm-drink - warm-drink
    table-1 - table
    table-2 - table
    table-3 - table
    table-4 - table
    main - barcounter)

  ;; define predicates
  (:predicates
    (order-placed ?c - customer ?d - drink)
    (drink-ready ?d - drink)
    (drink-served ?c - customer ?d - drink ?t - table)
    (tray-in-use)
    (tray-with-drinks)
    (cleaned ?t - table))

  ;; define cost function
  (:functions
    (total-cost))

  ;; define actions
  (:action prepare-cold-drink
    :parameters (?b - robot1 ?d - cold-drink )
    :precondition (and (not (drink-ready ?d))
                       (not (tray-in-use)) )
    :effect (and (drink-ready ?d)
                 (increase (total-cost) 1)))

  (:action prepare-warm-drink
    :parameters (?b - robot1 ?d - warm-drink)
    :precondition (and (not (drink-ready ?d))
                       (not (tray-in-use)))
    :effect (and (drink-ready ?d)
                 (increase (total-cost) 2)))

  (:action pickup-drink
    :parameters (?w - robot2 ?d - drink) 
    :precondition (and (drink-ready ?d)
                       (not (tray-in-use)))
    :effect (and (not (drink-ready ?d))
                      (tray-with-drinks)
                 (increase (total-cost) 1)))

  (:action pickup-tray
    :parameters (?w - robot2 ?m - table)
    :precondition (and (not (tray-in-use))
                       )
    :effect (and (tray-in-use)
                 (increase (total-cost) 1)))

  (:action pick-serve-return
    :parameters (?b - robot1 ?w - robot2 ?c - customer ?d - drink ?t - table ?m - barcounter )
    :precondition (and (not (drink-served ?c ?d ?t))
                       (drink-ready ?d)
                       (tray-with-drinks))
    :effect (and (drink-served ?c ?d ?t)
                 (not (drink-ready ?d))
                 (not (tray-with-drinks))
                 (increase (total-cost) 3)))
                 
   

  (:action clean-table
   :parameters (?w - robot2 ?t - table)
   :precondition (not (cleaned ?t))
   :effect (and (cleaned ?t)
                (increase (total-cost) 1))))


