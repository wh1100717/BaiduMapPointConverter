chai = require 'chai'
sinon = require 'sinon'

{ConvertPoint} = require '../src/bmpointconverter'

chai.should()

describe 'ConvertPoint', ->
	it 'convertMC2LL(12958160.97, 4825907.72) should return point (116.403874, 39.914889)', ->
		p = new ConvertPoint(12958160.97, 4825907.72)
		result = p.convertMC2LL()
		result.lng.should.equal '116.403874'
		result.lat.should.equal '39.914889'
	it 'convertLL2MC(116.403874,39.914889) should return point (12958160.97, 4825907.72)', ->
		p = new ConvertPoint(116.403874,39.914889)
		result = p.convertLL2MC()
		result.lng.should.equal '12958160.97'
		result.lat.should.equal '4825907.72'