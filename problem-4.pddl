(define (problem problem_name_3) (:domain domain_name_3)
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

    N1N2 - route
    N1N6 - route
    N1N9 - route
    N1N12 - route

    N2N1 - route
    N2N3 - route

    N3N2 - route
    N3N4 - route

    N4N5 - route

    N5N6 - route
    N5N2 - route

    N6N1 - route
    N7N1 - route

    N7N6 - route
    N7N8 - route

    N8N7 - route

    N9N1 - route
    N9N10 - route

    N10N9 - route

    N11N9 - route

    N12N11 - route
    N12N13 - route

    N13N12 - route

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
    (=(cost N1N2) 2)
    (Connected N1 N6)
    (=(cost N1N6) 3)
    (Connected N1 N9)
    (=(cost N1N9) 4)
    (Connected N1 N12)
    (=(cost N1N12) 7)

    (Connected N2 N1)
    (=(cost N2N1) 2)
    (Connected N2 N3)
    (=(cost N2N3) 2)

    (Connected N3 N2)
    (=(cost N3N2) 2)
    (Connected N3 N4)
    (=(cost N3N4) 3)

    (Connected N4 N5)
    (=(cost N4N5) 3)

    (Connected N5 N2)
    (=(cost N5N2) 2)
    (Connected N5 N6)
    (=(cost N5N6) 4)

    (Connected N6 N1)
    (=(cost N6N1) 3)
    (Connected N6 N7)
    (=(cost N6N7) 2)

    (Connected N7 N6)
    (=(cost N7N6) 2)
    (Connected N7 N8)
    (=(cost N7N8) 9)

    (Connected N8 N7)
    (=(cost N8N7) 9)
    
    (Connected N9 N1)
    (=(cost N9N1) 4)
    (Connected N9 N10)
    (=(cost N9N10) 2)

    (Connected N10 N9)
    (=(cost N10N9) 2)

    (Connected N11 N9)
    (=(cost N11N9) 2)

    (Connected N12 N11)
    (=(cost N12N11) 4)
    (Connected N12 N13)
    (=(cost N12N13) 5)

    (Connected N13 N12)
    (=(cost N13N12) 5)

    (Serves N2 Curry)
    (Serves N2 Sushi)

    (Serves N3 Beer)
    (Serves N3 Soda)

    (Serves N6 Burrito)
    (Serves N6 Taco)

    (Serves N12 Pizza)

    (At C N9)
    (= (capacity C) 10)
    (= (fuel C) 20)
    (= (load C) 0)

    (= (volume Pizza) 8)
    (= (volume Sushi) 4)
    (= (volume Burrito) 6)
    (= (volume Beer) 2)
    (= (volume Soda) 3)
    (= (volume Curry) 7)
    (= (volume Taco) 5)

    (CustomerAt C1 N10)
    (CustomerAt C2 N5)
    (CustomerAt C3 N13)
    (CustomerAt C4 N11)
    (CustomerAt C5 N8)

    (PetrolAt N4)

    (Ordered C1 Beer O1)
    (Ordered C1 Pizza O2)

    (Ordered C2 Sushi O3)

    (Ordered C3 Burrito O4)
    (Ordered C3 Soda O5)

    (Ordered C4 Curry O6)

    (Ordered C5 Taco O7)
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

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
