;Header and description

(define (domain domain_name_4)

;remove requirements that are not needed
(:requirements :adl :fluents)

(:functions
    (capacity ?c - courier)
    (fuel ?f - courier)
    (cost ?c - route)
)
(:types courier node customer order item route
)

(:constants Courier - courier)

(:predicates
    (Connected ?from - node ?to - node)
    (At ?courier - courier ?at - node)
    (CustomerAt ?customer - customer ?at - node)
    (PetrolAt ?node - node)
    (Made ?delivery - order)
    (Ordered ?customer - customer ?item - item ?order - order)
    (Serves ?location - node ?item - item)
    (InBag ?item - item)
    (RouteStart ?route - route ?start - node)
    (RouteEnd ?route - route ?start - node)
)

(:action MOVE
    :parameters (?a - node ?b - node ?c - courier ?r - route)
    :precondition (and (Connected ?a ?b) (At ?c ?a) (RouteStart ?r ?a) (RouteEnd ?r ?b) (> (- (fuel ?c) (cost ?r)) 0))
    :effect (and (At ?c ?b) (not (At ?c ?a)) (decrease (fuel ?c) (cost ?r)))
)

(:action PICKUP
    :parameters (?a - node ?b - item ?c - courier)
    :precondition (and (At ?c ?a) (Serves ?a ?b) (not (InBag ?b)))
    :effect (and (InBag ?b))
)

(:action DELIVER
    :parameters (?a - node ?b - item ?c - courier ?d - customer ?e - order)
    :precondition (and (At ?c ?a) (CustomerAt ?d ?a) (Ordered ?d ?b ?e) (InBag ?b) (not (Made ?e)))
    :effect (and (Made ?e) (not (InBag ?b)))
)

(:action REFUEL
    :parameters (?a - node ?c - courier)
    :precondition (and (At ?c ?a) (< (fuel ?c) 40) (PetrolAt ?a))
    :effect (and (assign (fuel ?c) 40))
)
)