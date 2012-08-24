" Vim syntax file
" Language:     Hybrid for text
" Maintainer:   Carson Fire
" Filenames:    *.txt
" Version:      1.1
"               Mind mapping; 'colorboost' option to add special gradients and
"               text emphasis to other colorschemes; direct definition of bold
"               and italic for normal text. 
" Version:      1.0
"               For plain text files that house different kinds of documents,
"               a hybrid of Markdown, Markdown Extra, Pandoc, and TaskPaper.
" Sample:       http://antelucan.com/vimupdate/f/hybrid-txt-syntax.html
" Note:         COLORBOOST
"               This adds extra colors and definitions to existing
"               colorschemes, and is on by default. Turn off by including the
"               next line in VIMRC, or uncomment here:
"               let g:ColorBoost = 1

if exists("b:current_syntax")
    finish
endif

unlet! b:current_syntax

if !exists('ColorBoost')
    let g:ColorBoost = 0
endif

if g:ColorBoost == 0

    let s:Brown = '#7e6f68'
    let s:DarkFireOrange = '#b95e30'
    let s:RubberStampBlue = '#326f9d'
    let s:RubberStampSkyBlue = '#4190cd'
    let s:TrippyBlue = '#6a5acd'
    let s:TrippyLtBlue = '#8370ff'
    let s:RedBrown = '#804000'
    let s:BlueGrad1 = '#5878da'
    let s:BlueGrad2 = '#7e96da'
    let s:BlueGrad3 = '#9daeda'
    let s:RedGrad1 = '#9f5266'
    let s:RedGrad2 = '#cf6b85'
    let s:RedGrad3 = '#ff84a4'
    let s:GreenGrad1 = '#296754'
    let s:GreenGrad2 = '#328b66'
    let s:GreenGrad3 = '#3aaf74'
    let s:BrownGrad1 = '#735745'
    let s:BrownGrad2 = '#a27a62'
    let s:BrownGrad3 = '#d09d7e'

    if &background == "dark"
        exe 'hi htmlH1 guifg='.s:DarkFireOrange.' gui=none'
        exe 'hi htmlH2 guifg='.s:DarkFireOrange.' gui=italic'
        exe 'hi htmlH3 guifg='.s:RubberStampSkyBlue.' gui=none'
        exe 'hi htmlH4 guifg='.s:RubberStampSkyBlue.' gui=italic'
        exe 'hi htmlH5 guifg='.s:RedGrad2.' gui=none'
        exe 'hi htmlH6 guifg='.s:RedGrad2.' gui=italic'
        exe 'hi Speech gui=none guifg='.s:BrownGrad3
        exe 'hi SpeechUnderline gui=underline guifg='.s:BrownGrad3
        exe 'hi SpeechItalic gui=italic guifg='.s:BrownGrad3
        exe 'hi SpeechBold gui=bold guifg='.s:BrownGrad3
        exe 'hi SpeechBoldItalic gui=bold,italic guifg='.s:BrownGrad3
        exe 'hi htmlLink guifg='.s:TrippyLtBlue.' gui=none'
        exe 'hi htmlLinkItalic guifg='.s:TrippyLtBlue.' gui=italic'
        exe 'hi htmlLinkBold guifg='.s:TrippyLtBlue.' gui=bold'
        exe 'hi htmlLinkBoldItalic guifg='.s:TrippyLtBlue.' gui=bold,italic'
        let s:Grad1 = s:BlueGrad3
        let s:Grad2 = s:BlueGrad2
        let s:Grad3 = s:BlueGrad1
        let s:Grad4 = s:BrownGrad3
        let s:Grad5 = s:BrownGrad2
        let s:Grad6 = s:BrownGrad1
        let s:Grad7 = s:GreenGrad3
        let s:Grad8 = s:GreenGrad2
        let s:Grad9 = s:GreenGrad1
        let s:Grad10 = s:RedGrad3
        let s:Grad11 = s:RedGrad2
        let s:Grad12 = s:RedGrad1
    else
        exe 'hi htmlH1 guifg='.s:DarkFireOrange.' gui=none'
        exe 'hi htmlH2 guifg='.s:DarkFireOrange.' gui=italic'
        exe 'hi htmlH3 guifg='.s:RubberStampBlue.' gui=none'
        exe 'hi htmlH4 guifg='.s:RubberStampBlue.' gui=italic'
        exe 'hi htmlH5 guifg='.s:RedBrown.' gui=none'
        exe 'hi htmlH6 guifg='.s:RedBrown.' gui=italic'
        exe 'hi htmlLink guifg='.s:TrippyBlue.' gui=none'
        exe 'hi htmlLinkItalic guifg='.s:TrippyBlue.' gui=italic'
        exe 'hi htmlLinkBold guifg='.s:TrippyBlue.' gui=bold'
        exe 'hi htmlLinkBoldItalic guifg='.s:TrippyBlue.' gui=bold,italic'
        exe 'hi Speech gui=none guifg='.s:Brown
        exe 'hi SpeechUnderline gui=underline guifg='.s:Brown
        exe 'hi SpeechItalic gui=italic guifg='.s:Brown
        exe 'hi SpeechBold gui=bold guifg='.s:Brown
        exe 'hi SpeechBoldItalic gui=bold,italic guifg='.s:Brown
        let s:Grad1 = s:BrownGrad1
        let s:Grad2 = s:BrownGrad2
        let s:Grad3 = s:BrownGrad3
        let s:Grad4 = s:RedGrad1
        let s:Grad5 = s:RedGrad2
        let s:Grad6 = s:RedGrad3
        let s:Grad7 = s:GreenGrad1
        let s:Grad8 = s:GreenGrad2
        let s:Grad9 = s:GreenGrad3
        let s:Grad10 = s:BlueGrad1
        let s:Grad11 = s:BlueGrad2
        let s:Grad12 = s:BlueGrad3
    endif

    exe 'hi txtGrad1 gui=none guifg='.s:Grad1
    exe 'hi txtGrad1Bold gui=bold guifg='.s:Grad1
    exe 'hi txtGrad1Italic gui=italic guifg='.s:Grad1
    exe 'hi txtGrad1BoldItalic gui=bold,italic guifg='.s:Grad1
    exe 'hi txtGrad2 gui=none guifg='.s:Grad2
    exe 'hi txtGrad2Bold gui=bold guifg='.s:Grad2
    exe 'hi txtGrad2Italic gui=italic guifg='.s:Grad2
    exe 'hi txtGrad2BoldItalic gui=bold,italic guifg='.s:Grad2
    exe 'hi txtGrad3 gui=none guifg='.s:Grad3
    exe 'hi txtGrad3Bold gui=bold guifg='.s:Grad3
    exe 'hi txtGrad3Italic gui=italic guifg='.s:Grad3
    exe 'hi txtGrad3BoldItalic gui=bold,italic guifg='.s:Grad3
    exe 'hi txtGrad4 gui=none guifg='.s:Grad4
    exe 'hi txtGrad4Bold gui=bold guifg='.s:Grad4
    exe 'hi txtGrad4Italic gui=italic guifg='.s:Grad4
    exe 'hi txtGrad4BoldItalic gui=bold,italic guifg='.s:Grad4
    exe 'hi txtGrad5 gui=none guifg='.s:Grad5
    exe 'hi txtGrad5Bold gui=bold guifg='.s:Grad5
    exe 'hi txtGrad5Italic gui=italic guifg='.s:Grad5
    exe 'hi txtGrad5BoldItalic gui=bold,italic guifg='.s:Grad5
    exe 'hi txtGrad6 gui=none guifg='.s:Grad6
    exe 'hi txtGrad6Bold gui=bold guifg='.s:Grad6
    exe 'hi txtGrad6Italic gui=italic guifg='.s:Grad6
    exe 'hi txtGrad6BoldItalic gui=bold,italic guifg='.s:Grad6
    exe 'hi txtGrad7 gui=none guifg='.s:Grad7
    exe 'hi txtGrad7Bold gui=bold guifg='.s:Grad7
    exe 'hi txtGrad7Italic gui=italic guifg='.s:Grad7
    exe 'hi txtGrad7BoldItalic gui=bold,italic guifg='.s:Grad7
    exe 'hi txtGrad8 gui=none guifg='.s:Grad8
    exe 'hi txtGrad8Bold gui=bold guifg='.s:Grad8
    exe 'hi txtGrad8Italic gui=italic guifg='.s:Grad8
    exe 'hi txtGrad8BoldItalic gui=bold,italic guifg='.s:Grad8
    exe 'hi txtGrad9 gui=none guifg='.s:Grad9
    exe 'hi txtGrad9Bold gui=bold guifg='.s:Grad9
    exe 'hi txtGrad9Italic gui=italic guifg='.s:Grad9
    exe 'hi txtGrad9BoldItalic gui=bold,italic guifg='.s:Grad9
    exe 'hi txtGrad10 gui=none guifg='.s:Grad10
    exe 'hi txtGrad10Bold gui=bold guifg='.s:Grad10
    exe 'hi txtGrad10Italic gui=italic guifg='.s:Grad10
    exe 'hi txtGrad10BoldItalic gui=bold,italic guifg='.s:Grad10
    exe 'hi txtGrad11 gui=none guifg='.s:Grad11
    exe 'hi txtGrad11Bold gui=bold guifg='.s:Grad11
    exe 'hi txtGrad11Italic gui=italic guifg='.s:Grad11
    exe 'hi txtGrad11BoldItalic gui=bold,italic guifg='.s:Grad11
    exe 'hi txtGrad12 gui=none guifg='.s:Grad12
    exe 'hi txtGrad12Bold gui=bold guifg='.s:Grad12
    exe 'hi txtGrad12Italic gui=italic guifg='.s:Grad12
    exe 'hi txtGrad12BoldItalic gui=bold,italic guifg='.s:Grad12
endif

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
syn region txtDialogue start=+\(^\| \)"+ end=+\(\n\|\r\|" \|",\|"\.\|";\|"--\)+ 
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

"MINDMAP
syn region txtIndent1 start=+^\(\t\| \{4\}\)\u+ end=+$+ contains=all
syn region txtIndent2 start=+^\(\t\{2\}\| \{8\}\)\u+ end=+$+ contains=all
syn region txtIndent3 start=+^\(\t\{3\}\| \{12\}\)\u+ end=+$+ contains=all
syn region txtIndent4 start=+^\(\t\{4\}\| \{16\}\)\u+ end=+$+ contains=all
syn region txtIndent5 start=+^\(\t\{5\}\| \{20\}\)\u+ end=+$+ contains=all
syn region txtIndent6 start=+^\(\t\{6\}\| \{24\}\)\u+ end=+$+ contains=all
syn region txtIndent7 start=+^\(\t\{7\}\| \{28\}\)\u+ end=+$+ contains=all
syn region txtIndent8 start=+^\(\t\{8\}\| \{32\}\)\u+ end=+$+ contains=all
syn region txtIndent9 start=+^\(\t\{9\}\| \{36\}\)\u+ end=+$+ contains=all
syn region txtIndent10 start=+^\(\t\{10\}\| \{40\}\)\u+ end=+$+ contains=all
syn region txtIndent11 start=+^\(\t\{11\}\| \{44\}\)\u+ end=+$+ contains=all
syn region txtIndent12 start=+^\(\t\{12\}\| \{48\}\)\u+ end=+$+ contains=all

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
hi def link txtCharacter Identifier
hi def link txtComment Comment
hi def link txtDefinition Label
hi def link txtDialogue Speech
hi def link txtDialogueBold SpeechBold
hi def link txtDialogueBoldItalic SpeechBoldItalic
hi def link txtDialogueItalic SpeechItalic
hi def link txtExampleList Label
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
hi def link txtIndent1 txtGrad1
hi def link txtIndent10 txtGrad10
hi def link txtIndent11 txtGrad11
hi def link txtIndent12 txtGrad12
hi def link txtIndent2 txtGrad2
hi def link txtIndent3 txtGrad3
hi def link txtIndent4 txtGrad4
hi def link txtIndent5 txtGrad5
hi def link txtIndent6 txtGrad6
hi def link txtIndent7 txtGrad7
hi def link txtIndent8 txtGrad8
hi def link txtIndent9 txtGrad9
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
hi def link txtStrike Nontext
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
hi txtBold gui=bold
hi txtBoldItalic gui=bold,italic
hi txtItalic gui=italic

let b:current_syntax = "txt"

" vim:set sw=2:

