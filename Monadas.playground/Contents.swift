class AddUserUseCase {

	let db = UserDatabase()

	func add(name: String, password: String, premium: Bool, newsletter: Bool) -> Result<User, UserError> {
		let user = User(name: name, password: password, premium: premium, newsletter: newsletter)

		let validation = UserValidator.Name(user)
			.flatMap(UserValidator.Password)
			.flatMap(UserValidator.Newsletter || UserValidator.Premium)

		return validation.map(db.create)
	}
}

let useCase = AddUserUseCase()

useCase.add(name: "Alex", password: "functional", premium: true, newsletter: false).map {
	print("SUCCESS: User created - \($0)")
}
