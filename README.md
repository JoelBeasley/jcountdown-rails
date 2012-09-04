jCountdown
==========

jCountdown is a jQuery plugin for Rails 3 asset pipeline, which displays the number of days/hours/minutes/seconds remaining until the specified date.

## Installation

This gem vendors jquery jcountdown for Rails 3.1 and greater. The files will be added to the asset pipeline and available for you to use.

First add the following lines to your applications `Gemfile`:

``` ruby
gem 'jquery-rails'
gem 'jcountdown-rails', :git => 'http://github.com/rezwyi/jcountdown-rails.git'
```

Then run `bundle install` to update bundle of your applicatoin.

Now you need to edit your `app/assets/javascripts/application.js` file and add the following line:

``` javascript
//= require jquery
//= require jcountdown
```

And then edit your `app/assets/stylesheets/application.css` file to look something like:

``` css
/*
 *= require_self
 *= require jcountdown
 *= require_tree .
 */
```

## Usage

With the gem installed and included in your asset manifests, you can now use jcountdown as you normally would.

Add the following lines to your view:

``` html
<div id="jcountdown"></div>
```

``` javascript
$(document).ready(function() {
  $("#jcountdown").setCountdown({
    //Date for the countdown
    targetDate: '2012-12-23',
    //Labels for days/hours/minutes/seconds,
    //[ 'Days', 'Hours', 'Minutes', 'Seconds' ] by default
    itemLabels: [ 'D', 'H', 'M', 'S' ]
  });
});
```

## Copyright

See LICENSE file.

## Contributors

* [Max Riveiro](https://github.com/kavu)
