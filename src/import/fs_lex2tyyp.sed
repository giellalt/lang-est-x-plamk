#!/bin/sed -f

s/!/ !/
s/^[^!]*!\\[^\\]*\\\.1[^1234567890].*$/&@AASTA/
s/^[^ ]*kurat [^!]*!\\[^\\]*\\\.[1234567890].*$/&@KURAT/
s/^[^ ]*kevad [^!]*!\\[^\\]*\\\.[1234567890].*$/&@KEVAD/
s/^[^ ]*k<üps [^!]*!\\[^\\]*\\\.[1234567890].*$/&@KEVAD/
s/^[^ ]*kohus [^ ]*k<ohtu [^!]*!\\[^\\]*\\\.[1234567890].*$/&@KOHUS/
s/^[^ ]*süda [^!]*!\\[^\\]*\\\.[1234567890].*$/&@SÜDA/
s/^[^ ]*k<õrb [^ ]*k<õrbe [^!õ]*!\\[^\\]*\\\.[1234567890].*$/&@KÕRB/
s/^[^ ]*lõuna [^!]*!\\[^\\]*\\\.[1234567890].*$/&@LÕUNA/
s/^[^ ]*k<*öömen [^!]*!\\[^\\]*\\\.[1234567890].*$/&@KÖÖMEN/
s/^[^ ]*m<ees [^ ]*mehe [^!]*!\\[^\\]*\\\.[1234567890].*$/&@MEES/
s/^[^ ]*naine .*$/&@NAINE/
s/^[^ ]*teine .*$/&@TEINE/
s/^[^ ]*[^v]õlu .*$/&@ÕLU/
s/^[^ ]*iga .*\\P.*$/&@RUBLA/
s/^[^ ]*ks [^ ]*hte .*\.22.*$/&@KAKS/
s/^[^ ]*emand [^ ]*emanda [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@MAGUS/
s/^[^ ]*is*sand [^ ]*is*sanda [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@MAGUS/
s/^[^ ]*paras [^ ]*paraja [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@PARAS/
s/^[^ ]*põrand [^ ]*põranda [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@MAGUS/
s/^[^ ]*rätsep [^ ]*rätsepa [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@MAGUS/
s/^[^ ]*tuhat [^ ]*tuhande [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@TUHAT/
s/^[^ ]*tulnuk [^ ]*tulnuka [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@MAGUS/
s/^[^ ]*Tooming [^ ]*Toominga [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@MAGUS/
s/^[^ ]*raamat [^ ]*raamatu [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@VIRSIK/
s/^[^ ]*Lembit [^ ]*Lembitu [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@VIRSIK/
s/^[^ ]*ud [^ ]*u [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@TUNTUD/
s/^[^ ]*k)* [^ ]*ku[\[D#]* [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@VIRSIK/
s/^[^ ]*g)* [^ ]*gu[\[D#]* [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@VIRSIK/
s/^[^ ]*c)* [^ ]*cu[\[D#]* [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@VIRSIK/
s/^[^ ]*[lmnr])* [^ ]*[lmnr]u[\[D#]* [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@VIRSIK/
s/^[^ ]*\([^ ]\))* [^ ]*\1i[\[D#]* [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@REDEL/
s/^[^ ]*\([^ ]\))* [^ ]*\1’i[\[D#]* [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@REDEL/
s/^[^ ]*s)* [^ ]*nda[\[D#]* [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@HALE/
s/^[^ ]*\(.\)as)* [^ ]*\1a[\[D#]* [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@LOHAKAS/
s/^[^ ]*v<al.mis)* [^ ]*[^s]i[\[D#]* [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@LOHAKAS/
s/^[^ ]*ne)* [^ ]*se[\[D#]* [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@SOOLANE/
s/^[^ ]*s)* [^ ]*sa[\[D#]* [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@MAGUS/
s/^[^ ]*ne)* [^ ]*sa[\[D#]* [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@MAGUS/
s/^[^ ]*[lmnrv])* [^ ]*[lmnrv]a[\[D#]* [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@MAGUS/
s/^[^ ]*sg_g\$ [^ ]*a [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@MAGUS/
s/^[^ ]*e)* [^ ]*eda[\[D#]* [^!]*!\\[^\\]*\\\.2[^1234567890].*$/&@HALE/
s/^[^ ]*er)* [^ ]*ra[\[D#]* [^!]*!\\[^\\]*\\\.3[^1234567890].*$/&@VAHER/
s/^[^ ]*er)* [^ ]*ri[\[D#]* [^!]*!\\[^\\]*\\\.3[^1234567890].*$/&@MANNER/
s/^[^ ]*e)* [^ ]*eme[\[D#]* [^!]*!\\[^\\]*\\\.4[^1234567890].*$/&@HABE/
s/^[^ ]*s)* [^ ]*sa[\[D#]* [^!]*!\\[^\\]*\\\.3[^1234567890].*\\\.5.*$/&@HOOLAS/
s/^[^ ]*me)* [^ ]*mne[\[D#]* [^!]*!\\[^\\]*\\\.5[^1234567890].*$/&@SEEME/
/@/!s/^[^ ]*e)* [^ ]*e[\[D#]* [^!]*!\\[^\\]*\\\.5[^1234567890].*$/&@HAARE/
s/^[^ ]*[iu])* [^ ]*me[\[D#]* [^!]*!\\[^\\]*\\\.5[^1234567890].*$/&@HAARE/
s/^[^ ]*is)* [^ ]*i[\[D#]* [^!]*!\\[^\\]*\\\.5[^1234567890].*$/&@KALLIS/
s/^[^ ]*e)* [^ ]*e[\[D#]* [^!]*!\\[^\\]*\\\.6[^1234567890].*$/&@PINGE/
s/^[^ ]*u)* [^ ]*u[\[D#]* [^!]*!\\[^\\]*\\\.6[^1234567890].*$/&@PINGE/
s/^[^ ]*kärbes)* [^ ]*[^s][\[D#]* [^!]*!\\[^\\]*\\\.7[^1234567890].*$/&@KANNEL/
/@/!s/^[^ ]*s)* [^ ]*[^s][\[D#]* [^!]*!\\[^\\]*\\\.7[^1234567890].*$/&@KOTKAS/
s/^[^ ]*[lmnr])* [^ ]*a[\[D#]* [^!]*!\\[^\\]*\\\.8[^1234567890].*$/&@PIPAR/
s/^[^ ]*[lmnr])* [^ ]*e[\[D#]* [^!]*!\\[^\\]*\\\.8[^1234567890].*$/&@KANNEL/
s/^[^ ]*ke)* [^ ]*se[\[D#]* [^!]*!\\[^\\]*\\\.12[^1234567890].*\\\.10.*$/&@PÄIKE/
/@/!s/^[^ ]*ke)* [^ ]*se[\[D#]* [^!]*!\\[^\\]*\\\.12[^1234567890][^\\]*$/&@PEENIKE/
s/^[^ ]*s)* [^ ]*se[\[D#]* [^!]*!\\[^\\]*\\\.9[^1234567890][^\\]*$/&@SOOLANE/
s/^[^ ]*ne)* [^ ]*se[\[D#]* [^!]*!\\[^\\]*\\\.10[^1234567890][^\\]*$/&@SOOLANE/
/@/!s/^[^ ]*s)* [^ ]*se[\[D#]* [^!]*!\\[^\\]*\\\.11[^1234567890][^\\]*$/&@OLULINE/
/@/!s/^[^ ]*kuramus [^ ]*se[\[D#]* [^!]*!\\[^\\]*\\\.11[^1234567890].*$/&@OLULINE/
/@/!s/^[^ ]*ne)* [^ ]*se[\[D#]* [^!]*!\\[^\\]*\\\.12[^1234567890][^\\]*$/&@OLULINE/
s/^[^ ]*sg_g\$ [^ ]*se[\[D#]* [^!]*!\\[^\\]*\\\.12[^1234567890][^\\]*$/&@OLULINE/
s/^[^ ]*l[ia]ne)* [^ ]*se[\[D#]* [^!]*!\\[^\\]*\\\.12[^1234567890].*\\\.10.*$/&@SUULINE/
s/^[^ ]*mine)* [^ ]*se[\[D#]* [^!]*!\\[^\\]*\\\.12[^1234567890].*\\\.10.*$/&@SUULINE/
/@/!s/^[^ ]*ne)* [^ ]*se[\[D#]* [^!]*!\\[^\\]*\\\.12[^1234567890].*\\\.10.*$/&@KATKINE/
s/^[^ ]*ne)* [^ ]*se[\[D#]* [^!]*!\\[^\\]*\\\.10[^1234567890].*\\\.12.*$/&@KATKINE/
s/^[^ ]*[^u]s)* [^ ]*se[\[D#]* [^!]*!\\[^\\]*\\\.11[^1234567890].*\\\.9.*$/&@KATKINE/
s/^[^ ]*matus)* [^ ]*se[\[D#]* [^!]*!\\[^\\]*\\\.11[^1234567890].*\\\.9.*$/&@SUULINE/
s/^[^ ]*l<ikkus)* [^ ]*se[\[D#]* [^!]*!\\[^\\]*\\\.11[^1234567890].*\\\.9.*$/&@SUULINE/
/_H_[^@]*$/s/^[^ ]*s)* [^ ]*se[\[D#]* [^!]*!\\[^\\]*\\\.11[^1234567890].*\\\.9.*$/&@KATKINE/
/@/!s/^[^ ]*[lvst]us)* [^ ]*se[\[D#]* [^!]*!\\[^\\]*\\\.11[^1234567890].*\\\.9.*$/&@SUULINE/
/b<ambus/s/^[^ ]*s [^ ]*se [^!]*!\\[^\\]*\\\.11[^1234567890].*\\\.9.*$/&@KATKINE/
/gl<oobus/s/^[^ ]*s [^ ]*se [^!]*!\\[^\\]*\\\.11[^1234567890].*\\\.9.*$/&@KATKINE/
/kerjus/s/^[^ ]*s [^ ]*se [^!]*!\\[^\\]*\\\.11[^1234567890].*\\\.9.*$/&@KATKINE/
/k<oonus/s/^[^ ]*s [^ ]*se [^!]*!\\[^\\]*\\\.11[^1234567890].*\\\.9.*$/&@KATKINE/
/kr<ookus/s/^[^ ]*s [^ ]*se [^!]*!\\[^\\]*\\\.11[^1234567890].*\\\.9.*$/&@KATKINE/
/@/!s/^[^ ]*s)* [^ ]*se[\[D#]* [^!]*!\\[^\\]*\\\.11[^1234567890].*\\\.9.*$/&@SUULINE/
s/^[^ ]*n<iin [^!]*!\\[^\\]*\\\.13.*$/&@NIIN/
s/^[^ ]*p<een [^!]*!\\[^\\]*\\\.13.*$/&@PEEN/
/@/!s/^[^ ]*[^s] [^!]*!\\[^\\]*\\\.13.*$/&@KEEL/
/@/!s/^[^ ]*uks [^ ]*ukse [^!]*!\\[^\\]*\\\.14.*$/&@LAPS/
/@/!s/^[^ ]*l<aps [^ ]*lapse [^!]*!\\[^\\]*\\\.14.*$/&@LAPS/
/@/!s/^[^ ]*s\]* [^ ]*[^n]e[\[D#]* [^!]*!\\[^\\]*\\\.14.*$/&@VARS/
/@/!s/^[^ ]*s\]* [^ ]*[n]e[\[D#]* [^!]*!\\[^\\]*\\\.14.*$/&@VARS/
s/^[^ ]*l<eem [^ ]*leeme [^!]*!\\[^\\]*\\\.14.*$/&@KEEL/
s/^[^!]*!\\[^\\]*\\\.15.*$/&@MESI/
/@/!s/^[^!]*!\\[^\\]*\\\.16.*$/&@PERE/
/@/!s/^[^!]*!\\[^\\]*\\\.17.*$/&@KAVA/
/@/!s/^[^!]*!\\[^\\]*\\\.18.*$/&@KAVA/
/@/!s/^[^!]*!\\[^\\]*\\\.19.*\\\.2.*$/&@MUUSEUM/
/@/!s/^[^!]*!\\[^\\]*\\\.19[^\\]*$/&@TAUD/
/b<eib/s/^[^!]*!\\[^\\]*\\\.20.*SG\.P\$.*$/&@TAUD/
/@/!s/^[^!]*!\\[^\\]*\\\.20.*SG\.P\$.*$/&@MERI/
/@/!s/^[^!]*!\\[^\\]*\\\.20.*$/&@NIMI/
/@/!s/^[^!]*!\\[^\\]*\\\.21.*$/&@NIMI/
s/^[^ ]*|[^ ]*[^aeiouõäöü]<*[aeiouõäöü][kpt]\]* [^ ]*[kpt]\]*[kpt]i [^!]*!\\[^\\]*\\\.22.*$/&@KABINET/
/@/!s/^[^ ]*|[^ ]*ves.i_p<üks .*$/&@ARGPÜKS/
/@/!s/^[^ ]*|[^ ]*arg_p<üks .*$/&@ARGPÜKS/
/@/!s/^[^ ]*|[^ ]*k<ikka_p<üks .*$/&@ARGPÜKS/
/@/!s/^[^ ]*|[^ ]*jänes_p<üks .*$/&@ARGPÜKS/
/@/!s/^[^ ]*|[^ ]*kehken_p<üks .*$/&@ARGPÜKS/
/@/!s/^[^ ]*|[^ ]*[gbdvs]\]*[kpt] [^ ]*[gbdvs]\]*[kpt]i [^ ]*[gbdvs]\]*[kpt]i [^!]*!\\[^\\]*\\\.22.*$/&@TAUD/
/@/!s/^[^ ]*|[^ ]*[kpt]]*[kpt] [^ ]*[kpt]]*[kpt]i [^ ]*[^kpt]]*[kpt]]*i [^!]*!\\[^\\]*\\\.22.*$/&@TAUD/
/@/!s/^[^ ]*|[^ ]*[^kptshf][kpt]]* [^ ]*[kpt]]*i [^ ]*[kpt]]*i [^!]*!\\[^\\]*\\\.22.*$/&@FIAT/
/@/!s/^[^ ]*|[^ ]*[aeiouõäöü]<*[aeiouõäöü]ss [^ ]*ssi [^ ]*ssi [^!]*!\\H\\\.22.*$/&@FIAT/
/@/!s/^[^ ]* [^ ]*a[\[DE]* [^!]*!\\[^\\]*\\\.22.*$/&@PIIM/
/@/!s/^[^ ]* [^ ]*i[\[DE]* [^!]*!\\[^\\]*\\\.22.*$/&@TAUD/
/@/!s/^[^ ]* [^ ]*u[\[DE]* [^!]*!\\[^\\]*\\\.22.*$/&@KOON/
/@/!s/^[^ ]* [^ ]*e[\[DE]* [^!]*!\\[^\\]*\\\.22.*$/&@EIT/
/@/!s/^[^ ]*p<*oiss [^!]*!\\[^\\]*\\\.23.*$/&@POISS/
/@/!s/^[^ ]*p<*üks [^!]*!\\[^\\]*\\\.23.*$/&@POISS/
/@/!s/^[^ ]* [^!]*!\\[^\\]*\\\.23.*$/&@KAEL/
/@/!s/^[^ ]* [^ ]*a[\[DE]* [^!]*!\\[^\\]*\\\.24.*$/&@PIIM/
/@/!s/^[^ ]* [^ ]*i[\[DE]* [^!]*!\\[^\\]*\\\.24.*$/&@TAUD/
/@/!s/^[^ ]* [^ ]*u[\[DE]* [^!]*!\\[^\\]*\\\.24.*$/&@KOON/
/@/!s/^[^ ]* [^ ]*e[\[DE]* [^!]*!\\[^\\]*\\\.24.*$/&@EIT/
s/^[^ ]* [^!]*!\\[^\\]*\\\.25.*$/&@ELANIK/
s/^[^ ]* [^!]*!\\[^\\]*\\\.26.*$/&@ARMEE/

/m<uu\[MA [^ ]* [^ ]*m<uu\[B/s/^.*$/&@KEEMA/
/m<ää\[MA [^ ]* [^ ]*m<ää\[B/s/^.*$/&@KEEMA/
/aja\[MA [^ ]* [^ ]*aja\[B/s/^.*$/&@AJAMA/
/j<ulge\[MA [^ ]* [^ ]*ulge\[B/s/^.*$/&@JULGEMA/
/k<äs\]ki\[MA [^ ]* /s/^.*$/&@KÄSKIMA/
/k<isku\[MA [^ ]* [^ ]*isu\[B/s/^.*$/&@KISKUMA/
/<usku\[MA [^ ]* [^ ]*usu\[B/s/^.*$/&@USKUMA/
/veda\[MA /s/^.*$/&@VEDAMA/
/püga\[MA /s/^.*$/&@VEDAMA/
/pida\[MA .*pida\[S/s/^.*$/&@VEDAMA/
/pida\[MA .*pid\[I/s/^.*$/&@PIDAMA/
/tege\[MA /s/^.*$/&@TEGEMA/
/näge\[MA /s/^.*$/&@TEGEMA/

/h<ukku\[MA [^ ]*huku\[B/s/^.*$/&@SÜTTIMA/
/k<aiku\[MA [^ ]*kaigu\[B/s/^.*$/&@LEKKIMA/
/k<üündi\[MA [^ ]*küüni\[B/s/^.*$/&@LEKKIMA/
/l<ekki\[MA [^ ]*leki\[B/s/^.*$/&@LEKKIMA/
/l<õppe\[MA [^ ]*lõpe\[B/s/^.*$/&@LEKKIMA/
/p<ürgi\[MA [^ ]*püri\[B/s/^.*$/&@LEKKIMA/
/r<appu\[MA [^ ]*rapu\[B/s/^.*$/&@SÜTTIMA/
/s<attu\[MA [^ ]*satu\[B/s/^.*$/&@LEKKIMA/
/s<etti\[MA [^ ]*set]i\[B/s/^.*$/&@SÜTTIMA/
/s<oigu\[MA [^ ]*soiu\[B/s/^.*$/&@LEKKIMA/
/s<ulge\[MA [^ ]*sule\[B/s/^.*$/&@SÜTTIMA/
/s<ütti\[MA [^ ]*süt]*i\[B/s/^.*$/&@SÜTTIMA/
/t<ekki\[MA [^ ]*teki\[B/s/^.*$/&@LEKKIMA/
/v<appu\[MA [^ ]*vapu\[B/s/^.*$/&@SÜTTIMA/

/@/!s/^[^ ]* [^!]*!\\[^\\]*\\\.27.*$/&@ELAMA/
/@/!s/^[^ ]* [^!]*!\\[^\\]*\\\.28.*$/&@LEPPIMA/
/@/!s/^[^ ]* [^!]*!\\[^\\]*\\\.29.*$/&@HAKKAMA/
/@/!s/^[^ ]* [^!]*_&_[^!]*!\\[^\\]*\\\.30.*$/&@ÜTLEMA/
/@/!s/^[^ ]* [^!&]*!\\[^\\]*\\\.30.*$/&@SIPLEMA/
/@/!s/^[^ ]* [^!]*!\\[^\\]*\\\.31.*$/&@RABELEMA/

/@/!s/^[^ ]*[km]<aits\[MA [^!]*!\\[^\\]*\\\.32.*$/&@KAITSMA/
/@/!s/^[^ ]*kuse\[MA [^!]*!\\[^\\]*\\\.32.*$/&@KUSEMA/
/@/!s/^[^ ]*pese\[MA [^!]*!\\[^\\]*\\\.32.*$/&@PESEMA/
/@/!s/a\[B [^!]*!\\[^\\]*\\\.32.*$/&@SEISMA/
/@/!s/e\[B [^!]*!\\[^\\]*\\\.32.*$/&@TÕUSMA/

/k<uul\[MA.*\.33/s/^.*$/&@KUULMA/
/k<ool\[MA.*\.33/s/^.*$/&@KUULMA/
/@/!s/a\[B [^!]*!\\[^\\]*\\\.33.*$/&@NAERMA/

/t<und\[MA.*\.34/s/^.*$/&@TUNDMA/
/p<usk\[MA.*\.34/s/^.*$/&@PUSKMA/
/m<õsk\[MA.*\.34/s/^.*$/&@PUSKMA/
/l<ask\[MA.*\.34/s/^.*$/&@LASKMA/
/j<ooks\[MA.*\.34/s/^.*$/&@JOOKSMA/
/a\[B.*[^e]\[TUD.*\.34/s/^.*$/&@HOIDMA/
/a\[B.*ee\[TUD.*\.34/s/^.*$/&@HOIDMA/
/a\[B.*e\[TUD.*\.34/s/^.*$/&@SAATMA/

/l<õp\[MA.*\.35/s/^.*$/&@LÕPMA/
/a\[B.*[^kpt]e\[TUD.*\.35/s/^.*$/&@KATMA/
/a\[B.*[kpt]e\[TUD.*\.35/s/^.*$/&@SAATMA/

/tule\[MA.*\.36/s/^.*$/&@TULEMA/
/pane\[MA.*\.36/s/^.*$/&@TULEMA/
/sure\[MA.*\.36/s/^.*$/&@TULEMA/
/ole\[MA.*\.36/s/^.*$/&@OLEMA/
/mine\[MA.*\.36/s/^.*$/&@MINEMA/

/s<aa\[MA.*\.37/s/^.*$/&@SAAMA/
/j<ää\[MA.*\.37/s/^.*$/&@SAAMA/
/l<aa\[MA.*\.37/s/^.*$/&@KEEMA/
/k<ee\[MA.*\.37/s/^.*$/&@KEEMA/
/l<ee\[MA.*\.37/s/^.*$/&@KEEMA/
/n<ai\[MA.*\.37/s/^.*$/&@KEEMA/
/v<õi\[MA.*\.37/s/^.*$/&@KEEMA/
/n<äi\[MA.*\.37/s/^.*$/&@KEEMA/

/j<oo\[MA.*\.38/s/^.*$/&@TOOMA/
/l<oo\[MA.*\.38/s/^.*$/&@TOOMA/
/l<öö\[MA.*\.38/s/^.*$/&@TOOMA/
/t<oo\[MA.*\.38/s/^.*$/&@TOOMA/
/s<öö\[MA.*\.38/s/^.*$/&@TOOMA/
/v<ii\[MA.*\.38/s/^.*$/&@VIIMA/
/k<äi\[MA.*\.38/s/^.*$/&@VIIMA/
/p<oo\[MA.*\.38/s/^.*$/&@VIIMA/
/m<üü\[MA.*\.38/s/^.*$/&@VIIMA/








