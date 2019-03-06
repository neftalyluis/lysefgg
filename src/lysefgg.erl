-module(lysefgg).

%% API exports
-export([tail_len/1, tail_duplicate/2]).

%%====================================================================
%% API functions
%%====================================================================
tail_len(L) -> tail_len(L, 0).
tail_duplicate(N, Term) -> tail_duplicate(N, Term, []).


%%====================================================================
%% Internal functions
%%====================================================================
tail_len([], Acc) -> Acc;
tail_len([_ | T], Acc) -> tail_len(T, Acc + 1).

tail_duplicate(0, _, List) -> List;
tail_duplicate(N, Term, List) when N > 0 -> tail_duplicate(N - 1, Term, [Term, List]).
