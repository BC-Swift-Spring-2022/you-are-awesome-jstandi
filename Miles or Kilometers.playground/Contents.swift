import UIKit

let milesToKm = 1.60934
let useMetric = false
var tenK = 10.0
var marathon = 26.2
var fiftyK = 50.0

if useMetric {
    marathon /= milesToKm
} else {
    tenK *= milesToKm
    fiftyK *= milesToKm
}

print(tenK, marathon, fiftyK)

// useMetric true: 10.0, 16.27996570022494, 50.0
// useMetric false: 16.0934, 26.2, 80.467
