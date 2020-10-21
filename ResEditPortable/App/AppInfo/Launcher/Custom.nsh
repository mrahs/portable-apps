${SegmentFile}

${SegmentInit}
    ${If} $Bits = 64
        ${SetEnvironmentVariablesPath} BITS 64
    ${Else}
        ${SetEnvironmentVariablesPath} BITS 32
    ${EndIf}
!macroend