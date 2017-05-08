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
}