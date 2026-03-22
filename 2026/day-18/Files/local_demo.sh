#!/bin/bash

x=10

local_func(){
        local x=20
        echo "Value of x inside local function: $x"
}

global_func(){
        echo "Value of x inside global_func: $x"
}

local_func
global_func
echo "Value of x outside functions: $x"
