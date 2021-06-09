emacsmail
=========

This is a small script (heavily inspired by [1,2]) that enables
opening mailto: links from a web browser in Emacs.


[1] https://www.emacswiki.org/emacs/MailtoHandler  
[2] https://superuser.com/a/559270

Usage
-----

```
sudo make install
make mime
```

By default, the script and .desktop file are installed under
`/usr/local`, but this can be changed by setting the `prefix`
variable, e.g.,

```
sudo make install prefix=/usr
```
or, installing without root access:

```
make install prefix=~/.local
```

License
-------

Copyright 2021 Doug Torrance

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
