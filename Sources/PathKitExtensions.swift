import PathKit

extension CollectionType where Generator.Element == Path {
	func filterByExtension(`extension`: String) -> [Self.Generator.Element] {
		return filter { $0.`extension` == `extension` }
	}
}