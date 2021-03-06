testing
testValidateSelectorAccessNonExisting
	| descriptor table mapping system field |
	system := DynamicDescriptorSystem new.
	descriptor := system addEmptyDescriptorFor: GlorpCustomer.
	table := DatabaseTable named: 'Table1'.
	field := table createFieldNamed: 'one' type: OraclePlatform new integer.
	descriptor addTable: table.
	mapping := descriptor newMapping: DirectMapping.
	mapping from: #foo to: field.
	mapping attribute useDirectAccess: false.
	self should: [mapping validate] raise: Dialect error