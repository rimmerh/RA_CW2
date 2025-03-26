(define (problem problem_name_5) (:domain domain_name_5)
(:objects
    C - courier

    N1 - node
    N2 - node
    N3 - node
    N4 - node
    N5 - node
    N6 - node
    N7 - node
    N8 - node
    N9 - node
    N10 - node
    N11 - node
    N12 - node
    N13 - node

    C1 - customer
    C2 - customer
    C3 - customer
    C4 - customer
    C5 - customer

    O1 - order
    O2 - order
    O3 - order
    O4 - order
    O5 - order
    O6 - order
    O7 - order

    Beer - item
    Pizza - item
    Sushi - item
    Burrito - item
    Soda - item
    Curry - item
    Taco - item
)

(:init
    (Connected N1 N2)
    (Connected N1 N6)
    (Connected N1 N9)
    (Connected N1 N12)

    (Connected N2 N1)
    (Connected N2 N3)

    (Connected N3 N2)
    (Connected N3 N4)

    (Connected N4 N5)

    (Connected N5 N2)
    (Connected N5 N6)

    (Connected N6 N1)
    (Connected N6 N7)

    (Connected N7 N6)
    (Connected N7 N8)

    (Connected N8 N7)
    
    (Connected N9 N1)
    (Connected N9 N10)

    (Connected N10 N9)

    (Connected N11 N9)

    (Connected N12 N11)
    (Connected N12 N13)

    (Connected N13 N12)

    (Serves N2 Curry)
    (Serves N2 Sushi)

    (Serves N3 Beer)
    (Serves N3 Soda)

    (Serves N6 Burrito)
    (Serves N6 Taco)

    (Serves N12 Pizza)

    (At C N9)
    (= (money C) 10)
    (= (timeElapsed C) 1)

    (CustomerAt C1 N10)
    (CustomerAt C2 N5)
    (CustomerAt C3 N13)
    (CustomerAt C4 N11)
    (CustomerAt C5 N8)

    (= (price Beer) 5)
    (= (price Pizza) 8)
    (= (price Sushi) 10)
    (= (price Burrito) 7)
    (= (price Soda) 8)
    (= (price Curry) 12)
    (= (price Taco) 9)

    (Ordered C1 Beer O1)
    (= (payout O1) 18)
    (Ordered C1 Pizza O2)
    (= (payout O2) 21)

    (Ordered C2 Sushi O3)
    (= (payout O3) 18)

    (Ordered C3 Burrito O4)
    (= (payout O4) 10)
    (Ordered C3 Soda O5)
    (= (payout O5) 6)

    (Ordered C4 Curry O6)
    (= (payout O6) 24)

    (Ordered C5 Taco O7)
    (= (payout O7) 28)
)

(:goal (and
    (Made O1)
    (Made O2)
    (Made O3)
    (Made O4)
    (Made O5)
    (Made O6)
    (Made O7)
))

(:metric maximize (money C))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
