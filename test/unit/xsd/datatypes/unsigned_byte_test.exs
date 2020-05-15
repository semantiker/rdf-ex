defmodule RDF.XSD.UnsignedByteTest do
  use RDF.XSD.Datatype.Test.Case,
    datatype: RDF.XSD.UnsignedByte,
    name: "unsignedByte",
    base: RDF.XSD.UnsignedShort,
    base_primitive: RDF.XSD.Integer,
    comparable_datatypes: [RDF.XSD.Decimal, RDF.XSD.Double],
    applicable_facets: [RDF.XSD.Facets.MinInclusive, RDF.XSD.Facets.MaxInclusive],
    facets: %{
      min_inclusive: 0,
      max_inclusive: 255
    },
    valid: RDF.XSD.TestData.valid_unsigned_bytes(),
    invalid: RDF.XSD.TestData.invalid_unsigned_bytes()
end