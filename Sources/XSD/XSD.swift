import Foundation

/// An enumeration representing the XSD namespace.
///
/// Only those datatypes defined in XSD Part 2 are listed; notably,
///   [xsd:anyType](http://www.w3.org/2001/XMLSchema#anyType) is not
///   included.
public enum XSD: String {

	/*
	###  Special builtin datatypes  ###
	*/

	/// [xsd:anySimpleType](http://www.w3.org/2001/XMLSchema#anySimpleType).
	case anySimpleType

	/// [xsd:anyAtomicType](http://www.w3.org/2001/XMLSchema#anyAtomicType).
	case anyAtomicType

	/*
	###  Primitive datatypes  ###
	*/

	/// [xsd:string](http://www.w3.org/2001/XMLSchema#string).
	case string

	/// [xsd:boolean](http://www.w3.org/2001/XMLSchema#boolean).
	case boolean

	/// [xsd:float](http://www.w3.org/2001/XMLSchema#float).
	case float

	/// [xsd:double](http://www.w3.org/2001/XMLSchema#double).
	case double

	/// [xsd:decimal](http://www.w3.org/2001/XMLSchema#decimal).
	case decimal

	/// [xsd:dateTime](http://www.w3.org/2001/XMLSchema#dateTime).
	case dateTime

	/// [xsd:duration](http://www.w3.org/2001/XMLSchema#duration).
	case duration

	/// [xsd:time](http://www.w3.org/2001/XMLSchema#time).
	case time

	/// [xsd:date](http://www.w3.org/2001/XMLSchema#date).
	case date

	/// [xsd:gMonth](http://www.w3.org/2001/XMLSchema#gMonth).
	case gMonth

	/// [xsd:gMonthDay](http://www.w3.org/2001/XMLSchema#gMonthDay).
	case gMonthDay

	/// [xsd:gDay](http://www.w3.org/2001/XMLSchema#gDay).
	case gDay

	/// [xsd:gYear](http://www.w3.org/2001/XMLSchema#gYear).
	case gYear

	/// [xsd:gYearMonth](http://www.w3.org/2001/XMLSchema#gYearMonth).
	case gYearMonth

	/// [xsd:hexBinary](http://www.w3.org/2001/XMLSchema#hexBinary).
	case hexBinary

	/// [xsd:base64Binary](http://www.w3.org/2001/XMLSchema#base64Binary).
	case base64Binary

	/// [xsd:anyURI](http://www.w3.org/2001/XMLSchema#anyURI).
	case anyURI

	/// [xsd:QName](http://www.w3.org/2001/XMLSchema#QName)
	///   (*not supported*).
	case QName

	/// [xsd:NOTATION](http://www.w3.org/2001/XMLSchema#NOTATION)
	///   (*not supported*).
	case NOTATION

	/*
	###  Other builtin datatypes  ###
	*/

	/// [xsd:normalizedString](http://www.w3.org/2001/XMLSchema#normalizedString).
	case normalizedString

	/// [xsd:token](http://www.w3.org/2001/XMLSchema#token).
	case token

	/// [xsd:language](http://www.w3.org/2001/XMLSchema#language).
	case language

	/// [xsd:NMTOKEN](http://www.w3.org/2001/XMLSchema#NMTOKEN).
	case NMTOKEN

	/// [xsd:NMTOKENS](http://www.w3.org/2001/XMLSchema#NMTOKENS).
	case NMTOKENS

	/// [xsd:Name](http://www.w3.org/2001/XMLSchema#Name).
	case Name

	/// [xsd:NCName](http://www.w3.org/2001/XMLSchema#NCName).
	case NCName

	/// [xsd:ID](http://www.w3.org/2001/XMLSchema#ID)
	///   (*not supported*).
	case ID

	/// [xsd:IDREF](http://www.w3.org/2001/XMLSchema#IDREF)
	///   (*not supported*).
	case IDREF

	/// [xsd:IDREFS](http://www.w3.org/2001/XMLSchema#IDREFS)
	///   (*not supported*).
	case IDREFS

	/// [xsd:ENTITY](http://www.w3.org/2001/XMLSchema#ENTITY)
	///   (*not supported*).
	case ENTITY

	/// [xsd:ENTITIES](http://www.w3.org/2001/XMLSchema#ENTITIES)
	///   (*not supported*).
	case ENTITIES

	/// [xsd:integer](http://www.w3.org/2001/XMLSchema#integer).
	case integer

	/// [xsd:nonPositiveInteger](http://www.w3.org/2001/XMLSchema#nonPositiveInteger).
	case nonPositiveInteger

	/// [xsd:negativeInteger](http://www.w3.org/2001/XMLSchema#negativeInteger).
	case negativeInteger

	/// [xsd:long](http://www.w3.org/2001/XMLSchema#long).
	case long

	/// [xsd:int](http://www.w3.org/2001/XMLSchema#int).
	case int

	/// [xsd:short](http://www.w3.org/2001/XMLSchema#short).
	case short

	/// [xsd:byte](http://www.w3.org/2001/XMLSchema#byte).
	case byte

	/// [xsd:nonNegativeInteger](http://www.w3.org/2001/XMLSchema#nonNegativeInteger).
	case nonNegativeInteger

	/// [xsd:unsignedLong](http://www.w3.org/2001/XMLSchema#unsignedLong).
	case unsignedLong

	/// [xsd:unsignedInt](http://www.w3.org/2001/XMLSchema#unsignedInt).
	case unsignedInt

	/// [xsd:unsignedShort](http://www.w3.org/2001/XMLSchema#unsignedShort).
	case unsignedShort

	/// [xsd:unsignedByte](http://www.w3.org/2001/XMLSchema#unsignedByte).
	case unsignedByte

	/// [xsd:positiveInteger](http://www.w3.org/2001/XMLSchema#positiveInteger).
	case positiveInteger

	/// [xsd:yearMonthDuration](http://www.w3.org/2001/XMLSchema#yearMonthDuration).
	case yearMonthDuration

	/// [xsd:dayTimeDuration](http://www.w3.org/2001/XMLSchema#dayTimeDuration).
	case dayTimeDuration

	/// [xsd:dateTimeStamp](http://www.w3.org/2001/XMLSchema#dateTimeStamp).
	case dateTimeStamp

	/*
	##  Types  ##
	*/

	/// An enumeration representing the XSD‐defined constraining
	///   facets.
	public enum ConstrainingFacet: String {

		/// [xsd:length](http://www.w3.org/2001/XMLSchema#length).
		case length

		/// [xsd:minLength](http://www.w3.org/2001/XMLSchema#minLength).
		case minLength

		/// [xsd:maxLength](http://www.w3.org/2001/XMLSchema#maxLength).
		case maxLength

		/// [xsd:pattern](http://www.w3.org/2001/XMLSchema#pattern).
		case pattern

		/// [xsd:enumeration](http://www.w3.org/2001/XMLSchema#enumeration).
		case enumeration

		/// [xsd:whiteSpace](http://www.w3.org/2001/XMLSchema#whiteSpace).
		case whiteSpace

		/// [xsd:maxInclusive](http://www.w3.org/2001/XMLSchema#maxInclusive).
		case maxInclusive

		/// [xsd:maxExclusive](http://www.w3.org/2001/XMLSchema#maxExclusive).
		case maxExclusive

		/// [xsd:minExclusive](http://www.w3.org/2001/XMLSchema#minExclusive).
		case minExclusive

		/// [xsd:minInclusive](http://www.w3.org/2001/XMLSchema#minInclusive).
		case minInclusive

		/// [xsd:totalDigits](http://www.w3.org/2001/XMLSchema#totalDigits).
		case totalDigits

		/// [xsd:fractionDigits](http://www.w3.org/2001/XMLSchema#fractionDigits).
		case fractionDigits

		/// [xsd:Assertions](http://www.w3.org/2001/XMLSchema#Assertions).
		case Assertions

		/// [xsd:explicitTimezone](http://www.w3.org/2001/XMLSchema#explicitTimezone).
		case explicitTimezone

	}

	/// An untyped decimal number, as used by the various XSD
	///   functions.
	///
	///  +  note:
	///     XSD functions will sometimes add additional constraints to
	///       the decimal numbers they take; no separate datatypes for
	///       these are used.
	public typealias DecimalNumber = Decimal

	public enum BinaryDigit: UInt8, Hashable {
		case ０
		case １
	}

	public typealias BinaryOctet = UInt8

	/// An enumeration representing possible XSD errors.
	public enum Error: Swift.Error {

		/// The provided literal is not in the lexical space for the
		///   value.
		case notInLexicalSpace

	}

	/// An enumeration representing the XSD‐defined fundamental facets.
	public enum FundamentalFacet: String {

		/// [xsd:ordered](http://www.w3.org/2001/XMLSchema#ordered).
		case ordered

		/// [xsd:bounded](http://www.w3.org/2001/XMLSchema#bounded).
		case bounded

		/// [xsd:cardinality](http://www.w3.org/2001/XMLSchema#cardinality).
		case cardinality

		/// [xsd:numeric](http://www.w3.org/2001/XMLSchema#numeric).
		case numeric

	}

	/// An untyped integer, as used by the various XSD functions.
	///
	///  +  note:
	///     XSD functions will sometimes add additional constraints to
	///       the integers they take; no separate datatypes for these
	///       are used.
	public typealias Integer = Int64

	/// A sequence of values, possibly infinite, as used by the various
	///   XSD functions.
	public typealias Sequence<T> = UnfoldSequence<T, Any>

	/*
	##  Properties and Methods  ##
	*/

	/// The XSD namespace.
	public static let ·targetNamespace· =
		"http://www.w3.org/2001/XMLSchema"

	/// The greatest integer less than or equal to `m` / `n`.
	///
	///  +  parameters:
	///      +  m:
	///         A `XSD.DecimalNumber`.
	///      +  n:
	///         A `XSD.DecimalNumber`.
	///
	///  +  returns:
	///     A `XSD.Integer`.
	public static func ·div· (
		_ m: XSD.DecimalNumber,
		_ n: XSD.DecimalNumber
	) -> XSD.Integer {
		XSD.Integer(
			exactly: (m as NSDecimalNumber).dividing(
				by: n as NSDecimalNumber,
				withBehavior: NSDecimalNumberHandler(
					roundingMode: .down,
					scale: 0,
					raiseOnExactness: false,
					raiseOnOverflow: true,
					raiseOnUnderflow: true,
					raiseOnDivideByZero: true
				)
			)
		)!
	}

	/// The greatest integer less than or equal to `m` / `n`.
	///
	///  +  parameters:
	///      +  m:
	///         An `XSD.Integer`.
	///      +  n:
	///         An `XSD.Integer`.
	///
	///  +  returns:
	///     An `XSD.Integer`.
	public static func ·div· (
		_ m: XSD.Integer,
		_ n: XSD.Integer
	) -> XSD.Integer { return m / n }

	/// `m` − `n` × `XSD.·div·(m, n)`.
	///
	///  +  parameters:
	///      +  m:
	///         A `XSD.DecimalNumber`.
	///      +  n:
	///         A `XSD.DecimalNumber`.
	///
	///  +  returns:
	///     A `XSD.DecimalNumber`.
	public static func ·mod· (
		_ m: XSD.DecimalNumber,
		_ n: XSD.DecimalNumber
	) -> XSD.DecimalNumber {
		m - n * (
			(m as NSDecimalNumber).dividing(
				by: n as NSDecimalNumber,
				withBehavior: NSDecimalNumberHandler(
					roundingMode: .down,
					scale: 0,
					raiseOnExactness: false,
					raiseOnOverflow: true,
					raiseOnUnderflow: true,
					raiseOnDivideByZero: true
				)
			) as XSD.DecimalNumber
		)
	}

	/// `m` − `n` × `XSD.·div·(m, n)`.
	///
	///  +  parameters:
	///      +  m:
	///         An `XSD.Integer`.
	///      +  n:
	///         An `XSD.Integer`.
	///
	///  +  returns:
	///     An `XSD.Integer`.
	public static func ·mod· (
		_ m: XSD.Integer,
		_ n: XSD.Integer
	) -> XSD.Integer { return m % n }

}
