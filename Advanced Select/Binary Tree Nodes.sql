select n , Case
when p is null then 'Root'
when n in(select distinct p from bst) then 'Inner'
else 'Leaf'
end
from bst
order by n;