import Foundation

//Imperative
if let url = NSURL(string: "http://swiftfuncional.com") {
	if let data = NSData(contentsOf: url as URL) {
		if let content = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue) {

		}
	}
}