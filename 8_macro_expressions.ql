import cpp

from Macro m, MacroInvocation mi
where m.getName().regexpMatch("ntoh.*") and mi.getMacro() = m
select mi.getExpr(), "top level expressions of ntoh* macros"
