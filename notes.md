#Haskell notes

fn::[a]->a
a is referred to as a type variable

(==)::(Eq a)=> a->a->Bool
everything before => is a class constraint.
ie. a has to be a member of Eq class
Eq itself is a typeclass ie a collection of types.

Show is a class whose members can be printed as strings. implement the 
show method

type annotations
when ambiguity arises in expression, enforce type using ^
read "4"::Int

fromIntegral::(Num a, Integral b)=> b->a
use in expressions where you mix floating pt calculations with integral types

###lists:


head:tailllllllllllllllllll
inittttttttttttttttttt:last

mylast :: [a]->a
mylast [x]=x -- why does (x) not match correctly?

Useful thing to keep in mind a list [1,2,3]== 1:2:3:[]. The former is actually
syntactic sugar around the latter, the latter is a more fundamental way of
representing lists
Aaand [x]== x:[] a single element list!!!

###Using guards
max::(Ord a)=>a->a->a
max' a b   
    | a > b     = a  
    | otherwise = b  

###Using where
bmiTell weight height  
    | bmi <= 18.5 = "You're underweight, you emo, you!"  
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"  
    | otherwise   = "You're a whale, congratulations!"  
    where bmi = weight / height ^ 2  

where bindings can also be nested. It's a common idiom to make a function and define some helper function in its where clause and then to give those functions helper functions as well, each with its own where clause.
^Why would you need nested wheres if you can define the helper fn inside the
where block?

if else, and let bindings are expressions ie. the evaluate to a value

###Using let
cylinder r h = 
    let sideArea = 2 * pi * r * h  
        topArea = pi * r ^2  
    in  sideArea + 2 * topArea  
let <bindings> in <expression>
The diff between let and where isn't just that one is the reverse of the other.
It's to do with how let bindings are expressions and can be crammed anywhere.

So now that I know what let does, why do we use it in ghci (or the IO monad)?


##Questions
If you have to talk about a limitation of the language, what would it be?

Does knowledge about haskell generalize well to other functional/probabilistic
programming languages since it's the purest/harshest of them all.


