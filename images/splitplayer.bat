magick player6.png +repage -crop 43x47+0+0   player_24.png
magick player6.png +repage -crop 39x47+42+0  player_25.png
magick player6.png +repage -crop 46x47+80+0  player_26.png
magick player6.png +repage -crop 51x47+125+0 player_27.png
magick player6.png +repage -crop 51x47+175+0 player_28.png
magick player6.png +repage -crop 51x47+225+0 player_29.png
magick player6.png +repage -crop 56x47+275+0 player_30.png
magick player6.png +repage -crop 53x47+330+0 player_31.png
magick player6.png +repage -crop 51x47+382+0 player_00.png
magick player6.png +repage -crop 54x47+432+0 player_01.png
magick player6.png +repage -crop 52x47+485+0 player_02.png
magick player6.png +repage -crop 55x47+536+0 player_03.png
magick player6.png +repage -crop 51x47+590+0 player_04.png
magick player6.png +repage -crop 48x47+640+0 player_05.png
magick player6.png +repage -crop 45x47+687+0 player_06.png
magick player6.png +repage -crop 47x47+731+0 player_07.png

magick player7.png +repage -crop 45x47+0+0   player_08.png
magick player7.png +repage -crop 39x47+44+0  player_09.png
magick player7.png +repage -crop 46x47+84+0  player_10.png
magick player7.png +repage -crop 49x47+129+0 player_11.png
magick player7.png +repage -crop 52x47+177+0 player_12.png
magick player7.png +repage -crop 53x47+228+0 player_13.png
magick player7.png +repage -crop 54x47+280+0 player_14.png
magick player7.png +repage -crop 54x47+333+0 player_15.png
magick player7.png +repage -crop 50x47+386+0 player_16.png
magick player7.png +repage -crop 54x47+435+0 player_17.png
magick player7.png +repage -crop 53x47+488+0 player_18.png
magick player7.png +repage -crop 53x47+540+0 player_19.png
magick player7.png +repage -crop 52x47+592+0 player_20.png
magick player7.png +repage -crop 49x47+643+0 player_21.png
magick player7.png +repage -crop 46x47+691+0 player_22.png
magick player7.png +repage -crop 52x47+736+0 player_23.png

magick player_*.png -trim player_%%02d.png

magick composite -geometry +17+19 player_00.png trans72.png player_00.png
magick composite -geometry +15+18 player_01.png trans72.png player_01.png
magick composite -geometry +14+17 player_02.png trans72.png player_02.png
magick composite -geometry +15+16 player_03.png trans72.png player_03.png
magick composite -geometry +15+17 player_04.png trans72.png player_04.png
magick composite -geometry +14+17 player_05.png trans72.png player_05.png
magick composite -geometry +14+16 player_06.png trans72.png player_06.png
magick composite -geometry +16+17 player_07.png trans72.png player_07.png
magick composite -geometry +17+20 player_08.png trans72.png player_08.png
magick composite -geometry +17+18 player_09.png trans72.png player_09.png
magick composite -geometry +14+17 player_10.png trans72.png player_10.png
magick composite -geometry +11+17 player_11.png trans72.png player_11.png
magick composite -geometry +9+16 player_12.png trans72.png player_12.png
magick composite -geometry +7+16 player_13.png trans72.png player_13.png
magick composite -geometry +6+17 player_14.png trans72.png player_14.png
magick composite -geometry +4+18 player_15.png trans72.png player_15.png
magick composite -geometry +7+19 player_16.png trans72.png player_16.png
magick composite -geometry +5+19 player_17.png trans72.png player_17.png
magick composite -geometry +6+17 player_18.png trans72.png player_18.png
magick composite -geometry +7+15 player_19.png trans72.png player_19.png
magick composite -geometry +9+12 player_20.png trans72.png player_20.png
magick composite -geometry +11+11 player_21.png trans72.png player_21.png
magick composite -geometry +14+10 player_22.png trans72.png player_22.png
magick composite -geometry +17+9 player_23.png trans72.png player_23.png
magick composite -geometry +17+10 player_24.png trans72.png player_24.png
magick composite -geometry +16+9 player_25.png trans72.png player_25.png
magick composite -geometry +14+9 player_26.png trans72.png player_26.png
magick composite -geometry +14+10 player_27.png trans72.png player_27.png
magick composite -geometry +15+11 player_28.png trans72.png player_28.png
magick composite -geometry +15+15 player_29.png trans72.png player_29.png
magick composite -geometry +14+17 player_30.png trans72.png player_30.png
magick composite -geometry +16+19 player_31.png trans72.png player_31.png

magick convert player_*.png +append player.png
