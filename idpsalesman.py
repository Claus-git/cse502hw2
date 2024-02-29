from idp_engine import IDP, Theory
kb = IDP.from_file("new_salesman.idp")
T, S = kb.get_blocks("T, S")
theory = Theory(T, S)
for model in theory.expand():
    print(model)
