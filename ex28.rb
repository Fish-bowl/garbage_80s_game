
#false
true && false
#false
false && true
#true
1 == 1 || 2 == 1
#true
"test" == "test"
#true
1 == 1 || 2 != 1
#true
true && 1 == 1
#true ------ was false
false && 0 != 0
#true
true || 1 == 1
#false
"test" == "testing"
#false
1 != 0 && 2 == 1
#true
"test" != "testing"
#false
"test" == 1
!(true && false)
!(1 == 1 && 0 != 1)
!(10 == 1 || 1000 == 1000)
!(1 != 10 || 3 == 4)
!("testing" == "testing" && "Zed" == "Cool Guy")
1 == 1 && (!("testing" == 1 || 1 == 0))
"chunky" == "bacon" && (!(3 == 4 || 3 == 4))

3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun"))
