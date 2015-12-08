import Foundation

extension String {
	func titlecaseString() -> String {
		let characterSet = NSMutableCharacterSet.alphanumericCharacterSet().invertedSet
		return componentsSeparatedByCharactersInSet(characterSet)
			.map({ $0.capitalizedString })
			.reduce("", combine: +)
	}
}
