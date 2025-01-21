func myFunc(param: String?) -> String {
    guard let unwrappedParam = param else {
        return "Default Value"
    }
    // ... further operations with unwrappedParam
    return unwrappedParam
}