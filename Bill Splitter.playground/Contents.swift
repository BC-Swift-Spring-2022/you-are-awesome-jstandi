import UIKit

var bill = 80
var diners = 3
var eachPersonOwes = Double(bill/diners)

eachPersonOwes *= 100
eachPersonOwes = eachPersonOwes/100

print("The bill is $\(bill) and each person owes $\(eachPersonOwes)")
