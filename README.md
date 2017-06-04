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

**NOTE:** Make sure you don't `.freeze` your `ATTRIBUTE_TYPES` constant if you specify a collection query otherwise new items from the db won't show up in your drop down until you reboot the server.

Add to your `FooDashboard`:

Supports all of the options that a normal Rails collection_select does including `multiple: true`

```ruby
ATTRIBUTE_TYPES = [
  bars: Field::CollectionSelect.with_options(
    collection: Bar.all,
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

