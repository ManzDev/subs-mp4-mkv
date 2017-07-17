; -i archivo de entrada (video, subs-en, subs-es)
; -map (0 = video, 1 = subs-en, 2 = subs-es)
; -metadata:stream:subtitle:0 -> subs-en 
; -metadata:stream:subtitle:1 -> subs-es
; -disposition:s:0 default ----> pone el subtitulo 0 (en) por defecto
ffmpeg -i %1 -i %2 -i %3 -map 0 -map 1 -map 2 -metadata:s:s:0 language=en -metadata:s:s:1 language=es -disposition:s:0 default output-sub.mkv