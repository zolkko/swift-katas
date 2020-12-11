import Foundation


protocol Monoid {
    static var mempty: Self { get }
    func op(_ other: Self) -> Self
}

infix operator <> : AdditionPrecedence

func <> <M: Monoid>(lhs: M, rhs: M) -> M {
    return lhs.op(rhs)
}

extension String: Monoid {
    static var mempty: String = ""
    func op(_ other: String) -> String {
        return self + other
    }
}
