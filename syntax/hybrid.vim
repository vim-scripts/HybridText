" Vim syntax file
" Language:     Hybrid for text
" Maintainer:   Carson Fire
" Filenames:    *.txt
" Sample:       http://antelucan.com/vimupdate/f/hybrid-txt-syntax.html

if exists("b:current_syntax")
  finish
endif

unlet! b:current_syntax

" MARKDOWN HEADERS
syn region txtHeader1 start=+\(^\|>\|\s\)*# + end=+$+ containedin=txtBlockquote1,txtBlockquote2,txtBlockquote3
syn region txtHeader2 start=+\(^\|>\|\s\)*## + end=+$+ containedin=txtBlockquote1,txtBlockquote2,txtBlockquote3
syn region txtHeader3 start=+\(^\|>\|\s\)*### + end=+$+ containedin=txtBlockquote1,txtBlockquote2,txtBlockquote3
syn region txtHeader4 start=+\(^\|>\|\s\)*#### + end=+$+ containedin=txtBlockquote1,txtBlockquote2,txtBlockquote3
syn region txtHeader5 start=+\(^\|>\|\s\)*##### + end=+$+ containedin=txtBlockquote1,txtBlockquote2,txtBlockquote3
syn region txtHeader6 start=+\(^\|>\|\s\)*###### + end=+$+ containedin=txtBlockquote1,txtBlockquote2,txtBlockquote3

" MARKDOWN TEXT EMPHASIS
syn match txtAllItalic "\*[^ ][^\*]*[^ ^\\]\*"
syn match txtAllBold "\*\*[^ ][^\*]*[^ ^\\]\*\*"
syn match txtAllItalicBold "\*\*\*[^ ][^\*]*[^ ^\\]\*\*\*"
syn match txtItalic "[^*]*" contained containedin=txtAllItalic
syn match txtBold "[^*]*" contained containedin=txtAllBold
syn match txtBoldItalic "[^*]*" contained containedin=txtAllItalicBold

" MARKDOWN CODE
syn match txtMonospace "`\([^`]\)*`"

" MARKDOWN LINKS
syn match txtOuterLinkItalic "\*[^\*]*[^\\]\*" contained containedin=txtLink
syn match txtOuterLinkBold "\*\*[^\*]*\*\*" contained containedin=txtLink
syn match txtOuterLinkBoldItalic "\*\*\*[^\*]*\*\*\*" contained containedin=txtLink
syn match txtLinkItalic "[^*]*" contained containedin=txtOuterLinkItalic
syn match txtLinkBold "[^*]*" contained containedin=txtOuterLinkBold
syn match txtLinkBoldItalic "[^*]*" contained containedin=txtOuterLinkBoldItalic
syn match txtLinkClear "\([\[\]]\)" contained containedin=txtLink
syn match txtLinkedClear "\([\[\]()]\)" contained containedin=txtLinked
syn match txtLink "\(\s\|^\)!*\[\([^\]]\)*\][(\[]\([^)]\)*[)\]]" contains=txtLinked containedin=ALL
syn match txtLinked "\][(\[]\([^\]^)]\)*[)\]]" contained containedin=txtLink
syn match txtImgLink "\(\s\|^\)!" contained containedin=txtLink

" MARKDOWN EXTRA
syn match txtTagLink "<\([^>]\)*\(@\|://\)\([^>]\)*>"
syn match txtTagLinkClear "[<>]" contained containedin=txtTagLink
syn region txtLinkTitle start=+"+ end=+"+ contained containedin=txtLinked
syn match txtAbbreviation "^\*" contained containedin=txtID
syn match txtID "\*\?\[\([^\]]\)*\]: "
syn match txtIdClear "\([\[\]:]\)" contained containedin=txtID
syn match txtFootnoteClear "\([\[\]]\)" contained containedin=txtFootnote
syn match txtFootnote "\[\^\([^\]]\)*\]"

" BLOCKQUOTES
syn region txtBlockquote1 start=+^>+ end=+$+
syn match txtOuterBlockquote1Italic "\*[^\*]*\*" contained containedin=txtBlockquote1
syn match txtOuterBlockquote1Bold "\*\*[^\*]*\*\*" contained containedin=txtBlockquote1
syn match txtOuterBlockquote1BoldItalic "\*\*\*[^\*]*\*\*\*" contained containedin=txtBlockquote1
syn match txtBlockquote1Italic "[^*]*" contained containedin=txtOuterBlockquote1Italic
syn match txtBlockquote1Bold "[^*]*" contained containedin=txtOuterBlockquote1Bold
syn match txtBlockquote1BoldItalic "[^*]*" contained containedin=txtOuterBlockquote1BoldItalic
syn region txtBlockquote2 start=+^> \?>+ end=+$+
syn match txtOuterBlockquote2Italic "\*[^\*]*\*" contained containedin=txtBlockquote2
syn match txtOuterBlockquote2Bold "\*\*[^\*]*\*\*" contained containedin=txtBlockquote2
syn match txtOuterBlockquote2BoldItalic "\*\*\*[^\*]*\*\*\*" contained containedin=txtBlockquote2
syn match txtBlockquote2Italic "[^*]*" contained containedin=txtOuterBlockquote2Italic
syn match txtBlockquote2Bold "[^*]*" contained containedin=txtOuterBlockquote2Bold
syn match txtBlockquote2BoldItalic "[^*]*" contained containedin=txtOuterBlockquote2BoldItalic
syn region txtBlockquote3 start=+^> \?> \?>+ end=+$+
syn match txtOuterBlockquote3Italic "\*[^\*]*\*" contained containedin=txtBlockquote3
syn match txtOuterBlockquote3Bold "\*\*[^\*]*\*\*" contained containedin=txtBlockquote3
syn match txtOuterBlockquote3BoldItalic "\*\*\*[^\*]*\*\*\*" contained containedin=txtBlockquote3
syn match txtBlockquote3Italic "[^*]*" contained containedin=txtOuterBlockquote3Italic
syn match txtBlockquote3Bold "[^*]*" contained containedin=txtOuterBlockquote3Bold
syn match txtBlockquote3BoldItalic "[^*]*" contained containedin=txtOuterBlockquote3BoldItalic

" MARKDOWN AND PANDOC LISTS
syn match txtUnorderedList "\(^\|\s\)\(\*\|+\|-\) " containedin=txtBlockquote1,txtBlockquote2,txtBlockquote3
syn match txtOrderedList "\(^\|\s\)(\?\(\d\)\d*\(\.\|)\) " containedin=txtBlockquote1,txtBlockquote2,txtBlockquote3

" PANDOC EXAMPLE LISTS
syn match txtExampleList "\(^\|\s\)(@\(\w\|-\|_\)*) " containedin=txtBlockquote1,txtBlockquote2,txtBlockquote3

" DIALOGUE
syn region txtDialogue start=+"+ end=+["|\n|\r]+ 
syn match txtAllDialogueItalic "\*[^ ][^\*][^ ]*\*" contained containedin=txtDialogue
syn match txtAllDialogueBold "\*\*[^ ][^\*][^ ]*\*\*" contained containedin=txtDialogue
syn match txtAllDialogueBoldItalic "\*\*\*[^\*]*\*\*\*" contained containedin=txtDialogue
syn match txtDialogueItalic "[^*]*" contained containedin=txtAllDialogueItalic
syn match txtDialogueBold "[^*]*" contained containedin=txtAllDialogueBold
syn match txtDialogueBoldItalic "[^*]*" contained containedin=txtAllDialogueBoldItalic

" ATTENTION TAGS
syn match txtTodo "\u\(\u\|\s\|'\|\.\|,\|-\)*\u:"

" TASKPAPER
syn match txtTag "\(^\| \)@[^ ]*"
syn match txtTagSubject "([^)]*)" contained containedin=txtTag
syn match txtTagSubjectClear "\([()]\)" contained containedin=txtTagSubject
syn match txtTagDone ".*@\(done\|cancelled\).*"
syn match txtProject ".*:$"

"HORIZONTAL RULES
syn match txtLineBreak "^- *- *--*$"
syn match txtAsterickBreak "^\* *\* *\*\**$"

"PANDOC
syn region txtTitle start=+^%+ end=+$+
syn region txtStrike start=+\~\~+ end=+\~\~+

hi def link txtAbbreviation Label
hi def link txtAllDialogueBold Nontext
hi def link txtAllDialogueBoldItalic Nontext
hi def link txtAllDialogueItalic Nontext
hi def link txtAsterickBreak TabLine
hi def link txtBlockquote1 txtGrad1
hi def link txtBlockquote1Bold txtGrad1Bold
hi def link txtBlockquote1BoldItalic txtGrad1BoldItalic
hi def link txtBlockquote1Italic txtGrad1Italic
hi def link txtBlockquote2 txtGrad2
hi def link txtBlockquote2Bold txtGrad2Bold
hi def link txtBlockquote2BoldItalic txtGrad2BoldItalic
hi def link txtBlockquote2Italic txtGrad2Italic
hi def link txtBlockquote3 txtGrad3
hi def link txtBlockquote3Bold txtGrad3Bold
hi def link txtBlockquote3BoldItalic txtGrad3BoldItalic
hi def link txtBlockquote3Italic txtGrad3Italic
hi def link txtBold htmlBold
hi def link txtBoldItalic htmlItalicBold
hi def link txtCharacter Identifier
hi def link txtComment Comment
hi def link txtDefinition Label
hi def link txtDialogue Statement
hi def link txtDialogueBold StatementBold
hi def link txtDialogueBoldItalic StatementBoldItalic
hi def link txtDialogueItalic StatementItalic
hi def link txtFootnote htmlLink
hi def link txtFootnoteClear Nontext
hi def link txtHeader1 htmlH1 
hi def link txtHeader2 htmlH2 
hi def link txtHeader3 htmlH3 
hi def link txtHeader4 htmlH4 
hi def link txtHeader5 htmlH5 
hi def link txtHeader6 htmlH6
hi def link txtId htmlLink
hi def link txtIdClear Nontext
hi def link txtImgLink Label
hi def link txtItalic htmlItalic
hi def link txtLineBreak TabLine
hi def link txtLink htmlLink
hi def link txtLinkBold htmlLinkBold
hi def link txtLinkBoldItalic htmlLinkBoldItalic
hi def link txtLinkClear Nontext
hi def link txtLinkItalic htmlLinkItalic
hi def link txtLinkTitle Normal
hi def link txtLinked Comment
hi def link txtLinkedClear Nontext
hi def link txtListItem Identifier
hi def link txtMonospace Comment 
hi def link txtOrderedList Label
hi def link txtExampleList Label
hi def link txtOuterBlockquote1Bold Nontext
hi def link txtOuterBlockquote1BoldItalic Nontext
hi def link txtOuterBlockquote1Italic Nontext
hi def link txtOuterBlockquote2Bold Nontext
hi def link txtOuterBlockquote2BoldItalic Nontext
hi def link txtOuterBlockquote2Italic Nontext
hi def link txtOuterBlockquote3Bold Nontext
hi def link txtOuterBlockquote3BoldItalic Nontext
hi def link txtOuterBlockquote3Italic Nontext
hi def link txtOuterBold NonText
hi def link txtOuterItalic NonText
hi def link txtOuterItalicBold NonText
hi def link txtOuterLinkBold Nontext
hi def link txtOuterLinkBoldItalic Nontext
hi def link txtOuterLinkItalic Nontext
hi def link txtProject Title
hi def link txtTag Identifier
hi def link txtTagDone Comment
hi def link txtTagLink htmlLink
hi def link txtTagLinkClear Nontext
hi def link txtTagSubject Label
hi def link txtTagSubjectClear Nontext
hi def link txtTaskDate Number
hi def link txtTaskToday htmlH1
hi def link txtTitle Title
hi def link txtTodo Todo
hi def link txtUnorderedList Label
hi def link txtStrike Nontext

let b:current_syntax = "txt"

" vim:set sw=2:

