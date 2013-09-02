Angular Form Sandbox
====================

This is me learning Angular Forms and trying to gather just about everything you
can do with them into a big example project.  Also will include any helpful
reusable components I come up with.

To get started:

```
$ git clone https://github.com/jtickle/angularform
$ cd angularform
$ npm instal
$ grunt server
```

Controllers
===========

SimpleForm - all of the most simple form elements, nothing too custom here

Directives
==========

formGroup - If you just do forms "the Angular way", you will quickly find that
your users are annoyed because as they are filling it out, the form will be
constantly popping up and hiding error messages.  Errors should not appear until
the user has blurred an element, and using this directive will create a new
$erroneous scope property alongside the usual $valid, $error, etc.  So you can
still use $valid and $invalid and what have you, but if you base your ng-shows
and such on $erroneous, they will not show until the user has blurred the
control.  Bonus, if you are using Twitter-Bootstrap, you do not have to add any
extra divs or anything, as class="form-group" will trigger this directive just
fine.

tagSelect - a Twitter-Bootstrap-specific alternative to the radio button,
checkbox, select, and multiselect.  It is just about being pretty and really
adds no functionality that you cannot already use with the existing form
controls, but it looks nice when your user is "selecting tags" like on a comment
or photo or blog post or what have you.
