audio_stop_sound(s_piano_nathan);
if !room = rm_cemiterio_ladofora or rm_caverninha_cemiterio {audio_pause_all()}
oSFX.musica_cemitery = true;
if audio_is_playing(s_cemitery) {oSFX.musica_cemitery = false;}
