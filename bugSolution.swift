func myFunc(param: String?) -> String {
    guard let unwrappedParam = param else {
        return "Default Value"
    }
    do {
        // Perform operations that may throw errors
        let result = try someOperation(unwrappedParam)
        return result
    } catch {
        // Handle errors gracefully
        print("Error: \(error)")
        return "Error Handling"
    }
}

func someOperation(_ input: String) throws -> String {
    // Simulate an operation that might throw an error
    if input.isEmpty {
        throw NSError(domain: "MyErrorDomain", code: 1, userInfo: nil)
    }
    return "Success: \(input)"
}