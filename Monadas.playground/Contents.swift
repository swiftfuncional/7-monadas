import Foundation

//Imperative
let content = NSURL(string: "http://swiftfuncional.com")
	.flatMap { NSData(contentsOf: $0 as URL) }
	.flatMap { NSString(data: $0 as Data, encoding: String.Encoding.utf8.rawValue) }

let m1 = Int("3")
let f1: (Int) -> Float? = { Float($0) }
let f2: (Float) -> String? = { String($0) }

m1.flatMap(f1).flatMap(f2) == m1.flatMap { x in f1(x).flatMap(f2) }