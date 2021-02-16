
//macro seek(variable offset) {
//  origin ((offset & $7F0000) >> 1) | (offset & $7FFF)
//  base offset
//}
//
//seek($37A800); Start:
rep #$30
  SNES_INIT(SLOWROM)                  
splash_one:
ClearVRAM(limpa_vram, $F800, $400, 0) // - limpa a vram
LoadPAL(paleta_splash_one, $00, (paleta_splash_one_end-paleta_splash_one), 0)  // Carrega a paleta na VRAM
LoadVRAM(gfx_splash_one, $0000, (gfx_splash_one_end-gfx_splash_one), 0)     // Carrwga o gráfico na VRAM
LoadVRAM(tilemap_splash_one, $f800, (tilemap_splash_one_end-tilemap_splash_one), 0) // CarrEga Tilemap do gráfico na VRAM
LoadVRAM(gfx_splash_two, $6000, (gfx_splash_two_end-gfx_splash_two), 0)     // Carrwga o gráfico na VRAM

configura_modo_video: //-- Configura o modo de vídeo (2bpp, 4bpp, 8bpp,)
  lda.b #%00001001            
  sta.w REG_BGMODE

configura_bg1:
  lda.b #%11111101            
  sta.w REG_BG1SC    // --- Configura Tilemap
  lda.b #%00000000            
  sta.w REG_BG12NBA  // --- Configura os Tiles
  lda.w $0000
  sta.w REG_BG1VOFS
  lda.b #%00010001            
  sta.w REG_TM       // --- Configura BG1 como tela principal 
  stz.w REG_BG1HOFS  // --- Reseta Scroll Horizontal
  stz.w REG_BG1HOFS
  stz.w REG_BG1VOFS  // --- Reseta Scroll Vertical
  stz.w REG_BG1VOFS          

tempo_exibicao:
  FadeIN()           
  rep #$20
  lda.w #$ffff
compara_tempo_exibicao:  
  cmp #$0000
  beq tempo_exibicao_001
  dec
  WaitHV()
  bra compara_tempo_exibicao
tempo_exibicao_001:
  rep #$20
  lda.w #$7FFF
compara_tempo_exibicao_001: 
  cmp #$0000
  beq sair_splash
  dec
  WaitHV()
  bra compara_tempo_exibicao_001                                
sair_splash:  
  sep #$20
  FadeOUT()
  WaitNMI()
  LoadVRAM(tilemap_splash_two, $f800, (tilemap_splash_two_end-tilemap_splash_two), 0) // CarrEga Tilemap do gráfico na VRAM
  LoadPAL(paleta_splash_two, $00, (paleta_splash_two_end-paleta_splash_two), 0)  // Carrega a paleta na VRAM
configura_modo_video_2: //-- Configura o modo de vídeo (2bpp, 4bpp, 8bpp,)
  sep #$20
  lda.b #%00000011            
  sta.w REG_BG12NBA  // --- Configura os Tiles
  lda.b #%00000001            
  sta.w REG_TM       // --- Configura BG1 como tela principal 

tempo_exibicao_2:
  FadeIN()           
  rep #$20
  lda.w #$ffff
compara_tempo_exibicao_2:  
  cmp #$0000
  beq tempo_exibicao_002
  dec
  WaitHV()
  bra compara_tempo_exibicao_2
tempo_exibicao_002:
  rep #$20
  lda.w #$7FFF
compara_tempo_exibicao_002: 
  cmp #$0000
  beq sair_splash_2
  dec
  WaitHV()
  bra compara_tempo_exibicao_002                                
sair_splash_2:  
  //sep #$20
  //FadeOUT()
  //WaitNMI()
  //FadeIN()
  //rep #$30


//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//------------------------  Clean the VRAM  ---------------------------------
//------------------------  Limpar a VRAM  ----------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
limpa_vram:
  dw $0000
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx




//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//----------------------------  Splash  -------------------------------------
//----------------------  Tela de introdução  -------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//---------------------  Splash's First Screen  -----------------------------
//--------------------  Primeira Tela da Splash   ---------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
paleta_splash_one:
  insert "pal\palette_splash1.bin"
paleta_splash_one_end:  
tilemap_splash_one:
  insert "tilemap\tilemap_splash1.bin"
tilemap_splash_one_end:
gfx_splash_one:
  insert "gfx\splash_1.bin"
gfx_splash_one_end: 
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//---------------------  Splash Second Screen  ------------------------------
//--------------------  Segunda Tela da Splash  -----------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
paleta_splash_two:
  insert "pal\palette_splash2.bin"
paleta_splash_two_end: 
tilemap_splash_two:
  insert "tilemap\tilemap_splash2.bin"
tilemap_splash_two_end:  
gfx_splash_two:
  insert "gfx\splash_2.bin"
gfx_splash_two_end: 
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx





//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//-------------------    Animation Charge Bustes     ------------------------
//-----------  Animação do Carregamento da Buster do Megaman X   ------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//------------------------   First Frame   ----------------------------------
//-----------------------   Primeiro Frame   --------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
gfx_charge_frame_1_splash:
  insert "gfx\charge_frame_1_splash.bin"
gfx_charge_frame_1_splash_end:

charge_frame_1_tilemap:
  insert "tilemap\charge_frame_1_tilemap.bin"
charge_frame_1_tilemap_end:  

charge_frame_1_palette:
  insert "pal\charge_frame_1_palette.bin"
charge_frame_1_palette_end:
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//------------------------   Second Frame   ----------------------------------
//-----------------------   Segundo Frame   --------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
gfx_charge_frame_2_splash:
  insert "gfx\charge_frame_2_splash.bin"
gfx_charge_frame_2_splash_end:

charge_frame_2_tilemap:
  insert "tilemap\charge_frame_2_tilemap.bin"
charge_frame_2_tilemap_end:  

charge_frame_2_palette:
  insert "pal\charge_frame_2_palette.bin"
charge_frame_2_palette_end:
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//------------------------   Third Frame   ----------------------------------
//-----------------------   Terceiro Frame   --------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
gfx_charge_frame_3_splash:
  insert "gfx\charge_frame_3_splash.bin"
gfx_charge_frame_3_splash_end:

charge_frame_3_tilemap:
  insert "tilemap\charge_frame_3_tilemap.bin"
charge_frame_3_tilemap_end:  

charge_frame_3_palette:
  insert "pal\charge_frame_3_palette.bin"
charge_frame_3_palette_end:
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//-----------------------   Fourth Frame   ----------------------------------
//-----------------------   Quarto Frame   ----------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
gfx_charge_frame_4_splash:
  insert "gfx\charge_frame_4_splash.bin"
gfx_charge_frame_4_splash_end:

charge_frame_4_tilemap:
  insert "tilemap\charge_frame_4_tilemap.bin"
charge_frame_4_tilemap_end:  

charge_frame_4_palette:
  insert "pal\charge_frame_4_palette.bin"
charge_frame_4_palette_end:
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//-----------------------   Fifth Frame   -----------------------------------
//-----------------------   Quinto Frame   ----------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
gfx_charge_frame_5_splash:
  insert "gfx\charge_frame_5_splash.bin"
gfx_charge_frame_5_splash_end:

charge_frame_5_tilemap:
  insert "tilemap\charge_frame_5_tilemap.bin"
charge_frame_5_tilemap_end:  

charge_frame_5_palette:
  insert "pal\charge_frame_5_palette.bin"
charge_frame_5_palette_end:
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//------------------------   Sixth Frame   ----------------------------------
//------------------------   Sexto Frame   ----------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
gfx_charge_frame_6_splash:
  insert "gfx\charge_frame_6_splash.bin"
gfx_charge_frame_6_splash_end:

charge_frame_6_tilemap:
  insert "tilemap\charge_frame_6_tilemap.bin"
charge_frame_6_tilemap_end:  

charge_frame_6_palette:
  insert "pal\charge_frame_6_palette.bin"
charge_frame_6_palette_end:
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//-----------------------   Seventh Frame   ---------------------------------
//-----------------------   Sétimo Frame   ----------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
gfx_charge_frame_7_splash:
  insert "gfx\charge_frame_7_splash.bin"
gfx_charge_frame_7_splash_end:

charge_frame_7_tilemap:
  insert "tilemap\charge_frame_7_tilemap.bin"
charge_frame_7_tilemap_end:  

charge_frame_7_palette:
  insert "pal\charge_frame_7_palette.bin"
charge_frame_7_palette_end:
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//-----------------------   Eighth Frame   ----------------------------------
//-----------------------   Oitavo Frame   ----------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
gfx_charge_frame_8_splash:
  insert "gfx\charge_frame_8_splash.bin"
gfx_charge_frame_8_splash_end:

charge_frame_8_tilemap:
  insert "tilemap\charge_frame_8_tilemap.bin"
charge_frame_8_tilemap_end:  

charge_frame_8_palette:
  insert "pal\charge_frame_8_palette.bin"
charge_frame_8_palette_end:
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//-----------------------   Ninth Frame   -----------------------------------
//-----------------------   Nono Frame   ------------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
gfx_charge_frame_9_splash:
  insert "gfx\charge_frame_9_splash.bin"
gfx_charge_frame_9_splash_end:

charge_frame_9_tilemap:
  insert "tilemap\charge_frame_9_tilemap.bin"
charge_frame_9_tilemap_end:  

charge_frame_9_palette:
  insert "pal\charge_frame_9_palette.bin"
charge_frame_9_palette_end:
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//------------------------   Tenth Frame   ----------------------------------
//------------------------   Décimo Frame   ---------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
gfx_charge_frame_10_splash:
  insert "gfx\charge_frame_10_splash.bin"
gfx_charge_frame_10_splash_end:

charge_frame_10_tilemap:
  insert "tilemap\charge_frame_10_tilemap.bin"
charge_frame_10_tilemap_end:  

charge_frame_10_palette:
  insert "pal\charge_frame_10_palette.bin"
charge_frame_10_palette_end:
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//----------------------   Eleventh Frame   ---------------------------------
//-------------------   Décimo Primeiro Frame   -----------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
gfx_charge_frame_11_splash:
  insert "gfx\charge_frame_11_splash.bin"
gfx_charge_frame_11_splash_end:

charge_frame_11_tilemap:
  insert "tilemap\charge_frame_11_tilemap.bin"
charge_frame_11_tilemap_end:  

charge_frame_11_palette:
  insert "pal\charge_frame_11_palette.bin"
charge_frame_11_palette_end:
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

