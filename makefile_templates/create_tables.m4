include(host_defines)dnl
SHEBANG

COMMENT create all the opcode decoding speedup tables

EXPORT(`WLA_QUIET', 1)

define(`MAKE_TABLE', `MAKE(clean)
EXPORT(`WLA_TARGET', $1)
MAKE()
EXEC(gen)')dnl
MAKE_TABLE(GB)

MAKE_TABLE(Z80)

MAKE_TABLE(MCS6502)

MAKE_TABLE(WDC65C02)

MAKE_TABLE(MCS6510)

MAKE_TABLE(W65816)

MAKE_TABLE(SPC700)

MAKE_TABLE(HUC6280)

MAKE(clean)`'dnl
