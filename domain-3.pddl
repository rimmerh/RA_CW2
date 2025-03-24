;Header and description

(define (domain domain_name_3)

;remove requirements that are not needed
(:requirements :adl :fluents)

(:functions
    (capacity ?c - courier)
    (load ?l - courier)
    (volume ?v - item)
)
(:types courier node customer order item 
)

(:constants Courier - courier)

(:predicates
    (Connected ?from - node ?to - node)
    (At ?courier - courier ?at - node)
    (CustomerAt ?customer - customer ?at - node)
    (Made ?delivery - order)
    (Ordered ?customer - customer ?item - item ?order - order)
    (Serves ?location - node ?item - item)
    (InBag ?item - item)
)

(:action MOVE
    :parameters (?a - node ?b - node ?c - courier)
    :precondition (and (Connected ?a ?b) (At ?c ?a))
    :effect (and (At ?c ?b) (not (At ?c ?a)))
)


(:action PICKUP
    :parameters (?a - node ?b - item ?c - courier)
    :precondition (and (At ?c ?a) (Serves ?a ?b) (not (InBag ?b)) (<= (+ (load ?c) (volume ?b)) (capacity ?c)))
    :effect (and (InBag ?b) (increase (load ?c) (volume ?b)))
)

(:action DELIVER
    :parameters (?a - node ?b - item ?c - courier ?d - customer ?e - order)
    :precondition (and (At ?c ?a) (CustomerAt ?d ?a) (Ordered ?d ?b ?e) (InBag ?b) (not (Made ?e)))
    :effect (and (Made ?e) (not (InBag ?b)) (decrease (load ?c) (volume ?b)))
)
)