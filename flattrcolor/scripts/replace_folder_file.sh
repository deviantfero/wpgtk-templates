#!/usr/bin/env bash
#	default color: 178984
glyphColorOriginal=294045
glyphColorNew=444d25

#	Front
#	default color: 36d7b7
frontColorOriginal=5f929c
frontColorNew=99af54

#	Back
#	default color: 1ba39c
backColorOriginal=355258
backColorNew=56622f

#	Paper
#	default color: ffffff
paperColorOriginal=ffffff
paperColorNew=ffffff

sed -i "s/#178984/#294045/g" $1
sed -i "s/#9b8aa0/#5f929c/g" $1
sed -i "s/#716475/#355258/g" $1
sed -i "s/#$glyphColorOriginal;/#$glyphColorNew;/g" $1
sed -i "s/#$frontColorOriginal;/#$frontColorNew;/g" $1
sed -i "s/#$backColorOriginal;/#$backColorNew;/g" $1
