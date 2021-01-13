//--------------------------------------------------------------------------//--------------------------------------------------------------------------//
//xxxxxxxxxxxxxxxx    Project Information in English    xxxxxxxxxxxxxxxxxxxx//xxxxxxxxxxx    Informações Sobre o Projeto em Português    xxxxxxxxxxxxxxx//
//--------------------------------------------------------------------------//--------------------------------------------------------------------------//
//xxxxxxxxxxxxxxxxxxxxxxxxxxxx    Game    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx//xxxxxxxxxxxxxxxxxxxxxxxxxxx    Projeto    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx//
//--------------------------------------------------------------------------//--------------------------------------------------------------------------//
//                      Game translation project:                           //                    Projeto de tradução do Jogo:                          //
//              Ganbare Goemon - Yuki hime Kyuushuutsu emaki                //              Ganbare Goemon - Yuki hime Kyuushuutsu emaki                //
//               of Super Nintendo for Brazilian Portuguese                 //              de Super Nintendo para o Português do Brasil                //                              
//--------------------------------------------------------------------------//--------------------------------------------------------------------------//
//xxxxxxxxxxxxxxxxxxxxxxxxxxx    Thanks    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx//xxxxxxxxxxxxxxxxxxxxxxxx    Agradecimentos    xxxxxxxxxxxxxxxxxxxxxxxxxxxx//
//--------------------------------------------------------------------------//--------------------------------------------------------------------------//
//    I have to thank Anime_World a lot, he is a Brazilian romhacker and    //     Eu tenhos que agradecer muito ao Anime_World, ele é um romhacker     //
//       my Sensei, thanks man, for putting up with me all this time.       // Brasilieiro e meu Sensei, obrigado man, por me aguentar todo esse tempo. //
//              Without him I wouldn't have made it this far.               //               Sem ele eu não teria chegado tão longe.                    //
//                                                                          //                                                                          //
//    I would also like to thank you for your great work on hacking and     //      Eu queria agradecer também ao grande trabalho no hacking e na       //
// translating this game through DDSTranslation, Tom, FlashPV, and Akira76. //   tradução desse jogo pelo DDSTranslation, Tom, FlashPV, e o Akira76.    //
//   Without their work, I would not have this project in progress today.   // Sem o trabalho deles eu não estaria hoje com esse projeto em andamento.  //
//--------------------------------------------------------------------------//--------------------------------------------------------------------------//
//xxxxxxxxxxxxxxxxxx    Distribution of Patch Asm    xxxxxxxxxxxxxxxxxxxxxxx//xxxxxxxxxxxxxxxxxx    Distribuição do Patch Asm    xxxxxxxxxxxxxxxxxxxxxxx//
//--------------------------------------------------------------------------//--------------------------------------------------------------------------//
//    In order to also help anyone who wants to take this game to their	    //    Com o objetivo de ajudar também quem desejar levar esse jogo para     //
//          native language, I am making this PATCH ASM available.			//       sua linguagem nátiva, estou disponíbilizando esse PATCH ASM.		//
//       I tried to make it as practical as possible, I also followed       //    Procurei deixar ele o mais prático possível, também seguimentei		//
//          a lot to try to make it easier for anyone to edit.				//   muita coisa para tentar deixar ele mais fácil pra qualquer pessoa		//
//           This is still an ongoing project, so a lot still				//    editar. Esse ainda é um projeto em andamento, então muita coisa       //
//                 needs to be done and also improved.                      //              precisa ser feita ainda e também melhorada.                 //
//--------------------------------------------------------------------------//--------------------------------------------------------------------------//
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//----------------    SYSTEM ARCHITECTURE: Super Nintendo   -----------------	
//---------------   ARQUITETURA DO SISTEMA: Super Nintendo   ----------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    arch snes.cpu
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//----------------------  ROM TYPE: little-endian   -------------------------
//--------------------  TIPO DA ROM: little-endian  -------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    endian lsb
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//-----------------------  Patched ROM: atched.smc   ------------------------
//--------------------  ROM Patcheada: patcheada.smc   ----------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    output "Ganbare_Goemon(BR).sfc",create
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//---------------------------  Original ROM   -------------------------------
//---------------------------  ROM Original   -------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    origin $00000000
	insert "Ganbare_Goemon(USA).sfc"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	


//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//--------------------       Constants        -------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    include "asm\Constantes.asm"
	include "asm\macro.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	






//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//-----------------------    Scripts     ------------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxxxxxx    Intro     xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//------------------   Pointers Table Intro   -------------------------------
	origin $02DA1F
    include "asm\pointers_intro.asm"	
//-------------------    Script Intro    ------------------------------------
	origin $017820
    include "scripts_ptbr\intro.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxxx    Cutscentes 1     xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//---------------   Pointers Table Cutscenes 1   ----------------------------
	//origin $02DA1F
    //include "asm\ponteiros_cutscenes1.asm"	
//------------------    Script Cutscenes 1   --------------------------------
	//origin $03FF40
    //include "scripts_ptbr\cutscenes1.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxxxx    History 1     xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//----------------   Pointers Table History 1   -----------------------------
	origin $013716
    include "asm\pointers_history1.asm"
//-------------------    Script History 1   ---------------------------------
    origin $180001
	include "scripts_ptbr\history1.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxxxx    History 2     xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//----------------   Pointers Table History 2   -----------------------------
	origin $00013716
    include "asm\pointers_history2.asm"
//-------------------    Script History 2   ---------------------------------
	origin $188001
    include "scripts_ptbr\history2.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxxx    History 3     xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//---------------   Pointers Table History 3   ------------------------------
	//origin $00013716
    //include "asm\pointers_history3.asm"
//------------------    Script History 3   ----------------------------------
	origin $190000
    include "scripts_ptbr\history3.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxx    Credits 1     xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//---------------   Pointers Table History 3   ------------------------------
	//origin $00013716
    //include "asm\pointers_credits1.asm"
//-----------------    Script Credits 1    ----------------------------------
	origin $03E2B0
    include "scripts_ptbr\credits1.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxx    Credits 2     xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//---------------   Pointers Table History 3   ------------------------------
	//origin $00013716
    //include "asm\pointers_credits2.asm"
//-----------------    Script Credits 2    ----------------------------------
	origin $03FE72
    include "scripts_ptbr\credits2.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



    


//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//----------------------    Graphics     ------------------------------------
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxx    Title of the tales    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//-----------------   Title of the tale/Aera 1    ---------------------------
    origin $108000
	insert "gfx_ptbr\title_tale1.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//-----------------   Title of the tale/Aera 2    ---------------------------	
	origin $109E00
	insert "gfx_ptbr\title_tale2.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxxx    End of Tales    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//------------------    End of Tale/Aera 1   --------------------------------	
	origin $117C00
	insert "gfx_ptbr\end_tale1.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//------------------    End of Tale/Aera 2   - ------------------------------	
	origin $120000
	insert "gfx_ptbr\end_tale2.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxxxxxx    Lotery    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
	origin $14C000
	insert "gfx_ptbr\lotery.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxxxxxx    Stores    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//------------------------    Store 1    ------------------------------------	
	origin $15BC00
	insert "gfx_ptbr\store1.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//------------------------    Store 2    ------------------------------------	
	origin $15FC00
	insert "gfx_ptbr\store2.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//------------------------    Store 3    ------------------------------------	
	origin $163C00
	insert "gfx_ptbr\store3.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxxx    Title Screen    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//------------------------    Logo     --------------------------------------	
	origin $174040
	insert "gfx_ptbr\logo.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//-------------------------   Title     -------------------------------------	
	origin $156000
	insert "gfx_ptbr\title.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	


//xxxxxxxxxxxxxxxxxxxxxxxxx    Area    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
	origin $110800
	insert "gfx_ptbr\area.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxx    Character Table    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//---------------------   Character Table 1  --------------------------------	
	//origin $125C00
	//insert "gfx_ptbr\character_table1.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//---------------------   Character Table 2  --------------------------------	
	//origin $12DC00
	//insert "gfx_ptbr\character_table2.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//---------------------   Character Table 3  --------------------------------	
	//origin $136000
	//insert "gfx_ptbr\character_table3.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//---------------------   Character Table 4  --------------------------------	
	//origin $13E000
	//insert "gfx_ptbr\character_table4.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//---------------------   Character Table 5  --------------------------------	
	//origin $146000
	//insert "gfx_ptbr\character_table5.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//---------------------   Character Table 6  --------------------------------	
	//origin $14E000
	//insert "gfx_ptbr\character_table6.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//---------------------   Character Table 7  --------------------------------	
	//origin $158000
	//insert "gfx_ptbr\character_table7.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxxxxxxx    Fonts    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//------------------------    Font 1     ------------------------------------
	origin $100000
	insert "gfx_ptbr\fonte1.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//------------------------    Font 2     ------------------------------------
	origin $102000
	insert "gfx_ptbr\fonte2.bin"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


//xxxxxxxxxxxxxxxxxxx    Tilemap Game Over    xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//-------------------   Tilemap Game Over 1    ------------------------------		
    origin $1694D8
	include "asm\game_over1.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
//-------------------   Tilemap Game Over 2    ------------------------------	
    origin $169518
	include "asm\game_over2.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	


//xxxxxxxxxxxxxxxxxx    Tilemap Title Screen    xxxxxxxxxxxxxxxxxxxxxxxxxxxxx	
    //origin $105000
	//include "asm\title.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	


//xxxxxxxxxxxxxx    Choice of Modes Screen Title    xxxxxxxxxxxxxxxxxxxxxxxxx	
//---------------------    Choice Menu     ----------------------------------
	//origin $0285BF // Endereço de Origem do Desvio Convertido do Endereço SNES
  	//jml    $2AE410 // Desvio
    
	origin $156210
endian msb
tilemap_option:
insert "tilemap\options.bin"
tilemap_option_end:
endian lsb

	origin $156410
include "asm\tilemap_options.asm"


	origin $84C0
	table "tables\tbl_option.tbl"

One_player:
	db "1 Jogador",$FF

Two_players:
	origin $84D1
	db "2 Jogadores",$FF
Continue:
	origin $84E2
	db "Continuar",$FF
Stereo:
	origin $84f7
	db "[Estéreo]",$FF
Mono:
	origin $8504
	db "[ Myno  ]",$FF

	origin $84b0
	db $09,$00,$0b,$0c,$0d,$0e,$0f,$10,$00,$11,$12,$12,$11,$FF
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx



//xxxxxxx Detour from the Cutscene Font/Desvio da Fonte das Cutscenes xxxxxxxx
//----------------------    Desvio da Fonte    -------------------------------

	origin $02D986 // Endereço de Origem do Desvio Convertido do Endereço SNES
  	jml    $20BC00 // Desvio
    
	origin $103000

desvio_font_cutscenes:
insert "gfx_ptbr\fonte_cutscenes.bin"
desvio_font_cutscenes_end:

	origin $103c00
include "asm\desvio_font_cutscenes.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx-



//xxxxxxxxx    Tilemap & Detour from the Mecanic Island Graphic    xxxxxxxxxxx
//-------------    Detour from the Mecanic Island Graphic    -----------------
//-----------------   Desvio do Gráfico Ilha Mecânica    ---------------------

	origin $1F805A // Endereço de Origem do Desvio Convertido do Endereço SNES
  	jml    $2D9C00 // Desvio
    
	origin $169A00

grafico_mecanica:
insert "gfx_ptbr\mecanica.bin"
grafico_mecanica_end:

	origin $169C00
include "asm\desvio_mecanica.asm"

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx-	
//------------    Tilemap from the Mecanic Island Graphic    -----------------
//----------------   Tilemap do Gráfico Ilha Mecânica    ---------------------

//	origin $002DEC // Endereço de Origem do Desvio Convertido do Endereço SNES
//  	jml    $2DA000 // Desvio
//    
//	origin $169E00
//
//tilemap_mecanica:
//insert "tilemap\mecanica.bin"
//tilemap_mecanica_end:
//
//	origin $16A000
//include "asm\tilemap_mecanica.asm"
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx-	


	

	
	
	
	
