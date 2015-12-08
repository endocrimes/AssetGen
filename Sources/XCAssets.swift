struct XCAssets {
	let name: String
	let cases: [String : String]
	let subfolders: [XCAssets]?

	var source: [String] {
		let subsources = subfolders?.flatMap({ $0.source }) ?? []

		var sourceArray = [
			"enum \(name): String, AssetGenImageProtocol {"
		]
		for (key, value) in cases {
			sourceArray.append("case \(key) = \"\(value)\"")
		}
		sourceArray.appendContentsOf(subsources)
		sourceArray.append("}")

		return sourceArray
	}
}
