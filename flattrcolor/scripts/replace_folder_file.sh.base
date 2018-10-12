#!/usr/bin/env bash
#	default color: 178984
glyphColorOriginal=oldglyph
glyphColorNew=newglyph

#	Front
#	default color: 36d7b7
frontColorOriginal=oldfront
frontColorNew=newfront

#	Back
#	default color: 1ba39c
backColorOriginal=oldback
backColorNew=newback


sed -i "s/#524954/#$glyphColorOriginal/g" $1
sed -i "s/#9b8aa0/#$frontColorOriginal/g" $1
sed -i "s/#716475/#$backColorOriginal/g" $1
sed -i "s/#$glyphColorOriginal;/#$glyphColorNew;/g" $1
sed -i "s/#$frontColorOriginal;/#$frontColorNew;/g" $1
sed -i "s/#$backColorOriginal;/#$backColorNew;/g" $1
