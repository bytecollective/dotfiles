call Pl#Statusline(
	\ Pl#Match('bufname("%")', '\[LustyExplorer-Buffers\]'),
	\
	\ Pl#Segment(' %{"LustyExplorer"} ',
		\ Pl#HiCurrent(   Pl#FG(231, 0xffffff), Pl#BG(240, 0x585858), Pl#Attr('bold')),
		\ Pl#HiInsert(    Pl#FG(231, 0xffffff), Pl#BG( 31, 0x0087af), Pl#Attr('bold')),
		\ Pl#HiNonCurrent(Pl#FG(244, 0x808080), Pl#BG(234, 0x1c1c1c), Pl#Attr('bold'))
		\ ),
	\
	\ Pl#Segment('%< %{"Buffer list"}',
		\ Pl#HiCurrent(   Pl#FG(247, 0x9e9e9e), Pl#BG(236, 0x303030)),
		\ Pl#HiInsert(    Pl#FG(117, 0x87d7ff), Pl#BG( 24, 0x005f87)),
		\ Pl#HiNonCurrent(Pl#FG(244, 0x808080), Pl#BG(234, 0x1c1c1c))
		\ ),
	\
	\ Pl#Split(
		\ Pl#HiCurrent(   Pl#BG(236, 0x303030)),
		\ Pl#HiInsert(    Pl#BG( 24, 0x005f87)),
		\ Pl#HiNonCurrent(Pl#BG(234, 0x1c1c1c))
		\ )
	\ )
