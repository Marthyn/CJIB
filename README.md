CJIB
====

An assignment for Hanze, the CJIB(system for traffic fines) is simulated here(RoR/Erlang/RabbitMQ/NodeJS)


RDW
===
A Ruby on Rails api. Stores information about vehicles

GBA
===
A Ruby on Rails api. Stores information about people

BBS
===
Erlang app. Calculates the price of the fine based on information from RDW, GBA and BOS

BOS
===
Erlang app. Stores the fines

OLA
===
A nodeJS app that generates a 'acceptgiro' based on a fine from the BOS
