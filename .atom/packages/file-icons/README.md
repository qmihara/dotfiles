# file-icons

Adds file specific icons to atom for improved visual grepping. Works with Tree View and Fuzzy Finder.

![Screenshot](https://raw.githubusercontent.com/DanBrooker/file-icons/master/file-icons.png)

A number of icons and colours are provied by default for a range of common file types.
If you have file that you would like custom icons for you can easily add this yourself.

File Icons are now specified via css only.

# Customisation

The following css can be added to your user stylesheet to customise files with the .rb file extension

```css
.icon-file-text[data-name$=".rb"]          { .medium-red;             } // Colours icon and filename
.icon-file-text[data-name$=".rb"]:before   { .ruby-icon; .medium-red; } // Colours icon only
.icon-file-text[data-name$=".rb"]:before   { .ruby-icon; .medium-red; } // Colours icon only
```

Folders
```css
```

## Icons
Icons are located at `./stylesheets/icons.less`. You can create a custom CSS class and express its code through `content: "\fxxx";`. Octicons is the default icon's class.

```css
.ruby-icon { content: "\f047"; }
```

Some custom fonts are already provided, such as [FontAwesome](http://fortawesome.github.io/)(`.fa`) and [FontMfizz](http://mfizz.com/oss/font-mfizz)(`.mf`), you just have to provide its class.

```css
.coffee-icon { .fa; content: "\f0f4"; }
```

## Colours

Colours are from the [Base16](https://github.com/chriskempson/base16) colour palette. CSS classes used to apply color follow its primary 8 (eight) colours and 3 (three) variants:

  * Red, Green, Yellow, Blue, Maroon, Purple, Orange, Cyan
  * Light, Medium, Dark.

Medium is colour provided by Base16. Light is medium lightened 15%. Dark is medium darkened 15%. In order to "construct" a CSS class color, you provide its variant followed by a dash (-).

```css
.light-red;
.medium-blue;
.dark-maroon;
```

# Acknowledgments
Wouldn't have even tried to make this if it weren't for [sommerper/filetype-color](https://github.com/sommerper/filetype-color)
Also thanks to all the [contributors](https://github.com/DanBrooker/file-icons/graphs/contributors).