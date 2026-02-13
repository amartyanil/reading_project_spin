bool flag[2]
bool turn


active proctype proc0()
{
  flag[0] = true
  turn = true

  do
  ::    (flag[1] == false || turn == false) -> break
  od

  CS: printf("zero")

  flag[0] = false
}

active proctype proc1()
{
  flag[1] = true
  turn = false
  do
  ::    (flag[0] == false || turn == true) -> break
  od;
  CS: printf("one")

  flag[1] = false
}

ltl p {always(!proc0@CS||!proc1@CS)}