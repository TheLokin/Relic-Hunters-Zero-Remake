# How to create a new translation

First open the file "languages.json" (which you can find in the Relic Hunters Zero Remake lang directory) with any
text editor and add a new entry for the language.

This file contains the settings of languages:

* code: the ISO-639-1 code of the language (e.g. es, en, fr) which will be the input of the language in the game.
* src: the path of the .json file (available: es, en).
* font: the font to use for this language (currently available: latin). You can add your own .ttf files to
the lang/font directory, where first and last are the range of characters to include.

Then create your .json file and translate it. There's nothing unusual about the translation process.
Note: variables are noted ::var::. You must keep exactly the same variables in the translated text, but the order
may change. For example "The big house has ::var:: windows" can be "There are ::var:: windows in the big house".

Finally open the game, select the language and watch your work.