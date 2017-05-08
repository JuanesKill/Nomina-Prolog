contrato('titular','tco',200000).
contrato('titular','mto',100000).
contrato('titular','hc',50000).
contrato('titular','honorarios',40000).
contrato('asistente','tco',120000).
contrato('asistente','mto',110000).
contrato('asistente','hc',40000).
contrato('asistente','honorarios',80000).
contrato('auxiliar','tco',140000).
contrato('auxiliar','mto',90000).
contrato('auxiliar','hc',30000).
contrato('auxiliar','honorarios',10000).
personal('juan','titular','hc',40).
personal('miguel','auxiliar','mto',22).
personal('nata','asistente','honorarios',40).
adicional('tco',0.25).
adicional('mto',0.15).
adicional('hc',0).
adicional('honorarios',0).
semestre(18).
salario(A,B) :- personal(A,C,D,E), contrato(C,D,X),semestre(S),adicional(D,Y),Z is (E*X*S), B is (Z+(Z*Y)).

