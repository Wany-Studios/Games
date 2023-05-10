audio_stop_sound(s_esperancabrilha);
if !room = interior_montanha or rm_teleporte{audio_pause_all()}
oSFX.s_interior_montanha = true;
if audio_is_playing(oSFX.s_interior_montanha){oSFX.s_interior_montanha = false;}