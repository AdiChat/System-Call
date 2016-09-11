# :gem: System Call :star:
[![Gem Version](https://badge.fury.io/rb/system_call.svg)](https://badge.fury.io/rb/ritetag_analysis)
[![Downloads](https://img.shields.io/gem/dt/system_call.svg)](https://img.shields.io/gem/dt/system_call.svg)
[![License](https://img.shields.io/badge/license-CC0--1.0-orange.svg)](https://img.shields.io/badge/license-CC0--1.0-orange.svg)
![alt text](https://img.shields.io/badge/system_call-good-green.svg " Running fun")

This is a <strong>web scraper</strong> (along with a gem) for scraping data from [linasm.sourceforge.net](linasm.sourceforge.net) and generate an extensive list of system calls on the fly. The list of system calls are present in the url: [here](linasm.sourceforge.net/docs/syscalls/index.php)
<br><br>
This is a <strong>gem</strong> for generating a list of <strong>system calls</strong> in UNIX based systems.<br>
Find the gem [here](https://rubygems.org/gems/system_call).

## Installation

Add the gem to the gemfile:

```ruby
gem 'system_call'
```

Then execute:
```ruby
$ bundle install
```
Install the gem :

```ruby
$ gem install system_call
```

## Usage

Create an object :
```ruby
  list = System_Call.new()
```

In order to generate the list of system calls by scraping data:

```ruby
  list.generate_list('E:/List/system_call_list.txt')
```
This would generate the list of system calls in a given path. (Default path: E:/System Calls in UNIX.txt)<br>

### Alternative usage

Run the following command:
```ruby
    ruby scrape_system_call_data.rb
```

##Download the list of system calls
View the list [here](https://raw.githubusercontent.com/AdiChat/System-Call/master/System%20Calls%20in%20UNIX.txt) and download it.

## Author
The gem <i><strong>system_call</strong></i> has been coded by <strong>[Aditya Chatterjee](http://github.com/AdiChat)</strong>.

## Contribute :pray:

Bug reports and pull requests are welcomed. 

## License
[![License](https://img.shields.io/badge/license-CC0--1.0-orange.svg)](https://img.shields.io/badge/license-CC0--1.0-orange.svg)<br>
The gem has been developed in the open under the terms of the [CC0-1.0](https://github.com/AdiChat/system_call/blob/master/LICENSE).
