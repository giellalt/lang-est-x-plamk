#!/bin/bash

# tekita soovitaja-failid

# transition pairs
# s.t. täht -> täht
# kujult, ling, klaviatuurilt


cat soovita.cpp.utf8.1 \
| sed 's/\r//' \
| grep '{...,.*".*".*"' \
| sed 's/^.*{.\(.\).,/{\1}/' \
| sed 's/\t/ /g' \
| sed 's/[" ]//g' \
| sed 's/$/ ] ,,/' \
> soovitaja.tabel2

# konteksti tingimus
echo '[[? - "<CORR>"]*]' > eddefault.tmp2
echo '.o.' >> eddefault.tmp2

# null -> täht
# kaal võiks olla seotud tähe sagedusega korpuses, aga praegu pole
cat soovitaja.tabel2 \
| sed 's/^{\(.\)}.*$/\1/' \
| tr -d '\n' \
| sed 's/\(.\)/ | ["\1" "<CORR>"]::30/g' \
| sed 's/^.*$/["" -> [ ""&] ,\n/' \
> eddefault.tmp2

# täht -> null ja
# täht -> täht
# kujult, ling, klaviatuurilt

cat soovitaja.tabel2 \
| sed 's/^{\(.\)}\(.*\)\(.\)},/{\1}\2}, | ["\3" "<CORR>"]::30/' \
| sed 's/^{\(.\)}\(.*\)\(.\)},/{\1}\2}, | ["\3" "<CORR>"]::30/' \
| sed 's/^{\(.\)}\(.*\)\(.\)},/{\1}\2}, | ["\3" "<CORR>"]::30/' \
| sed 's/^{\(.\)}\(.*\)\(.\)},/{\1}\2}, | ["\3" "<CORR>"]::30/' \
| sed 's/^{\(.\)}\(.*\)\(.\)},/{\1}\2}, | ["\3" "<CORR>"]::30/' \
| sed 's/^{\(.\)}\(.*\)\(.\)},/{\1}\2}, | ["\3" "<CORR>"]::30/' \
| sed 's/^{\(.\)}\(.*\)\(.\)},/{\1}\2}, | ["\3" "<CORR>"]::30/' \
| sed 's/^{\(.\)}\(.*\)\(.\)},/{\1}\2}, | ["\3" "<CORR>"]::30/' \
| sed 's/^{\(.\)}\(.*\)\(.\)},/{\1}\2}, | ["\3" "<CORR>"]::30/' \
\
| sed 's/^{\(.\)}},/"\1" -> [ "\1" | ["" "<CORR>"]::30/' \
>> eddefault.tmp2

# viimasele reale jäi ,,
# see tuleks asendada lõpetava suluga ]
#cat eddefault.tmp3 \
#| tr -d '\n' \
#| sed 's/,,$/]/' \
#| sed 's/,,/&\n/g' \
#>> eddefault.tmp2 
#

# tähepaarid
# [a b] -> [b a <CORR>]::15
cat soovitaja.tabel2 \
| sed 's/^{\(.\)}.*$/\1/' \
| tr -d '\n' \
| gawk -F "" '{for (i=1; i<=NF; i++) {for (j=1; j<=NF; j++) {if (i!=j) {print "[" $i " " $j "] -> [" $j " " $i " \"<CORR>\"]::15 ,"}}}}' \
>> eddefault.tmp2

# tähekolmikud
# [a b b] -> [a a b <CORR>]::10 ,
# [a a b] -> [a b b <CORR>]::10

cat soovitaja.tabel2 \
| sed 's/^{\(.\)}.*$/\1/' \
| tr -d '\n' \
| gawk -F "" '{for (i=1; i<=NF; i++) {for (j=1; j<=NF; j++) {if (i!=j) {print "[" $i " " $i " " $j "] -> [" $i " " $j " " $j " \"<CORR>\"]::10 ,\n" "[" $i " " $j " " $j "] -> [" $i " " $i " " $j " \"<CORR>\"]::10 ,"}}}}' \
>> eddefault.tmp2

# et saaks regavaldise formaalselt korda
echo '[a a] -> [a "<CORR>"]::20]' >> eddefault.tmp2

#kontekstitingimus
echo '.o.' >> eddefault.tmp2
echo '[[ [? - "<CORR>"]* ( "<CORR>":0 ) [? - "<CORR>"]* ]^1];' >> eddefault.tmp2

# kopeeri õige nimega failiks
# editdist.est.regex kopitakse makefile-s omakorda editdist.default.regex-iks

cp eddefault.tmp2 editdist.est.regex

exit


# täht <-- null
cat soovitaja.tabel2 \
| sed 's/^{\(.\)}.*$/\1/' \
| tr -d '\n' \
| sed 's/\(.\)/ | ["\1" "<CORR>"]::30/g' \
| sed 's/^.*$/"" -> [ ""&] ];\n/' \
>> eddefault.tmp2


exit

cat soovita.cpp.utf8.1 \
| sed 's/\r//' \
| grep '{...,.*".*".*"' \
| sed 's/^.*{.\(.\).,/{\1}/' \
| sed 's/"\([^"]*\)"/_{\1}/' \
| sed 's/"\([^"]*\)"/_{\1}/' \
| sed 's/"\([^"]*\)"/_{\1}/' \
| sed 's/"\([^"]*\)"/_{\1}/' \
| sed 's/}[^_{}]*_{/}_{/g' \
| sed 's/^\({.}\)_\({[^{}]*}\)_\({[^{}]*}\)_\({[^{}]*}\)/\1_\2 \1_\3 \1_\4/' \
| sed 's/}},/}/' > soovitaja.tabel1

echo '[[? - "<CORR>"]*]' > eddefault.tmp2
echo '.o.' >> eddefault.tmp2
echo '[' >> eddefault.tmp2

# kujult

cat soovitaja.tabel1 \
| sed 's/^\([^ ]*\) \([^ ]*\) \([^ ]*\)$/\1/' \
| grep -v '{}' \
| sed 's/^\({.}\)_{\(.\)\(.\)}/\1_{\2}\n\1_{\3}/' \
| tr -d '{}' | sed 's/$/_30/' \
| sed 's/^\(.\)_\(.\)_\(.*\)$/"\1" (->) ["\2" "<CORR>" ]::\3 ,/' \
>> eddefault.tmp2

echo '? (->) ["" "<CORR>" ]::30' >> eddefault.tmp2
echo ']' >> eddefault.tmp2
echo '.o.' >> eddefault.tmp2
echo '[[ [? - "<CORR>"]* ( "<CORR>":0 ) [? - "<CORR>"]* ]^1];' >> eddefault.tmp2

exit


echo "##similar shape" > eddefault.tmp1

cat soovitaja.tabel1 \
| sed 's/^\([^ ]*\) \([^ ]*\) \([^ ]*\)$/\1/' \
| grep -v '{}' \
| sed 's/^\({.}\)_{\(.\)\(.\)}/\1_{\2}\n\1_{\3}/' \
| tr -d '{}' | sed 's/$/_30/' \
| tr '_' '\t' \
>> eddefault.tmp1

echo "##similar sound" >> eddefault.tmp1

cat soovitaja.tabel1 \
| sed 's/^\([^ ]*\) \([^ ]*\) \([^ ]*\)$/\2/' \
| grep -v '{}' \
| sed 's/^\({.}\)_{\(.\)\(.\)\(.\)\(.\)\(.\)}/\1_{\2}\n\1_{\3}\n\1_{\4}\n\1_{\5}\n\1_{\6}/' \
| sed 's/^\({.}\)_{\(.\)\(.\)\(.\)\(.\)}/\1_{\2}\n\1_{\3}\n\1_{\4}\n\1_{\5}/' \
| sed 's/^\({.}\)_{\(.\)\(.\)\(.\)}/\1_{\2}\n\1_{\3}\n\1_{\4}/' \
| sed 's/^\({.}\)_{\(.\)\(.\)}/\1_{\2}\n\1_{\3}/' \
| tr -d '{}' | sed 's/$/_30/' \
| tr '_' '\t' \
>> eddefault.tmp1

echo "##near on keyboard" >> eddefault.tmp1

cat soovitaja.tabel1 \
| sed 's/^\([^ ]*\) \([^ ]*\) \([^ ]*\)$/\3/' \
| grep -v '{}' \
| sed 's/^\({.}\)_{\(.\)\(.\)\(.\)\(.\)\(.\)}/\1_{\2}\n\1_{\3}\n\1_{\4}\n\1_{\5}\n\1_{\6}/' \
| sed 's/^\({.}\)_{\(.\)\(.\)\(.\)\(.\)}/\1_{\2}\n\1_{\3}\n\1_{\4}\n\1_{\5}/' \
| sed 's/^\({.}\)_{\(.\)\(.\)\(.\)}/\1_{\2}\n\1_{\3}\n\1_{\4}/' \
| sed 's/^\({.}\)_{\(.\)\(.\)}/\1_{\2}\n\1_{\3}/' \
| tr -d '{}' | sed 's/$/_30/' \
| tr '_' '\t' \
>> eddefault.tmp1

# exit
eddefault.tmp1 tuleks kopeerida faili editdist.default.txt


katsetan 
pärast make-i, millega on tehtud editdist.default.regex
cp editdist.default.regex editdist.default.regex.vana
cat editdist.default.regex.vana | sed 's/$/_reavahe_/' | tr -d '\n' | sed 's/| *_reavahe_/| /g' | sed 's/_reavahe_/\n/g' | tr '\t' ' ' | tr -s ' ' | sed 's/\(\[ "" "<CORR>" \]::\)\(100.0\)/\130.0/' > editdist.default.regex

cat editdist.default.regex | sed 's/$/_reavahe_/' | tr -d '\n' | sed 's/| *_reavahe_/| /g' | sed 's/_reavahe_/\n/g' | tr '\t' ' ' | tr -s ' ' | sed 's/\(\[ "" "<CORR>" \]::\)\(100.0\)/\130.0/' > editdist.default.tmpregex


