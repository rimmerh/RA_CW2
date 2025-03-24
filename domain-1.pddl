;Header and description

(define (domain domain_name)

;remove requirements that are not needed
(:requirements :adl)

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
    :precondition (and (At ?c ?a) (Serves ?a ?b) (not (InBag ?b)))
    :effect (InBag ?b)
)

(:action DELIVER
    :parameters (?a - node ?b - item ?c - courier ?d - customer ?e - order)
    :precondition (and (At ?c ?a) (CustomerAt ?d ?a) (Ordered ?d ?b ?e) (InBag ?b) (not (Made ?e)))
    :effect (and (Made ?e) (not (InBag ?c)))
)
)