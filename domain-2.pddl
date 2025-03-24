;Header and description

(define (domain domain_name_2)

;remove requirements that are not needed
(:requirements :adl)

(:types courier node customer order item 
)

(:predicates
    (Connected ?from - node ?to - node)
    (At ?courier - courier ?at - node)
    (CustomerAt ?customer - customer ?at - node)
    (Made ?delivery - order)
    (Ordered ?customer - customer ?item - item ?order - order)
    (Serves ?location - node ?item - item)
    (InBag ?courier - courier ?item - item)
    (Occupied ?node - node)
)

(:action MOVE
    :parameters (?a - node ?b - node ?c - courier)
    :precondition (and (Connected ?a ?b) (At ?c ?a) (not (Occupied ?b)))
    :effect (and (At ?c ?b) (not (At ?c ?a)) (Occupied ?b) (not (Occupied ?a)))
)


(:action PICKUP
    :parameters (?a - node ?b - item ?c - courier)
    :precondition (and (At ?c ?a) (Serves ?a ?b) (not (InBag ?c ?b)))
    :effect (InBag ?c ?b)
)

(:action DELIVER
    :parameters (?a - node ?b - item ?c - courier ?d - customer ?e - order)
    :precondition (and (At ?c ?a) (CustomerAt ?d ?a) (Ordered ?d ?b ?e) (InBag ?c ?b) (not (Made ?e)))
    :effect (and (Made ?e) (not (InBag ?c ?b)))
)
)