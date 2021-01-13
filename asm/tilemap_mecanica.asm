

// INTRUCOES ORIGINAIS DE ONDE EU COLOQUEI O DESVIO
    jmp ($0000)
   


//------------------------------DMA TILEMAP-------------------------------------


    ldx     #($09A0>>1)   // VRAM Dest* | endereço de destino do grafico na VRAM (aonde vou sobreescrever)
    stx     VDP_DATA
                          // USAR QUANDO BUGAR A ROTINA
    //rep     #$20          // Coloca em MODO 16 BITS o processador

    lda     #$0001        // DMA Mode
    sta     REG_DMAP0
    lda     #$0018        // DMA Dest
    sta     REG_BBAD0
    ldx     #$9E00       // DMA Src* | Endereço de SNES do gráfico na ROM
    stx     REG_A1T0L
    lda     #$002D        // DMA Bank*| Banco de SNES do gráfico na ROM
    sta     REG_A1B0
    ldx     #(tilemap_mecanica_end-tilemap_mecanica)        // Size* | Tamanho do grafico FIM DO GRAFICO - INICIO DO GRAFICO
    stx     REG_DAS0L

    lda     #$0001        // DMA Start
    sta     REG_MDMAEN
	
                          // USAR QUANDO BUGAR A ROTINA
    //sep     #$10          // Coloca em MODO 16 BITS o processador // brk - modo errado

    // RETORNO
    jml     $00af94