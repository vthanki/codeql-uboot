import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap() {
    exists(Macro m, MacroInvocation mi |
      m.getName().regexpMatch("ntoh.*") and mi.getMacro() = m and this = mi.getExpr()
    )
  }
}

from NetworkByteSwap n
select n, "Network byte swap"
