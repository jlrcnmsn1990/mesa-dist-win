@setlocal
@rem ABI format conversions for Mingw
@set mingwabi=mingw-w64-x86_64
@IF %abi%==x86 set mingwabi=mingw-w64-i686

@rem Load MSYS2 environment
@set msysstate=1
@set msysloc=%devroot%\msys64
@IF NOT EXIST %msysloc% set msysloc=%devroot%\msys32
@IF NOT EXIST %msysloc% set msysstate=0
@endlocal&set mingwabi=%mingwabi%&set msysstate=%msysstate%&set msysloc=%msysloc%
