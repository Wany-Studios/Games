audio_stop_sound(s_interiormontanha);
audio_stop_sound(s_esperancabrilha);
if !room = interior_montanha2 {audio_pause_all()}
oSFX.labirebas = true;
if audio_is_playing(oSFX.labirebas){oSFX.labirebas = false;}