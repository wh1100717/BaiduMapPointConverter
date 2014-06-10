BaiduMapPointConverter
===========================

A tool for converting the Coordinate from Baidu Map webpage.

The coordinate data from Baidu map is similar to the format like `(12958160.97, 4825907.72)`。
However, it could not be used unless this point could be converted to the point like `(116.403874,39.914889)`

This tool is used to convert coordinates in two formats as u like.


#Usage
---

It is really simple to use this tool both in web or server side.

Use `bower install BaiduMapPointConverter` and then:

```
p = new ConvertPoint(12958160.97, 4825907.72)
result = p.convertMC2LL()
result.lng.should.equal '116.403874'
result.lat.should.equal '39.914889'
```

```
p = new ConvertPoint(116.403874,39.914889)
result = p.convertLL2MC()
result.lng.should.equal '12958160.97'
result.lat.should.equal '4825907.72'
```