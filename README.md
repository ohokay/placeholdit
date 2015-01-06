# Placeholdit

A Rails view helper for placeholder images via http://placehold.it

## Installation

Add this line to your application's Gemfile:

    gem 'placeholdit'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install placeholdit

## Usage

A basic 500x500 placeholder image:
		
	<%= placeholdit_image_tag "500x500" %>

A basic 250 width 500 height placeholder image”

	<%= placeholdit_image_tag "250x500" %>

The same placeholder image with custom text:

	<%= placeholdit_image_tag "500", text: "Buy me!" %>

The same placeholder image with a blue background:

	<%= placeholdit_image_tag "500", text: "Buy me!", background_color: '#004eff' %>

The same placeholder image with a blue background and red text (not recommended):

	<%= placeholdit_image_tag "500", text: "Buy me!", background_color: '#004eff', text_color: '#ff0000' %>

Alternatively, calling placeholdit will work as well:

	<%= placeholdit "500" %>


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
