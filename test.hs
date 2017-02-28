--
import Data.List
import System.IO

-- 1. last element in list
mylast :: [a]->a
mylast [x]=x -- why does (x) not match correctly
mylast (x:xs)= mylast xs

--2. last but one element in a list
lastbut1 :: [a]->a
lastbut1 x= reverse x !! 1

--3. K'th element of a list

elementAt:: [a]->Int->a
elementAt x k= x !! (k-1)

--or
elementAt':: [a]->Int->a
elementAt' (x:_) 1= x
elementAt' (_:xs) k= elementAt' xs (k-1)

--4. reverse a list
{-
rvrs:: [a]->[a]
rvrs [x]= [x]: -- can i do partial computation?
rvrs (x:xs)= (rvrs xs): x
-}

--5. palindrome


--6. flatten list (can contain more lists)

--flatten:: [a]->[b]
--flatten [x]= [x]
--flatten (x:xs)= (flatten x) ++ (flatten xs)
--

--8. Remove consecutive duplicates

dedup:: [a]->[a]
dedup (x:xs)


