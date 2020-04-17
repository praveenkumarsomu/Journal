import Foundation

extension Date {
    func toString(formatter: String) -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = formatter
        return dateFormatter.string(from: self)
    }
}
