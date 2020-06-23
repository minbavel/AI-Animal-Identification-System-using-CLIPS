;
;
;
;
;       
;blood- warm-mammel -------------------------- herbivore ---------------------------------------------------------------rodent---rat,squirrel
;	        -bird- sky                         carnivoer--feline--mediumcat---------------------tail--cat
;                - land(penguin)                                  bigcat (tiger)                      manxcat
;      -cold-fish-sea(salmon)
;                -fresh(salmon)
;
;

(defglobal
			?*value1* = "nil"
			?*value2* = "nil"
			?*value3* = "nil"
			?*value4* = "nil"
			?*value5* = "nil"
			?*value6* = "nil"
			?*value7* = "nil"
			?*value8* = "nil"
			?*value9* = "nil"
			?*value10* = "nil"
			?*value11* = "nil"
			?*value12* = "nil"
			?*value13* = "nil"
			?*value14* = "nil"
			?*value15* = "nil"
			?*value16* = "nil"
			?*value17* = "nil"
			?*value18* = "nil"
			?*value19* = "nil"
)

(defrule input
	(declare(salience 10))
	=>
	(printout t "THIS IS AN AUTOMATED ANIMAL IDENTIFICATION SYSTEM" crlf)
	(printout t "Is The ANIMAL Warm Blooded or Cold Blooded?:" crlf)
	(bind ?*value1*  (read t))
	(if (eq ?*value1* warm)
	then
		(printout t "Does the Animal Have Fur or Feather?" crlf)
		(bind ?*value2*  (read t))
		(if (eq ?*value2* fur)
		then
			(printout t "The Animal is Mammal. Lets try few more questions!" crlf)
			(assert (mammel))
		else
			(printout t "The Animal is Bird. Lets try few more questions!" crlf)
			(assert (bird)))
	else
		(printout t "Does the Animal Have Scales?: (Y/N)" crlf)
		(bind ?*value3*  (read t))
		(if (eq ?*value3* Y)
		then
			(printout t "The Animal is a Fish" crlf)
			(assert (fish))
		else
			(printout t "No Such Animal Found in our Current Dictionary!" crlf"It might be a Octopus who knows! SORRY!!!!" crlf)
			(halt))
	)
)

(defrule next
	(mammel)
	=>
	(printout t "What Does the Animal eat? (plant/meat)" crlf)
	(bind ?*value4*  (read t))
	(if (eq ?*value4* plant)
		then
			(printout t "Oh! The Animal is a Herbivore!" crlf)
			(assert (herbivore))
		else
			(printout t "Oh! The Animal is a Carnivore!" crlf)
			(assert (carnivore))
	)
)

(defrule next2
	(bird)
	=>
	(printout t "Does the Bird Fly? (Y/N)" crlf)
	(bind ?*value5*  (read t))
	(if (eq ?*value5* Y)
		then
			(printout t "The Animal is a Sky Based Bird" crlf)
			(halt)
		else
			(printout t "Can the Bird Swim? (Y/N)" crlf)
			(bind ?*value6*  (read t))
			(if (eq ?*value6* Y)
				then
			    (printout t "The Animal is a Land Based Bird" crlf)
				(printout t "Is the Bird Black and White (Y/N)" crlf)
				(bind ?*value7*  (read t))
				(if (eq ?*value7* Y)
					then
						(printout t "The Animal is a Penguin" crlf)
					else
						(printout t "Oopsie! That Bird does not Exist in our Dictionary" crlf))
				
				(halt)
			else
				(printout t "Oopsie! That Bird does not Exist in our Dictionary" crlf)
				(halt))
	)
)

(defrule next3
	(fish)
	=>
	(printout t "Where Does the Fish Live? (sea/river)" crlf)
	(bind ?*value8*  (read t))
	(if (eq ?*value8* sea)
		then
			(printout t "Oh! The Animal is a Sea Water Fish!" crlf)
			(printout t "Is the Color of the Fish Pink? (Y/N)" crlf)
				(bind ?*value9*  (read t))
				(if (eq ?*value9* Y)
					then
						(printout t "The Animal is Salmon Fish" crlf)
					else
						(printout t "Oopsie! we only have salmon in our Dictionary!! Try Again next Time!" crlf))
				
				
		else
			(printout t "Oh! The Animal is a Fresh Water Fish!" crlf)
			(printout t "Is the Color of the Fish Pink? (Y/N)" crlf)
				(bind ?*value9*  (read t))
				(if (eq ?*value9* Y)
					then
						(printout t "The Animal is Salmon Fish" crlf)
					else
						(printout t "Oopsie! we only have salmon in our Dictionary!! Try Again next Time!" crlf)))
				
				(halt)
)

	
	
(defrule next4
	(herbivore)
	=>
	(printout t "Is the Animal Considered as a Pest? (Y/N)" crlf)
	(bind ?*value10*  (read t))
	(if (eq ?*value10* Y)
		then
			(printout t "The Animal is a Rodent!" crlf)
			(printout t "Is the Animal Tail 1.Short and Thin 2.Long and Bushy? (1/2)" crlf)
			(bind ?*value11*  (read t))
			(if (eq ?*value11* 1)
				then
				(printout t "Does the Animal Live in Sewer? (Y/N)" crlf)
				(bind ?*value12*  (read t))
				(if (eq ?*value12* Y)
					then
					(printout t "The Animal is a RAT!" crlf)
				else
					(printout t "We dont have that Animal" crlf))
			else
				(printout t "Is the Animal Color Grey? (Y/N)" crlf)
				(bind ?*value12*  (read t))
				(if (eq ?*value12* Y)
					then
					(printout t "The Animal is a Grey Squirrel!" crlf)
				else
					(printout t "Maybe Just Maybe It is a white squirrel" crlf)))
		else
			(printout t "You Should Have answered Yes" crlf))
			(halt)
)

	
(defrule next5
	(carnivore)
	=>
	(printout t "Does The Animal Have Four Legs? (Y/N)" crlf)
	(bind ?*value13*  (read t))
	(printout t "Is the Animal Very Fast? (Y/N)" crlf)
	(bind ?*value14*  (read t))
	(if (and (eq ?*value13* Y)
		     (eq ?*value14* Y))
		then
			(printout t "The Animal is a Feline!" crlf)
			(printout t "What is the Size of the Animal? (big/medium)" crlf)
			(bind ?*value15*  (read t))
				(if (eq ?*value15* big)
					then
					(printout t "The Animal is a Big Cat!" crlf)
					(assert (bigcat))
				else
					(printout t "The Animal is a medium Cat!" crlf)
					(assert (mediumcat)))
			
		else
			(printout t "Sorry!!!" crlf)
			
		(halt))
)
	

(defrule next6
	(bigcat)
	=>
	(printout t "Does The Animal Live in a Jungle? (Y/N)" crlf)
	(bind ?*value16*  (read t))
	(printout t "Is the Animal Tail Long and Furry? (Y/N)" crlf)
	(bind ?*value17*  (read t))
	(if (and (eq ?*value16* Y)
		     (eq ?*value17* Y))
		then
			(printout t "The Animal is a Tiger" crlf)			
		else
			(printout t "Sorry!!!" crlf))
			
		(halt)
)
	
	
(defrule next7
	(mediumcat)
	=>
	(printout t "Does the Animal Have a Tail? (Y/N)" crlf)
	(bind ?*value18*  (read t))
	(if (eq ?*value18* N)
		then
			(printout t "The Animal is a Manx Cat" crlf)			
		else
			(printout t "Is the Animal Tail Long and Furry? (Y/N)" crlf)
			(bind ?*value19*  (read t))
			(if (eq ?*value19* Y)
				then
				(printout t "The Animal is a Cat" crlf)			
			else
				(printout t "SORRY!!!" crlf))
	)
			
		(halt)
)
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
