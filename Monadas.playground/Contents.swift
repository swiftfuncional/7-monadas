import Foundation

//Imperative
let content = NSURL(string: "http://swiftfuncional.com")
	.flatMap { NSData(contentsOf: $0 as URL) }
	.flatMap { NSString(data: $0 as Data, encoding: String.Encoding.utf8.rawValue) }