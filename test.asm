ORG     0x100

START:
        MOVLW   0xB5
        MOVWF   0x20
        MOVLW   0x91
        MOVWF   0x21
        MOVLW   0xF1
        MOVWF   0x22

        MOVLW   0x04
        MOVWF   0x04
        MOVLW   0xA2
        MOVWF   0x05  
        MOVLW   0x07
        MOVWF   0x06

        MOVF    0x20, W
        ADDWF   0x04, W
        MOVWF   0x50

        MOVF    0x21, W
        ADDWFC  0x05, W
        MOVWF   0x51

        MOVF    0x22, W
        ADDWFC  0x06, W
        MOVWF   0x52

DONE:
        BRA     DONE

        END
