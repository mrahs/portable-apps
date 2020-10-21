${SegmentFile}

${SegmentInit}
    ${If} $Bits = 64
        ${SetEnvironmentVariablesPath} JH $EXEDIR\..\CommonFiles\Java64
    ${Else}
        ${SetEnvironmentVariablesPath} JH $EXEDIR\..\CommonFiles\Java
    ${EndIf}
!macroend