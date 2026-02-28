"relinks
highlight link  pythonBuiltin     Identifier
highlight link  pythonError       Error
highlight link  pythonSpaceError  pythonError

"""revise
syntax  keyword  pythonBuiltin      self other __name__ __init__ __dict__ __doc__ __package__ __loader__ __spec__ __file__ __cached__ __builtins__ lambda _abc _ast _codecs _collections _functools _imp _io _locale _operator _signal _sre _stat _string _symtable _thread _tracemalloc _warnings _weakref atexit builtins errno faulthandler gc itertools marshal posix pwd sys time xxsubtype
syntax  keyword  pythonConditional  match
syntax  keyword  pythonLabel        case
syntax  keyword  pythonType         bool bytearray bytes complex deque defaultdict dict float frozenset int list memoryview object reversed set slice str tuple type
syntax  keyword  pythonTyping       Self AbstractSet Annotated Any AsyncContextManager AsyncGenerator AsyncGeneratorType AsyncIterable AsyncIterator Awaitable BinaryIO BuiltinFunctionType BuiltinMethodType ByteString Callable CellType ChainMap ClassMethodDescriptorType ClassVar CodeType Collection Concatenate Container ContextManager Coroutine CoroutineType Counter DefaultDict Deque Dict DynamicClassAttribute EllipsisType Final ForwardRef FrameType FrozenSet FunctionType Generator GeneratorType Generic GenericAlias GetSetDescriptorType Hashable IO ItemsView Iterable Iterator KeysView LambdaType List Literal Mapping MappingProxyType MappingView Match MemberDescriptorType MethodDescriptorType MethodType MethodWrapperType ModuleType MutableMapping MutableSequence MutableSet NewType NoneType NoReturn NotImplementedType Optional OrderedDict ParamSpec ParamSpecArgs ParamSpecKwargs Pattern Reversible Sequence Set SimpleNamespace Sized Text TextIO TracebackType Tuple Type TypeAlias TypeGuard TypeVar Union UnionType UserDict UserList UserString ValuesView WrapperDescriptorType
syntax  keyword  pythonModules      __future__ abc aifc antigravity argparse array ast asynchat asyncio asyncore audioop autocommand backports base64 bdb binascii binhex bisect bz2 cProfile calendar cgi cgitb chunk cmath cmd code codecs codeop collections colorsys compileall concurrent configparser contextlib contextvars copy copyreg crypt csv ctypes curses dataclasses datetime dbm decimal difflib dis distutils doctest email encodings ensurepip enum fcntl filecmp fileinput fnmatch fractions ftplib functools genericpath getopt getpass gettext glob graphlib grp gzip hashlib heapq hmac html http idlelib imaplib imghdr imp importlib importlib_metadata inflect inspect io ipaddress json keyword lib2to3 linecache locale logging lzma mailbox mailcap math mimetypes gmmap modulefinder more_itertools multiprocessing netrc nis nntplib ntpath nturl2path numbers opcode operator optparse os ossaudiodev pathlib pdb pickle pickletools pipes pkg_resources pkgutil platform platformdirs plistlib poplib posixpath pprint profile pstats pty py_compile pyclbr pydoc pydoc_data pyexpat pylab queue quopri random re readline reprlib resource rlcompleter runpy sched secrets select selectors shelve shlex shutil signal site smtpd smtplib sndhdr socket socketserver spwd sqlite3 sre_compile sre_constants sre_parse ssl stat statistics string stringprep struct subprocess sunau symtable sysconfig syslog tabnanny tarfile telnetlib tempfile termios test textwrap this threading timeit tkinter token tokenize trace traceback tracemalloc tty turtle turtledemo typeguard types typing typing_extensions unicodedata unittest urllib uu uuid venv warnings wave weakref webbrowser wsgiref xdrlib xml xmlrpc xxlimited xxlimited_35 zipapp zipfile zipimport zipp zlib zoneinfo
syntax  keyword  pythonPackage      PIL PyQt6 _brotli _fit_dchi2 _fit_pdf artist brotli contourpy cycler dateutil fontTools gvar kiwisolver lines lsqfit matplotlib mkl mkl_fft mkl_random nonlinear_fit numpy packaging patches pip pyparsing pyplot scipy setuptools sipbuild six tomli tornado unicodedata2 vegas wheel
syntax  match    pythonDotin        /\<__\(name\|init\|dict\|doc\|package\|loader\|spec\|file\|cashed\|builtins\)__\>/
syntax  match    pythonFormat       /{:[' #0*]\=[\^<>]\=[-+]\=\(\d*\|{}\)[,_]\=\(\.\(\d\+\|{}\)\)\=[bdioxXfFeEgGcsn]\=}/  display  contained  containedin=pythonString,pythonRawString
syntax  match    pythonFormatC      /%\(%\|[-+ #0]*\(\d*\|\*\)\(\.\(\d*\|\*\)\)\=[hlL]\=[adiuoxXfFeEgGcs]\)/             display  contained  containedin=pythonString,pythonRawString,pythonFString,pythonRawFString
highlight link   pythonModules      pythonBuiltin
highlight link   pythonLabel        Label
highlight link   pythonType         Type
highlight link   pythonTyping       pythonType
highlight link   pythonPackage      pythonFunction
highlight link   pythonDotin        pythonBuiltin
highlight link   pythonFormat       Format
highlight link   pythonFormatC      pythonFormat

""""""customs
syntax  match   pythonFEscape     /[^{]\=\zs\%({{\)\+\ze{\=/  contained
syntax  match   pythonFEscape     /}\=\zs\%(}}\)\+\ze[^}]/    contained
syntax  match   pythonSlashError  /\\/                        contained
syntax  region  pythonFString     matchgroup=pythonQuotes        start=/[uU]\=[fF]\z(['"]\)/                         skip=/\\\\\|\\\z1/   end=/\z1/                       contains=pythonEscape,pythonFEscape,pythonFmtStr,@Spell
syntax  region  pythonFString     matchgroup=pythonTripleQuotes  start=/[uU]\=[fF]\z('''\|"""\)/                                          end=/\z1/   keepend             contains=pythonEscape,pythonFormat,pythonFmtStr,pythonSpaceError,pythonDoctest,@Spell
syntax  region  pythonRawFString  matchgroup=pythonQuotes        start=/[uU]\=\%([rR][fF]\|[fF][rR]\)\z(['"]\)/      skip=/\\\\\|\\\z1/   end=/\z1/                       contains=pythonFEscape,pythonFmtStr,@Spell
syntax  region  pythonRawFString  matchgroup=pythonTripleQuotes  start=/[uU]\=\%([rR][fF]\|[fF][rR]\)\z('''\|"""\)/                       end=/\z1/   keepend             contains=pythonFEscape,pythonFmtStr,pythonSpaceError,pythonDoctest,@Spell
syntax  region  pythonFmtStr      matchgroup=pythonBraces        start=/{\ze\%([^{}]\|\(['"]\).*\1\)\+}/             skip=/\(['"]\).*\1/  end=/}/              contained  contains=ALLBUT,pythonDotin,pythonFunction,pythonEscape,pythonFormat,pythonFormatC,pythonFormatEsc
syntax  region  pythonFmtStr      matchgroup=pythonBraceError    start=/{\ze\s*}/                                                         end=/}\ze/  keepend  contained
highlight link  pythonFEscape     pythonEscape
highlight link  pythonSlashError  pythonError
highlight link  pythonFString     pythonString
highlight link  pythonRawFString  pythonRawString
highlight link  pythonBraces      pythonOperator
highlight link  pythonBraceError  pythonError

"""revise2
syntax   match  pythonFormatEsc  /{{:[' #0*]\=[\^<>]\=[-+]\=\(\d*\|{}\)[,_]\=\(\.\(\d\+\|{}\)\)\=[bdioxXfFeEgGcsn]\=}}/  display  contained  containedin=pythonFString,pythonRawFString
syntax   match  pythonFormatStr  /:[' #0*]\=[\^<>]\=[-+]\=\(\d*\|{}\)[,_]\=\(\.\(\d\+\|{}\)\)\=[bdioxXfFeEgGcsn]\=\ze}/  display  contained  containedin=pythonFmtStr
highlight link  pythonFormatEsc  pythonFormat
highlight link  pythonFormatStr  pythonFormat
