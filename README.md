## One Month Simple - Payroll Application

One Month Simple is a vulnerable version of the Ruby on Rails Framework based off the OWASP RailsGoat project. It includes vulnerabilities from the OWASP Top 10, as well as some "extras" that the initial project contributors felt worthwhile to share. This project is designed to educate both developers, as well as security professionals.

## Getting Started

To begin, make sure SQLite is installed:

For macports
```
# port install sqlite3 +universal
```

For linux:
```
# yum install sqlite-devel'

or

# apt-get install libsqlite3-dev'
```

Install the Ruby Version Manager (RVM):

```
$ curl -L https://get.rvm.io | bash
```

Install and run ruby 2.1.2:
Note - You may need to run "bash --login" to start a new shell with rvm.

```
rvm install ruby-2.1.2
```

Clone the code:

```
$ git clone https://github.com/onemonth/onemonthsimple
```

Install `bundler`:

```
$ gem install bundler
```

Navigate into the directory and install the dependencies:

```
$ cd onemonthsimple
$ bundle install
```

Initialize the database:

```
$ rake db:setup
```

Start the Thin web server:

```
$ rails server
```

Open your favorite browser, navigate to `http://localhost:3000` and start hacking!

# License

The MIT License (MIT)

Copyright (c) 2013-2014 The Open Web Application Security Project

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
