#!/bin/bash

x=10

local_func(){
        local x=20
        echo "Value of x inside local function is: $x"
}

global_func(){
        echo "Value of x inside the global function is: $x"

}

local_func
global_func

echo " Value of x outside functions is: $x"
