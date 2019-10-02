## This library implements a simple stream object of QUIC.
## Bits           Stream Type
## 0x0    Client-Initiated, Bidirectional
## 0x1    Server-Initiated, Bidirectional
## 0x2    Client-Initiated, Unidirectional
## 0x3    Server-Initiated, Unidirectional


type
  StreamKind = enum
    CIB = 0, SIB = 1, CIU = 2, SIU = 3
  Stream* = ref object
    id*: int64


echo StreamKind.CIB.int == 0