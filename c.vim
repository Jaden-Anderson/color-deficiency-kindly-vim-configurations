syntax  keyword  cIdentify  main argc argv __VA_ARGS__ errno
syntax  keyword  cUniConst  F_OK X_OK W_OK R_OK F_LOCK F_TEST F_TLOCK F_ULOCK STDIN_FILENO STDOUT_FILENO STDERR_FILENO
syntax  keyword  cOprtMore  strlen strnlen typeof offsetof INTN_C UINTN_C INTMAX_C UINTMAX_C
syntax  keyword  cStmtMore  assert
syntax  keyword  cFunction  clearerr ctermid dprintf fclose fdopen feof ferror fflush fgetc fgetpos fgets fileno flockfile fmemopen fopen fprintf fputc fputs fread freopen fscanf fseek fseeko fseekpos ftell ftello ftrylockfile funlockfile fwrite getc getchar getc_unlocked getchar_unlocked getdelim getline gets open_memstream pclose perror popen printf putc putchar putc_unlocked putchar_unlocked puts remove rename renameat rewind scanf setbuf setvbuf snprintf sprintf sscanf tempnam tmpfile tmpnam ungetc vdprintf vfprintf vfscanf vprintf vscanf vsnprintf vsprintf vsscanf _Exit a64l abort abs atexit atof atoi atol atoll bsearch calloc div drand48 erand48 exit free getenv getsubopt grantpt initstate jrand48 l64a labs lcong48 ldiv llabs lldiv lrand48 malloc mblen mbstowcs mbtowc mkdtemp mkstemp mrand48 nrand48 posix_memalign posix_openpt ptsname putenv qsort rand rand_r random realloc realpath seed48 setenv setkey setstate srand srand48 srandom strtod strtof strtol strtold strtoll strtoul strtoull system unlockpt unsetenv wcstombs wctomb memccpy memchr memcmp memcpy memmove memset stpcpy stpncpy strcat strchr strcmp strcoll strcoll_lstrcpy strcspn strdup strerror strerror_l strerror_r strncat strncmp strncpy strndup strpbrk strrchr strsignal strspn strstr strtok strtok_r strxfrm strxfrm_l
syntax  keyword  cUnixFunc  access alarm chdir chown close confstr crypt dup dup2 _exit encrypt execl execle execlp execv execve execvp faccessat fchdir fchown fchownat fdatasync fexecve fork fpathconf fsync ftruncate getcwd getegid geteuid getgid getgroups gethostid gethostname getlogin getlogin_r getopt getpgid getpgrp getpid getppid getsid getuid isatty lchown link linkat lockf lseek nice pathconf pause pipe pread pwrite read readlink readlinkat rmdir setegid seteuid setgid setpgid setpgrp setregid setreuid setsid setuid sleep swab symlink symlinkat sync sysconf tcgetpgrp tcsetpgrp truncate ttyname ttyname_r unlink unlinkat write
syntax  keyword  cMathFunc  acos asin atan atan2 cos sin tan cosh sinh tanh exp frexp ldexp log log10 modf pow sqrt ceil fabs floor fmod acosf asinf atanf atan2f cosf sinf tanf coshf sinhf tanhf expf frexpf ldexpf logf log10f modff powf sqrtf ceilf fabsf floorf fmodf acosl asinl atanl atan2l cosl sinl tanl coshl sinhl tanhl expl frexpl ldexpl logl log10l modfl powl sqrtl ceill fabsl floorl fmodl
highlight link   cIdentify  Identifier
highlight link   cUniConst  cConstant
highlight link   cOprtMore  cOperator
highlight link   cStmtMore  cStatement
highlight link   cFunction  Function
highlight link   cUnixFunc  cFunction
highlight link   cMathFunc  cFunction
highlight link   cFormat    Format
