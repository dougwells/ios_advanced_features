//: Playground - noun: a place where people can play

import UIKit

let vector: [[Int]] = [ [1, 11], [2, 22] ]
var next: Int = 3
print(vector[1][0])
next + vector[1][0]

for i in vector {
    print(i[0])     //NOTE: "i" become first element
                    //"i" is not 0 or 1.  It IS each elem!
}
