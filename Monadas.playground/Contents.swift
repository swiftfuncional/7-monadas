import Foundation

//Imperative
let content = NSURL(string: "http://swiftfuncional.com")
	.flatMap { NSData(contentsOf: $0 as URL) }
	.flatMap { NSString(data: $0 as Data, encoding: String.Encoding.utf8.rawValue) }

let anOptional = Int("3")

anOptional.flatMap { x in .some(x) } == anOptional

let x = 3

let fn: (Int) -> Int = { $0 + 5 }

Optional.some(3).flatMap(fn) == fn(x)