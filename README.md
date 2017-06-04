# Administrate::Field::CollectionSelect

A plugin for [Administrate](https://github.com/thoughtbot/administrate)

## Usage

Add to your `Gemfile`:

```ruby
gem 'administrate-field-collection_select'
```

Run:

```bash
$ bundle install
```

Add to your `FooDashboard`:

Supports all of the options that a normal Rails collection_select does including `multiple: true`

**NOTE:** Make sure to specify the collection query as a `proc`
```ruby
ATTRIBUTE_TYPES = [
  bars: Field::CollectionSelect.with_options(
    collection: proc { Bar.all },
    value_method: :id,
    text_method: :name,
    options: {
      include_blank: 'Please Select A/Some Bars',
      include_hidden: false,
    },
    multiple: true,
    label: 'Good Bars',
  ),
]
```

