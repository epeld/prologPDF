
:- module(load, []).
:- use_module(pdf).
:- use_module(pdffile).
:- use_module(graph).
:- use_module(code).
:- use_module(interpreter).
:- use_module(prologpdf).
:- use_module(pdftext).
:- use_module(transform).

:- use_module(code_app).
:- use_module(graph_app).

:- example:run_tests.

%
% Produce the prologpdf command line tool.
% Note that the new "prologpdf"-process
%
% Will be invoked with the same command line
% flags as your current prolog process
%
compile_app :-
  qsave_program(
    "prologpdf",
    [
      goal(
        (
          prologpdf:prologpdf,
          halt
        )
      ),
      stand_alone(false)
    ]
  ).
