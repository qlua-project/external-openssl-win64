openssl

Compilation Notes

https://github.com/openssl/openssl/blob/master/NOTES-WINDOWS.md
https://github.com/openssl/openssl/blob/master/INSTALL.md#windows

Default Compiler Options

"cl" /Zs /showIncludes /Zi /Fdossl_static.pdb /Gs0 /GF /Gy /MD /W3 /wd4090 /nologo /O2
  -D"L_ENDIAN" -D"OPENSSL_PIC"
  -D"OPENSSL_BUILDING_OPENSSL"
  -D"OPENSSL_SYS_WIN32"
  -D"WIN32_LEAN_AND_MEAN"
  -D"UNICODE"
  -D"_UNICODE"
  -D"_CRT_SECURE_NO_DEPRECATE"
  -D"_WINSOCK_DEPRECATED_NO_WARNINGS"
  -D"NDEBUG"
  -DAES_ASM -DBSAES_ASM -DCMLL_ASM -DECP_NISTZ256_ASM -DGHASH_ASM -DKECCAK1600_ASM -DMD5_ASM
  -DOPENSSL_BN_ASM_GF2m -DOPENSSL_BN_ASM_MONT -DOPENSSL_BN_ASM_MONT5
  -DOPENSSL_CPUID_OBJ
  -DOPENSSL_IA32_SSE2
  -DOPENSSL_USE_APPLINK
  -DPOLY1305_ASM -DRC4_ASM -DSHA1_ASM -DSHA256_ASM -DSHA512_ASM -DVPAES_ASM -DWHIRLPOOL_ASM -DX25519_ASM

  -I"." -I"include" -I"providers\common\include" -I"providers\implementations\include"
  -D"OPENSSLDIR=\"C:\\Program Files\\Common Files\\SSL\""
  -D"ENGINESDIR=\"C:\\Program Files\\OpenSSL\\lib\\engines-3\""
  -D"MODULESDIR=\"C:\\Program Files\\OpenSSL\\lib\\ossl-modules\""


"cl" /Zs /showIncludes /Zi /Fdapp.pdb /Gs0 /GF /Gy /MD /W3 /wd4090 /nologo /O2
  -D"OPENSSL_BUILDING_OPENSSL"
  -D"OPENSSL_SYS_WIN32"
  -D"WIN32_LEAN_AND_MEAN"
  -D"UNICODE" -D"_UNICODE"
  -D"_CRT_SECURE_NO_DEPRECATE" -D"_WINSOCK_DEPRECATED_NO_WARNINGS"
  -D"NDEBUG"

  -I"include" -I"apps\include"
