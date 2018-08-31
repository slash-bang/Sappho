import Common
import Foundation

class 🌌Decimal: 🌌Value, CustomStringConvertible, Comparable {

	override var decimal: Decimal? {
		return value
	}

	override var double: Double? {
		return Double(exactly: NSDecimalNumber(decimal: value))
	}

	override var float: Float? {
		return Float(exactly: NSDecimalNumber(decimal: value))
	}

	override var float80: Float80? {
		return Float80(description) // `Float80` doesn't support `NSNumber`
	}

	override var int: Int? {
		return Int(exactly: NSDecimalNumber(decimal: value))
	}

	override var int8: Int8? {
		return Int8(exactly: NSDecimalNumber(decimal: value))
	}

	override var int16: Int16? {
		return Int16(exactly: NSDecimalNumber(decimal: value))
	}

	override var int32: Int32? {
		return Int32(exactly: NSDecimalNumber(decimal: value))
	}

	override var int64: Int64? {
		return Int64(exactly: NSDecimalNumber(decimal: value))
	}

	override var uInt: UInt? {
		return UInt(exactly: NSDecimalNumber(decimal: value))
	}

	override var uInt8: UInt8? {
		return UInt8(exactly: NSDecimalNumber(decimal: value))
	}

	override var uInt16: UInt16? {
		return UInt16(exactly: NSDecimalNumber(decimal: value))
	}

	override var uInt32: UInt32? {
		return UInt32(exactly: NSDecimalNumber(decimal: value))
	}

	override var uInt64: UInt64? {
		return UInt64(exactly: NSDecimalNumber(decimal: value))
	}

	let description: String

	override var string: String? {
		return description
	}

	let value: Decimal

	/// Creates a new instance from the given `representation`.
	required init(_ literal: String) throws {
		guard
			try! XSDRegularExpression(
				"(\\+|-)?([0-9]+(\\.[0-9]*)?|\\.[0-9]+)"
			).test(literal)
		else {
			throw NibError.notInLexicalSpace
		}
		let formatter = 🌌Decimal.makeFormatter()
		guard let value = formatter.number(from: literal) as? NSDecimalNumber else {
			throw NibError.notInLexicalSpace
		}
		self.description = formatter.string(from: value) ?? literal
		self.value = value as Decimal
		super.init()
	}

	init?<Int_: BinaryInteger>(_ value: Int_) {
		let formatter = 🌌Decimal.makeFormatter()
		guard let decimalValue = Decimal(exactly: value) else {
			return nil
		}
		self.description = formatter.string(
			from: NSDecimalNumber(decimal: decimalValue)
		) ?? String(describing: value)
		self.value = decimalValue
		super.init()
	}

	override func equal(to other: XSDAtomicValue) -> Bool {
		return identical(to: other)
	}

	override func greater(than other: XSDAtomicValue) -> Bool {
		if let otherValue = (other as? 🌌Decimal)?.value {
			return value > otherValue
		} else {
			return false
		}
	}

	override func identical(to other: XSDAtomicValue) -> Bool {
		if let otherValue = (other as? 🌌Decimal)?.value {
			return value == otherValue
		} else {
			return false
		}
	}

	override func lesser(than other: XSDAtomicValue) -> Bool {
		if let otherValue = (other as? 🌌Decimal)?.value {
			return value < otherValue
		} else {
			return false
		}
	}

	/// The Swift greater-than comparison.
	static func <(lhs: 🌌Decimal, rhs: 🌌Decimal) -> Bool {
		return lhs ≺ rhs
	}

	fileprivate static func makeFormatter() -> NumberFormatter {
		let formatter = NumberFormatter()
		formatter.numberStyle = .decimal
		formatter.generatesDecimalNumbers = true
		formatter.localizesFormat = false
		formatter.usesSignificantDigits = true
		formatter.minimumSignificantDigits = 1
		formatter.maximumSignificantDigits = 38
		return formatter
	}

}
