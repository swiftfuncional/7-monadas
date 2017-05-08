enum Optional<A> {

	case None
	case Some(_: A)

	func map<B>(_ transform: (A) -> B) -> Optional<B> {
		switch self {
		case let .Some(a):
			return .Some(transform(a))
		case .None:
			return .None
		}
	}

	func flatMap<B>(_ transform: (A) -> Optional<B>) -> Optional<B> {
		switch self {
		case .None:
			return .None
		case let .Some(a)
			return transform(a)
		}
	}
}