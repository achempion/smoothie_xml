# SmoothieXML

How to work with XML API without moral pain

## Installation

Add this line to your application's Gemfile:
```ruby
gem 'smoothie_xml', github: 'achempion/smoothie_xml'
```
## Usage

```ruby
SmoothieXML.cook do

  {
    catalog: [
      {catalog_item: {smoothie_params: {price: 100, 'xml:lang' => 'en'}, smoothie_value: 'MacBook Air'}},
      {catalog_item: 'MacBook Pro'}
    ]
  }

end
```
will convert to
```xml
<Catalog>
  <CatalogItem Price="100" xml:lang="en">
    MacBook Air
  </CatalogItem>

  <CatalogItem>
    MacBook Pro
  </CatalogItem>
</Catalog>
```
