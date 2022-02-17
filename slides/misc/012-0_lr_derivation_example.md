---
# lr_derivation_example


## Right most derivation

1. S derives <Left> <Right>
2. Right derives <Op> <S>
3. S derives Num.
4. Num is leaf
5. Op derives "b"
6. Backing up tofirst rule
7. Left derives  <S>
8. S derives Num
9. Num  is leaf
10 Backing up, Op derives "a"
11. Num is leaf

