//variavel para volume 
var _sfxvol = global.sfx_vol * global.master_vol;

//som de pegar item
if picksnd == true
{
	//toca o som
	var _snd = audio_play_sound(s_hit, 8, false);
	audio_sound_gain(_snd, _sfxvol, 0);
	
	//reseta a variavel 
	picksnd = false;
}

//lista de todas as variaveis com seus respectivos audios.
if buttonpresssnd == true
{
 	var _snd = audio_play_sound(s_pa1, 8, false);
	audio_sound_gain(_snd, _sfxvol, 0);
	buttonpresssnd = false;
}

if buttonreleasesnd == true
{
	var _snd = audio_play_sound(s_batidinha, 8, false);
	audio_sound_gain(_snd, _sfxvol, 0);
	
	 
	buttonreleasesnd = false;
}
if channelingmana == true
{
 	var _snd = audio_play_sound(s_channelingmana, 8, false);
	audio_sound_gain(_snd, _sfxvol, 0);
	channelingmana = false;
}

if s_pianocemitery == true
{
 	var _snd = audio_play_sound(s_piano_nathan, 8, true);
	audio_sound_gain(_snd, _sfxvol, 0);
	s_pianocemitery = false;
}

if musica_esperanca == true
{
 	var _snd = audio_play_sound(s_esperancabrilha, 8, true);
	audio_sound_gain(_snd, _sfxvol, 0);
	musica_esperanca = false;
}

if musica_crypta == true
{
 	var _snd = audio_play_sound(s_cemitery, 8, true);
	audio_sound_gain(_snd, _sfxvol, 0);
	 musica_crypta = false;
}

if musica_cemitery == true
{
 	var _snd = audio_play_sound(s_crypta, 8, true);
	audio_sound_gain(_snd, _sfxvol, 0);
	musica_cemitery = false;
}

if s_interior_montanha == true
{
 	var _snd = audio_play_sound(s_interiormontanha, 8, true);
	audio_sound_gain(_snd, _sfxvol, 0);
	s_interior_montanha = false;
}

if s_dia1 == true
{
 	var _snd = audio_play_sound(s_casadia1, 8, true);
	audio_sound_gain(_snd, _sfxvol, 0);
	s_dia1 = false;
}

if s_dia2 == true
{
 	var _snd = audio_play_sound(s_casadia2, 8, true);
	audio_sound_gain(_snd, _sfxvol, 0);
	s_dia2 = false;
}

if s_dia3 == true
{
 	var _snd = audio_play_sound(s_casadia3, 8, true);
	audio_sound_gain(_snd, _sfxvol, 0);
	s_dia3 = false;
}

if s_dia4 == true
{
 	var _snd = audio_play_sound(s_casadia4, 8, true);
	audio_sound_gain(_snd, _sfxvol, 0);
	s_dia4 = false;
}

if s_dia5 == true
{
 	var _snd = audio_play_sound(s_casadia5, 8, true);
	audio_sound_gain(_snd, _sfxvol, 0);
	s_dia5 = false;
}

if s_dia6 == true
{
 	var _snd = audio_play_sound(s_casadia6, 8, true);
	audio_sound_gain(_snd, _sfxvol, 0);
	s_dia6 = false;
}

if labirebas == true
{
 	var _snd = audio_play_sound(s_labirebas, 8, true);
	audio_sound_gain(_snd, _sfxvol, 0);
	labirebas = false;
}



