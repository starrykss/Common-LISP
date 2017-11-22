International Allegro CL Free Express Edition
10.0 [Windows] (Aug 15, 2016 10:51)
Copyright (C) 1985-2015, Franz Inc., Oakland, CA, USA.  All Rights Reserved.

This development copy of Allegro CL is licensed to:
   Allegro CL 10.0 Express user

Loaded options from C:\Users\kss34\OneDrive\Documents\allegro-ide-options.cl.

;; Optimization settings: safety 1, space 1, speed 1, debug 2.
;; For a complete description of all compiler switches given the current optimization settings evaluate (EXPLAIN-COMPILER-SETTINGS).

[changing package from "COMMON-LISP-USER" to "COMMON-GRAPHICS-USER"]
CG-USER(1): 
;; Autoloading locale from #P"C:\\acl100express\\locales\\ko_KR"
d
Error: Attempt to take the value of the unbound variable `D'.
[condition type: UNBOUND-VARIABLE]
CG-USER(2): (cons 'rice '(and beans))
(RICE AND BEANS)
CG-USER(3): (cons 'rice nil)
(RICE)
CG-USER(4): (append '(rice) '(and beans))
(RICE AND BEANS)
CG-USER(5): (list 'rice 'and 'beans)
(RICE AND BEANS)
CG-USER(6): (random 10)
5
CG-USER(7): (expt 4 2)
16
CG-USER(8): (sin pi)
1.2246063538223773d-16
CG-USER(9): (min 2 3 4)
2
CG-USER(10): (max 2 3 4)
4
CG-USER(11): (abs -3)
3
CG-USER(12): (sqrt 4)
2.0
CG-USER(13): (round 4.1)
4
0.099999905
CG-USER(14): (rem 11 5)
1
CG-USER(15): (numberp 2)
T
CG-USER(16): (symbolp 'cat)
T
CG-USER(17): (zerop 0)
T
CG-USER(18): (oddp 27)
T
CG-USER(19): (evenp 27)
NIL
CG-USER(20): (> 10 20)
NIL
CG-USER(21): (< 10 20)
T
CG-USER(22): (= 3 3.0)
T
CG-USER(23): (equalp "foo bar" "Foo BAR")
T
CG-USER(24): (setf x '(a b c))
(A B C)
CG-USER(25): (setf y '(1 2 3))
(1 2 3)
CG-USER(26): (first x)
A
CG-USER(27): (second x)
B
CG-USER(28): (third x)
C
CG-USER(29): (nth 0 x)
A
CG-USER(30): (rest x)
(B C)
CG-USER(31): (last x)
(C)
CG-USER(32): (length x)
3
CG-USER(33): (reverse x)
(C B A)
CG-USER(34): (setf x '(a b c))
(A B C)
CG-USER(35): (setf y '(1 2 3))
(1 2 3)
CG-USER(36): (cons 0 y)
(0 1 2 3)
CG-USER(37): (append x y)
(A B C 1 2 3)
CG-USER(38): (list x y)
((A B C) (1 2 3))
CG-USER(39): (null nil)
T
CG-USER(40): (null x)
NIL
CG-USER(41): (listp x)
T
CG-USER(42): (consp x)
T
CG-USER(43): (nth 1 x)
B
CG-USER(44): (rest x)
(B C)
CG-USER(45): (last y)
(3)
CG-USER(46): (last x)
(C)
CG-USER(47): (reverse x)
(C B A)
CG-USER(48): (rest x)
(B C)
CG-USER(49): (rest (reverse x))
(B A)
CG-USER(50): (rest (reverse x))
(B A)
CG-USER(51): (reverse (rest (reverse x)))
(A B)
CG-USER(52): 
; Loading C:\Users\kss34\Desktop\20170316.cl

; Loading C:\Users\kss34\Desktop\20170316.cl
CG-USER(52): (myfirst '(a b c))
A
CG-USER(53): 
;; Connecting to http://franz.com/ftp/pub/patches/.
;; Checking for new update.fasl.
;; Retrieving list of available patches.
;; Checking which patches need to be downloaded.
; Autoloading for EXCL::GRAY-OPEN:
; Fast loading from bundle code\streamc.fasl.
;   Fast loading from bundle code\efft-949-base.fasl.
;   Fast loading from bundle code\efft-unicode-base.fasl.
;   Fast loading from bundle code\efft-fat-le-base.fasl.
;   Fast loading from bundle code\efft-fat-base.fasl.
;   Fast loading from bundle code\efft-utf8-base.fasl.
;   Fast loading from bundle code\efft-void.fasl.
;   Fast loading from bundle code\efft-latin1-base.fasl.
downloading: code\osi.005 (compressed)
downloading: code\aserve.007 (compressed)
downloading: code\debug.002 (compressed)
downloading: code\net-xml-generator.001 (compressed)
downloading: code\aserve.009 (compressed)
downloading: code\streamc.001 (compressed)
downloading: code\webactions.003 (compressed)
downloading: code\sax.003 (compressed)
downloading: code\webactions.002 (compressed)
downloading: code\cg-fill-texture.001 (compressed)
downloading: code\aserve.008 (compressed)
downloading: code\osi.004 (compressed)
downloading: code\sock.001 (compressed)
downloading: code\fileutil.002 (compressed)
downloading: code\aserve.011 (compressed)
downloading: code\acache-3.0.9.fasl (compressed)
downloading: code\asdf.002 (compressed)
downloading: code\proc2common.003 (compressed)
downloading: code\net-xml-generator.002 (compressed)
downloading: code\DESCRIPTIONS
downloading: code\cg-web-browser.001 (compressed)
downloading: code\aserve.010 (compressed)
downloading: code\loop.001 (compressed)
downloading: code\cg-curve.001 (compressed)
downloading: code\osi.006 (compressed)
downloading: acache-changelog.txt (compressed)
downloading: LOG.txt (compressed)
downloading: update\pka017.001 (compressed)
downloading: update\pka020.001 (compressed)
downloading: update\pka018.001 (compressed)
downloading: update\pka021.001 (compressed)
downloading: update\pka023.001 (compressed)
downloading: update\pkk004.001 (compressed)
downloading: update\pka022.001 (compressed)
downloading: update\pkk005.001 (compressed)
downloading: update\DESCRIPTIONS
downloading: update\pka019.001 (compressed)
downloading: acli10041t3.dll (compressed)
downloading: jlinker\jl-config.cl (compressed)
downloading: acache-versions.txt (compressed)
;; Creating CRC cache (please wait)...done.
NOTE: The installation of patches is not yet complete.  You must rebuild your existing Lisp images to finish the patch installation process.

To rebuild your images so they contain the just downloaded patches, exit this Lisp and run `update.exe' in C:\acl100express\.

CG-USER(53): 