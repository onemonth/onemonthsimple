## One Month Simple - Payroll Application

One Month Simple is a vulnerable version of the Ruby on Rails Framework based off the OWASP RailsGoat project. It includes vulnerabilities from the OWASP Top 10, as well as some "extras" that the initial project contributors felt worthwhile to share. This project is designed to educate both developers, as well as security professionals.

## Getting Started

1. Make sure SQLite is installed:

  For brew
  ```
  # brew i nstall sqlite3
  ```

  For linux:
  ```
  # yum install sqlite-devel

  or

  # apt-get install libsqlite3-dev
  ```

2. Next, install the Ruby Version Manager (RVM) if you don't already have it:

  ```
  $ curl -L https://get.rvm.io | bash
  ```

  Install and run ruby 2.1.2:
  Note - You may need to run "bash --login" to start a new shell with rvm.

  ```
  rvm install ruby-2.1.2
  ```

3. Now, clone the code to a local directory:

  ```
  $ git clone https://github.com/onemonth/onemonthsimple
  ```

4. Install bundler which will be used to install the required project Gems:

  ```
  $ gem install bundler
  ```

5. Navigate into the directory and install the project gems using bundler:

  ```
  $ cd onemonthsimple
  $ bundle install
  ```

6. Initialize the database using the rake command:

  ```
  $ rake db:setup
  ```

7. Start the webserver and access the site:

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
