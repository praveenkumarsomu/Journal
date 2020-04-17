import Foundation

protocol CompletableUseCase {
    /// Execute with no parameters and no return times
    func execute()
}

protocol CompletableUseCaseWithParameter {
    associatedtype Input
    func execute(input: Input)
}

protocol UseCaseWithParameter {
    associatedtype Input
    associatedtype Output
    func execute(input: Input) -> Output
}

protocol UseCase {
    associatedtype Output
    func execute() -> Output
}
