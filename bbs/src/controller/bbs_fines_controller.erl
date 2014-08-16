-module(bbs_fines_controller, [Req]).
-compile(export_all).
test('GET', []) ->
 {json, [{fine, "a fine"}]}.
