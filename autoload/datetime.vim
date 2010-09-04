"=============================================================================
" FILE: datetime.vim
" AUTHOR: Pocket <pocket7878@yahoo.co.jp>
" Last Modified: 2010/09/04 22:43
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}
" Version: 1.0, for Vim 7.3
"=============================================================================

function! datetime#sec2min(sec)
	let l:min = a:sec/60
	return l:min
endfunction

function! datetime#sec2hour(sec)
	let l:hour = datetime#sec2min(a:sec) / 60
	return l:hour
endfunction

function! datetime#sec2day(sec)
	let l:day = datetime#sec2hour(a:sec) / 24
	return l:day
endfunction

function! datetime#sec2month(sec)
	let l:month = datetime#sec2day(a:sec) / 30
	return l:month
endfunction

function! datetime#sec2year(sec)
	let l:year = datetime#sec2month(a:sec) / 12
	return l:year
endfunction

function! datetime#min2sec(min)
	let l:sec = a:min * 60
	return l:sec
endfunction

function! datetime#min2hour(min)
	let l:hour = a:min / 60
	return l:hour
endfunction

function! datetime#min2day(min)
	let l:day = datetime#min2hour(a:min) / 24
	return l:day
endfunction

function! datetime#min2month(min)
	let l:month = datetime#min2day(a:min) / 30
	return l:month
endfunction

function! datetime#min2year(min)  
	let l:year = datetime#min2month(a:min) / 12
	return l:year
endfunction

function! datetime#hour2min(hour)
	let l:min = a:hour * 60
	return l:min
endfunction

function! datetime#hour2sec(hour)
	let l:sec = datetime#min2sec(datetime#hour2min(a:hour))
	return l:sec
endfunction

function! datetime#hour2day(hour)
	let l:day = a:hour / 24
	return l:day
endfunction

function! datetime#hour2month(hour)
	let l:month = datetime#hour2day(a:hour) / 30
	return l:month
endfunction

function! datetime#hour2year(hour)
	let l:year = datetime#hour2month(a:hour) / 12
	return l:year
endfunction

function! datetime#day2sec(day)
	return a:day * 86400
endfunction

function! datetime#day2min(day)
	return a:day * 1440
endfunction

function! datetime#day2hour(day)
	return a:day * 24
endfunction

function! datetime#day2month(day)
	return a:day / 30
endfunction

function! datetime#day2year(day)
	return datetime#day2month(a:day) / 12
endfunction

function! datetime#month2sec(month)
	return a:month * 2592000
endfunction

function! datetime#month2min(month)
	return a:month * 43200
endfunction

function! datetime#month2hour(month)
	return a:month * 720
endfunction

function! datetime#month2day(month)
	return a:month * 30
endfunction

function! datetime#month2year(month)
	return a:month / 12
endfunction

function! datetime#year2sec(year)
	return a:year * 31536000
endfunction

function! datetime#year2min(year)
	return a:year * 525600
endfunction

function! datetime#year2hour(year)
	return a:year * 21900
endfunction

function! datetime#year2month(year)
	return a:year * 12
endfunction

function! datetime#year2day(year)
	return a:year * 365
endfunction
