enum Optional<A> {

	case None
	case Some(_: A)

	func map<B>(_ transform: (A) -> B) -> Optional<B> {
		return self.flatMap { a in
			return .Some(transform(a))
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