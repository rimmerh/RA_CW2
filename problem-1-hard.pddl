(define (problem problem_name_1_hard) (:domain domain_name_1)
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
    N14 - node
    N15 - node
    N16 - node
    N17 - node
    N18 - node
    N19 - node
    N20 - node
    N21 - node
    N22 - node
    N23 - node
    N24 - node
    N25 - node

    C1 - customer
    C2 - customer
    C3 - customer
    C4 - customer
    C5 - customer
    C6 - customer
    C7 - customer
    C8 - customer

    O1 - order
    O2 - order
    O3 - order
    O4 - order
    O5 - order
    O6 - order
    O7 - order
    O8 - order
    O9 - order
    O10 - order
    O11 - order
    O12 - order
    O13 - order
    O14 - order
    O15 - order
    O16 - order
    O17 - order

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
    (Connected N3 N21)

    (Connected N4 N5)

    (Connected N5 N2)
    (Connected N5 N6)

    (Connected N6 N1)
    (Connected N6 N7)

    (Connected N7 N6)
    (Connected N7 N8)

    (Connected N8 N7)
    (Connected N8 N18)
    
    (Connected N9 N1)
    (Connected N9 N10)

    (Connected N10 N9)

    (Connected N11 N9)
    (Connected N11 N16)

    (Connected N12 N11)
    (Connected N12 N13)

    (Connected N13 N12)
    (Connected N13 N14)

    (Connected N14 N3)
    (Connected N14 N15)

    (Connected N15 N14)
    (Connected N15 N19)

    (Connected N16 N10)
    (Connected N16 N17)

    (Connected N17 N16)
    (Connected N17 N23)

    (Connected N18 N4)
    (Connected N18 N21)
    (Connected N18 N22)

    (Connected N19 N20)

    (Connected N20 N21)

    (Connected N21 N3)
    
    (Connected N22 N8)

    (Connected N23 N24)

    (Connected N24 N25)

    (Connected N25 N7)
    (Connected N25 N23)

    (Serves N2 Curry)
    (Serves N18 Sushi)

    (Serves N3 Beer)
    (Serves N17 Soda)

    (Serves N6 Burrito)
    (Serves N15 Taco)

    (Serves N12 Pizza)

    (At C N9)

    (CustomerAt C1 N10)
    (CustomerAt C2 N5)
    (CustomerAt C3 N13)
    (CustomerAt C4 N11)
    (CustomerAt C5 N8)
    (CustomerAt C6 N24)
    (CustomerAt C7 N22)
    (CustomerAt C8 N20)

    (Ordered C1 Beer O1)
    (Ordered C1 Pizza O2)
    (Ordered C1 Taco O3)
    (Ordered C1 Sushi O4)

    (Ordered C2 Sushi O5)
    (Ordered C2 Curry O6)

    (Ordered C3 Burrito O7)
    (Ordered C3 Soda O8)
    (Ordered C3 Taco O9)
    (Ordered C3 Beer O10)

    (Ordered C4 Curry O11)
    (Ordered C4 Pizza O12)
    (Ordered C4 Burrito O13)
    (Ordered C4 Sushi O14)

    (Ordered C5 Taco O15)
    (Ordered C5 Pizza O16)
    (Ordered C5 Taco O17)

    (Ordered C6 Burrito O7)
    (Ordered C6 Soda O8)
    (Ordered C6 Taco O9)
    (Ordered C6 Beer O10)

    (Ordered C7 Burrito O7)
    (Ordered C7 Soda O8)
    (Ordered C7 Taco O9)
    (Ordered C7 Beer O10)

    (Ordered C8 Burrito O7)
    (Ordered C8 Soda O8)
    (Ordered C8 Taco O9)
    (Ordered C8 Beer O10)

    
)

(:goal (and
    (Made O1)
    (Made O2)
    (Made O3)
    (Made O4)
    (Made O5)
    (Made O6)
    (Made O7)
    (Made O8)
    (Made O9)
    (Made O10)
    (Made O11)
    (Made O12)
    (Made O13)
    (Made O14)
    (Made O15)
    (Made O16)
    (Made O17)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
