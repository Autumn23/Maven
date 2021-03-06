#!/bin/sh
SCORE=0
mvn clean compile
mvn exec:java -Dexec.args=20 | tee .output.txt
TEST_1=$(grep -o -e "maven-compiler-plugin" -e "exec-maven-plugin" -e "javaApp.EvenSum" pom.xml | wc -l)
TEST_2=$(grep -o "BUILD SUCCESS" .output.txt | wc -l)
TEST_3=$(grep -o -e "2,4,6,8,10,12,14,16,18,20" -e "110" .output.txt | wc -l)
TEST_4=$(grep -o -e "evennums" -e "num" -e "sum" -e "even" ./src/main/java/javaApp/EvenSum.java | wc -l)
if [ "$TEST_1" -ge 3 ]
then SCORE=$(($SCORE + 30))
fi;
if [ "$TEST_2" -eq 1 ]
then SCORE=$(($SCORE + 25))
fi;
if [ "$TEST_3" -ge 2 ]
then SCORE=$(($SCORE + 25))
fi;
if [ "$TEST_4" -ge 7 ]
then SCORE=$(($SCORE + 20))
fi;
echo "FS_SCORE:$SCORE%"   