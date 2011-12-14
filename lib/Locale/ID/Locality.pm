package Locale::ID::Locality;

use 5.010;
use strict;
use warnings;
use Sub::Spec::Gen::ReadTable qw(gen_read_table_func);

use Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
                       list_id_localities
               );

our %SPEC;

our $VERSION = '0.01'; # VERSION

# BEGIN IMPORT DATA
# src: /home/s1/proj/gdint/data/ind_locality/data.csv
# revision: c88f0b1
# date: Wed Dec 14 20:20:26 2011 +0700
# imported-by: /home/s1/bin/csv2perl
my $data = [
    ['1101','11','SIMEULUE','2'],
    ['1102','11','ACEH SINGKIL','2'],
    ['1103','11','ACEH SELATAN','2'],
    ['1104','11','ACEH TENGGARA','2'],
    ['1105','11','ACEH TIMUR','2'],
    ['1106','11','ACEH TENGAH','2'],
    ['1107','11','ACEH BARAT','2'],
    ['1108','11','ACEH BESAR','2'],
    ['1109','11','PIDIE','2'],
    ['1110','11','BIREUEN','2'],
    ['1111','11','ACEH UTARA','2'],
    ['1112','11','ACEH BARAT DAYA','2'],
    ['1113','11','GAYO LUES','2'],
    ['1114','11','ACEH TAMIANG','2'],
    ['1115','11','NAGAN RAYA','2'],
    ['1116','11','ACEH JAYA','2'],
    ['1117','11','BENER MERIAH','2'],
    ['1118','11','PIDIE JAYA','2'],
    ['1171','11','BANDA ACEH','1'],
    ['1172','11','SABANG','1'],
    ['1173','11','LANGSA','1'],
    ['1174','11','LHOKSEUMAWE','1'],
    ['1175','11','SUBULUSSALAM','1'],
    ['1201','12','NIAS','2'],
    ['1202','12','MANDAILING NATAL','2'],
    ['1203','12','TAPANULI SELATAN','2'],
    ['1204','12','TAPANULI TENGAH','2'],
    ['1205','12','TAPANULI UTARA','2'],
    ['1206','12','TOBA SAMOSIR','2'],
    ['1207','12','LABUHAN BATU','2'],
    ['1208','12','ASAHAN','2'],
    ['1209','12','SIMALUNGUN','2'],
    ['1210','12','DAIRI','2'],
    ['1211','12','KARO','2'],
    ['1212','12','DELI SERDANG','2'],
    ['1213','12','LANGKAT','2'],
    ['1214','12','NIAS SELATAN','2'],
    ['1215','12','HUMBANG HASUNDUTAN','2'],
    ['1216','12','PAKPAK BHARAT','2'],
    ['1217','12','SAMOSIR','2'],
    ['1218','12','SERDANG BEDAGAI','2'],
    ['1219','12','BATU BARA','2'],
    ['1220','12','PADANG LAWAS UTARA','2'],
    ['1221','12','PADANG LAWAS','2'],
    ['1222','12','LABUHAN BATU SELATAN','2'],
    ['1223','12','LABUHAN BATU UTARA','2'],
    ['1224','12','NIAS UTARA','2'],
    ['1225','12','NIAS BARAT','2'],
    ['1271','12','SIBOLGA','1'],
    ['1272','12','TANJUNG BALAI','1'],
    ['1273','12','PEMATANG SIANTAR','1'],
    ['1274','12','TEBING TINGGI','1'],
    ['1275','12','MEDAN','1'],
    ['1276','12','BINJAI','1'],
    ['1277','12','PADANGSIDIMPUAN','1'],
    ['1278','12','GUNUNGSITOLI','1'],
    ['1301','13','KEPULAUAN MENTAWAI','2'],
    ['1302','13','PESISIR SELATAN','2'],
    ['1303','13','SOLOK','2'],
    ['1304','13','SIJUNJUNG','2'],
    ['1305','13','TANAH DATAR','2'],
    ['1306','13','PADANG PARIAMAN','2'],
    ['1307','13','AGAM','2'],
    ['1308','13','LIMA PULUH KOTA','2'],
    ['1309','13','PASAMAN','2'],
    ['1310','13','SOLOK SELATAN','2'],
    ['1311','13','DHARMAS RAYA','2'],
    ['1312','13','PASAMAN BARAT','2'],
    ['1371','13','PADANG','1'],
    ['1372','13','SOLOK','1'],
    ['1373','13','SAWAH LUNTO','1'],
    ['1374','13','PADANG PANJANG','1'],
    ['1375','13','BUKITTINGGI','1'],
    ['1376','13','PAYAKUMBUH','1'],
    ['1377','13','PARIAMAN','1'],
    ['1401','14','KUANTAN SINGINGI','2'],
    ['1402','14','INDRAGIRI HULU','2'],
    ['1403','14','INDRAGIRI HILIR','2'],
    ['1404','14','PELALAWAN','2'],
    ['1405','14','SIAK','2'],
    ['1406','14','KAMPAR','2'],
    ['1407','14','ROKAN HULU','2'],
    ['1408','14','BENGKALIS','2'],
    ['1409','14','ROKAN HILIR','2'],
    ['1410','14','KEPULAUAN MERANTI','2'],
    ['1471','14','PEKANBARU','1'],
    ['1473','14','DUMAI','1'],
    ['1501','15','KERINCI','2'],
    ['1502','15','MERANGIN','2'],
    ['1503','15','SAROLANGUN','2'],
    ['1504','15','BATANG HARI','2'],
    ['1505','15','MUARO JAMBI','2'],
    ['1506','15','TANJUNG JABUNG TIMUR','2'],
    ['1507','15','TANJUNG JABUNG BARAT','2'],
    ['1508','15','TEBO','2'],
    ['1509','15','BUNGO','2'],
    ['1571','15','JAMBI','1'],
    ['1572','15','SUNGAI PENUH','1'],
    ['1601','16','OGAN KOMERING ULU','2'],
    ['1602','16','OGAN KOMERING ILIR','2'],
    ['1603','16','MUARA ENIM','2'],
    ['1604','16','LAHAT','2'],
    ['1605','16','MUSI RAWAS','2'],
    ['1606','16','MUSI BANYUASIN','2'],
    ['1607','16','BANYU ASIN','2'],
    ['1608','16','OGAN KOMERING ULU SELATAN','2'],
    ['1609','16','OGAN KOMERING ULU TIMUR','2'],
    ['1610','16','OGAN ILIR','2'],
    ['1611','16','EMPAT LAWANG','2'],
    ['1671','16','PALEMBANG','1'],
    ['1672','16','PRABUMULIH','1'],
    ['1673','16','PAGAR ALAM','1'],
    ['1674','16','LUBUKLINGGAU','1'],
    ['1701','17','BENGKULU SELATAN','2'],
    ['1702','17','REJANG LEBONG','2'],
    ['1703','17','BENGKULU UTARA','2'],
    ['1704','17','KAUR','2'],
    ['1705','17','SELUMA','2'],
    ['1706','17','MUKOMUKO','2'],
    ['1707','17','LEBONG','2'],
    ['1708','17','KEPAHIANG','2'],
    ['1709','17','BENGKULU TENGAH','2'],
    ['1771','17','BENGKULU','1'],
    ['1801','18','LAMPUNG BARAT','2'],
    ['1802','18','TANGGAMUS','2'],
    ['1803','18','LAMPUNG SELATAN','2'],
    ['1804','18','LAMPUNG TIMUR','2'],
    ['1805','18','LAMPUNG TENGAH','2'],
    ['1806','18','LAMPUNG UTARA','2'],
    ['1807','18','WAY KANAN','2'],
    ['1808','18','TULANGBAWANG','2'],
    ['1809','18','PESAWARAN','2'],
    ['1810','18','PRINGSEWU','2'],
    ['1811','18','MESUJI','2'],
    ['1812','18','TULANGBAWANG BARAT','2'],
    ['1871','18','BANDAR LAMPUNG','1'],
    ['1872','18','METRO','1'],
    ['1901','19','BANGKA','2'],
    ['1902','19','BELITUNG','2'],
    ['1903','19','BANGKA BARAT','2'],
    ['1904','19','BANGKA TENGAH','2'],
    ['1905','19','BANGKA SELATAN','2'],
    ['1906','19','BELITUNG TIMUR','2'],
    ['1971','19','PANGKAL PINANG','1'],
    ['2101','21','KARIMUN','2'],
    ['2102','21','BINTAN','2'],
    ['2103','21','NATUNA','2'],
    ['2104','21','LINGGA','2'],
    ['2105','21','KEPULAUAN ANAMBAS','2'],
    ['2171','21','BATAM','1'],
    ['2172','21','TANJUNG PINANG','1'],
    ['3101','31','KEPULAUAN SERIBU','2'],
    ['3171','31','JAKARTA SELATAN','1'],
    ['3172','31','JAKARTA TIMUR','1'],
    ['3173','31','JAKARTA PUSAT','1'],
    ['3174','31','JAKARTA BARAT','1'],
    ['3175','31','JAKARTA UTARA','1'],
    ['3201','32','BOGOR','2'],
    ['3202','32','SUKABUMI','2'],
    ['3203','32','CIANJUR','2'],
    ['3204','32','BANDUNG','2'],
    ['3205','32','GARUT','2'],
    ['3206','32','TASIKMALAYA','2'],
    ['3207','32','CIAMIS','2'],
    ['3208','32','KUNINGAN','2'],
    ['3209','32','CIREBON','2'],
    ['3210','32','MAJALENGKA','2'],
    ['3211','32','SUMEDANG','2'],
    ['3212','32','INDRAMAYU','2'],
    ['3213','32','SUBANG','2'],
    ['3214','32','PURWAKARTA','2'],
    ['3215','32','KARAWANG','2'],
    ['3216','32','BEKASI','2'],
    ['3217','32','BANDUNG BARAT','2'],
    ['3271','32','BOGOR','1'],
    ['3272','32','SUKABUMI','1'],
    ['3273','32','BANDUNG','1'],
    ['3274','32','CIREBON','1'],
    ['3275','32','BEKASI','1'],
    ['3276','32','DEPOK','1'],
    ['3277','32','CIMAHI','1'],
    ['3278','32','TASIKMALAYA','1'],
    ['3279','32','BANJAR','1'],
    ['3301','33','CILACAP','2'],
    ['3302','33','BANYUMAS','2'],
    ['3303','33','PURBALINGGA','2'],
    ['3304','33','BANJARNEGARA','2'],
    ['3305','33','KEBUMEN','2'],
    ['3306','33','PURWOREJO','2'],
    ['3307','33','WONOSOBO','2'],
    ['3308','33','MAGELANG','2'],
    ['3309','33','BOYOLALI','2'],
    ['3310','33','KLATEN','2'],
    ['3311','33','SUKOHARJO','2'],
    ['3312','33','WONOGIRI','2'],
    ['3313','33','KARANGANYAR','2'],
    ['3314','33','SRAGEN','2'],
    ['3315','33','GROBOGAN','2'],
    ['3316','33','BLORA','2'],
    ['3317','33','REMBANG','2'],
    ['3318','33','PATI','2'],
    ['3319','33','KUDUS','2'],
    ['3320','33','JEPARA','2'],
    ['3321','33','DEMAK','2'],
    ['3322','33','SEMARANG','2'],
    ['3323','33','TEMANGGUNG','2'],
    ['3324','33','KENDAL','2'],
    ['3325','33','BATANG','2'],
    ['3326','33','PEKALONGAN','2'],
    ['3327','33','PEMALANG','2'],
    ['3328','33','TEGAL','2'],
    ['3329','33','BREBES','2'],
    ['3371','33','MAGELANG','1'],
    ['3372','33','SURAKARTA','1'],
    ['3373','33','SALATIGA','1'],
    ['3374','33','SEMARANG','1'],
    ['3375','33','PEKALONGAN','1'],
    ['3376','33','TEGAL','1'],
    ['3401','34','KULON PROGO','2'],
    ['3402','34','BANTUL','2'],
    ['3403','34','GUNUNG KIDUL','2'],
    ['3404','34','SLEMAN','2'],
    ['3471','34','YOGYAKARTA','1'],
    ['3501','35','PACITAN','2'],
    ['3502','35','PONOROGO','2'],
    ['3503','35','TRENGGALEK','2'],
    ['3504','35','TULUNGAGUNG','2'],
    ['3505','35','BLITAR','2'],
    ['3506','35','KEDIRI','2'],
    ['3507','35','MALANG','2'],
    ['3508','35','LUMAJANG','2'],
    ['3509','35','JEMBER','2'],
    ['3510','35','BANYUWANGI','2'],
    ['3511','35','BONDOWOSO','2'],
    ['3512','35','SITUBONDO','2'],
    ['3513','35','PROBOLINGGO','2'],
    ['3514','35','PASURUAN','2'],
    ['3515','35','SIDOARJO','2'],
    ['3516','35','MOJOKERTO','2'],
    ['3517','35','JOMBANG','2'],
    ['3518','35','NGANJUK','2'],
    ['3519','35','MADIUN','2'],
    ['3520','35','MAGETAN','2'],
    ['3521','35','NGAWI','2'],
    ['3522','35','BOJONEGORO','2'],
    ['3523','35','TUBAN','2'],
    ['3524','35','LAMONGAN','2'],
    ['3525','35','GRESIK','2'],
    ['3526','35','BANGKALAN','2'],
    ['3527','35','SAMPANG','2'],
    ['3528','35','PAMEKASAN','2'],
    ['3529','35','SUMENEP','2'],
    ['3571','35','KEDIRI','1'],
    ['3572','35','BLITAR','1'],
    ['3573','35','MALANG','1'],
    ['3574','35','PROBOLINGGO','1'],
    ['3575','35','PASURUAN','1'],
    ['3576','35','MOJOKERTO','1'],
    ['3577','35','MADIUN','1'],
    ['3578','35','SURABAYA','1'],
    ['3579','35','BATU','1'],
    ['3601','36','PANDEGLANG','2'],
    ['3602','36','LEBAK','2'],
    ['3603','36','TANGERANG','2'],
    ['3604','36','SERANG','2'],
    ['3671','36','TANGERANG','1'],
    ['3672','36','CILEGON','1'],
    ['3673','36','SERANG','1'],
    ['3674','36','TANGERANG SELATAN','1'],
    ['5101','51','JEMBRANA','2'],
    ['5102','51','TABANAN','2'],
    ['5103','51','BADUNG','2'],
    ['5104','51','GIANYAR','2'],
    ['5105','51','KLUNGKUNG','2'],
    ['5106','51','BANGLI','2'],
    ['5107','51','KARANG ASEM','2'],
    ['5108','51','BULELENG','2'],
    ['5171','51','DENPASAR','1'],
    ['5201','52','LOMBOK BARAT','2'],
    ['5202','52','LOMBOK TENGAH','2'],
    ['5203','52','LOMBOK TIMUR','2'],
    ['5204','52','SUMBAWA','2'],
    ['5205','52','DOMPU','2'],
    ['5206','52','BIMA','2'],
    ['5207','52','SUMBAWA BARAT','2'],
    ['5208','52','LOMBOK UTARA','2'],
    ['5271','52','MATARAM','1'],
    ['5272','52','BIMA','1'],
    ['5301','53','SUMBA BARAT','2'],
    ['5302','53','SUMBA TIMUR','2'],
    ['5303','53','KUPANG','2'],
    ['5304','53','TIMOR TENGAH SELATAN','2'],
    ['5305','53','TIMOR TENGAH UTARA','2'],
    ['5306','53','BELU','2'],
    ['5307','53','ALOR','2'],
    ['5308','53','LEMBATA','2'],
    ['5309','53','FLORES TIMUR','2'],
    ['5310','53','SIKKA','2'],
    ['5311','53','ENDE','2'],
    ['5312','53','NGADA','2'],
    ['5313','53','MANGGARAI','2'],
    ['5314','53','ROTE NDAO','2'],
    ['5315','53','MANGGARAI BARAT','2'],
    ['5316','53','SUMBA TENGAH','2'],
    ['5317','53','SUMBA BARAT DAYA','2'],
    ['5318','53','NAGEKEO','2'],
    ['5319','53','MANGGARAI TIMUR','2'],
    ['5320','53','SABU RAIJUA','2'],
    ['5371','53','KUPANG','1'],
    ['6101','61','SAMBAS','2'],
    ['6102','61','BENGKAYANG','2'],
    ['6103','61','LANDAK','2'],
    ['6104','61','PONTIANAK','2'],
    ['6105','61','SANGGAU','2'],
    ['6106','61','KETAPANG','2'],
    ['6107','61','SINTANG','2'],
    ['6108','61','KAPUAS HULU','2'],
    ['6109','61','SEKADAU','2'],
    ['6110','61','MELAWI','2'],
    ['6111','61','KAYONG UTARA','2'],
    ['6112','61','KUBU RAYA','2'],
    ['6171','61','PONTIANAK','1'],
    ['6172','61','SINGKAWANG','1'],
    ['6201','62','KOTAWARINGIN BARAT','2'],
    ['6202','62','KOTAWARINGIN TIMUR','2'],
    ['6203','62','KAPUAS','2'],
    ['6204','62','BARITO SELATAN','2'],
    ['6205','62','BARITO UTARA','2'],
    ['6206','62','SUKAMARA','2'],
    ['6207','62','LAMANDAU','2'],
    ['6208','62','SERUYAN','2'],
    ['6209','62','KATINGAN','2'],
    ['6210','62','PULANG PISAU','2'],
    ['6211','62','GUNUNG MAS','2'],
    ['6212','62','BARITO TIMUR','2'],
    ['6213','62','MURUNG RAYA','2'],
    ['6271','62','PALANGKA RAYA','1'],
    ['6301','63','TANAH LAUT','2'],
    ['6302','63','BARU','1'],
    ['6303','63','BANJAR','2'],
    ['6304','63','BARITO KUALA','2'],
    ['6305','63','TAPIN','2'],
    ['6306','63','HULU SUNGAI SELATAN','2'],
    ['6307','63','HULU SUNGAI TENGAH','2'],
    ['6308','63','HULU SUNGAI UTARA','2'],
    ['6309','63','TABALONG','2'],
    ['6310','63','TANAH BUMBU','2'],
    ['6311','63','BALANGAN','2'],
    ['6371','63','BANJARMASIN','1'],
    ['6372','63','BANJAR BARU','1'],
    ['6401','64','PASIR','2'],
    ['6402','64','KUTAI BARAT','2'],
    ['6403','64','KUTAI KARTANEGARA','2'],
    ['6404','64','KUTAI TIMUR','2'],
    ['6405','64','BERAU','2'],
    ['6406','64','MALINAU','2'],
    ['6407','64','BULUNGAN','2'],
    ['6408','64','NUNUKAN','2'],
    ['6409','64','PENAJAM PASER UTARA','2'],
    ['6410','64','TANA TIDUNG','2'],
    ['6471','64','BALIKPAPAN','1'],
    ['6472','64','SAMARINDA','1'],
    ['6473','64','TARAKAN','1'],
    ['6474','64','BONTANG','1'],
    ['7101','71','BOLAANG MONGONDOW','2'],
    ['7102','71','MINAHASA','2'],
    ['7103','71','KEPULAUAN SANGIHE','2'],
    ['7104','71','KEPULAUAN TALAUD','2'],
    ['7105','71','MINAHASA SELATAN','2'],
    ['7106','71','MINAHASA UTARA','2'],
    ['7107','71','BOLAANG MONGONDOW UTARA','2'],
    ['7108','71','SIAU TAGULANDANG BIARO','2'],
    ['7109','71','MINAHASA TENGGARA','2'],
    ['7110','71','BOLAANG MONGONDOW SELATAN','2'],
    ['7111','71','BOLAANG MONGONDOW TIMUR','2'],
    ['7171','71','MANADO','1'],
    ['7172','71','BITUNG','1'],
    ['7173','71','TOMOHON','1'],
    ['7174','71','KOTAMOBAGU','1'],
    ['7201','72','BANGGAI KEPULAUAN','2'],
    ['7202','72','BANGGAI','2'],
    ['7203','72','MOROWALI','2'],
    ['7204','72','POSO','2'],
    ['7205','72','DONGGALA','2'],
    ['7206','72','TOLI-TOLI','2'],
    ['7207','72','BUOL','2'],
    ['7208','72','PARIGI MOUTONG','2'],
    ['7209','72','TOJO UNA-UNA','2'],
    ['7210','72','SIGI','2'],
    ['7271','72','PALU','1'],
    ['7301','73','KEPULAUAN SELAYAR','2'],
    ['7302','73','BULUKUMBA','2'],
    ['7303','73','BANTAENG','2'],
    ['7304','73','JENEPONTO','2'],
    ['7305','73','TAKALAR','2'],
    ['7306','73','GOWA','2'],
    ['7307','73','SINJAI','2'],
    ['7308','73','MAROS','2'],
    ['7309','73','PANGKAJENE DAN KEPULAUAN','2'],
    ['7310','73','BARRU','2'],
    ['7311','73','BONE','2'],
    ['7312','73','SOPPENG','2'],
    ['7313','73','WAJO','2'],
    ['7314','73','SIDENRENG RAPPANG','2'],
    ['7315','73','PINRANG','2'],
    ['7316','73','ENREKANG','2'],
    ['7317','73','LUWU','2'],
    ['7318','73','TANA TORAJA','2'],
    ['7322','73','LUWU UTARA','2'],
    ['7325','73','LUWU TIMUR','2'],
    ['7326','73','TORAJA UTARA','2'],
    ['7371','73','MAKASSAR','1'],
    ['7372','73','PAREPARE','1'],
    ['7373','73','PALOPO','1'],
    ['7401','74','BUTON','2'],
    ['7402','74','MUNA','2'],
    ['7403','74','KONAWE','2'],
    ['7404','74','KOLAKA','2'],
    ['7405','74','KONAWE SELATAN','2'],
    ['7406','74','BOMBANA','2'],
    ['7407','74','WAKATOBI','2'],
    ['7408','74','KOLAKA UTARA','2'],
    ['7409','74','BUTON UTARA','2'],
    ['7410','74','KONAWE UTARA','2'],
    ['7471','74','KENDARI','1'],
    ['7472','74','BAU-BAU','1'],
    ['7501','75','BOALEMO','2'],
    ['7502','75','GORONTALO','2'],
    ['7503','75','POHUWATO','2'],
    ['7504','75','BONE BOLANGO','2'],
    ['7505','75','GORONTALO UTARA','2'],
    ['7571','75','GORONTALO','1'],
    ['7601','76','MAJENE','2'],
    ['7602','76','POLEWALI MANDAR','2'],
    ['7603','76','MAMASA','2'],
    ['7604','76','MAMUJU','2'],
    ['7605','76','MAMUJU UTARA','2'],
    ['8101','81','MALUKU TENGGARA BARAT','2'],
    ['8102','81','MALUKU TENGGARA','2'],
    ['8103','81','MALUKU TENGAH','2'],
    ['8104','81','BURU','2'],
    ['8105','81','KEPULAUAN ARU','2'],
    ['8106','81','SERAM BAGIAN BARAT','2'],
    ['8107','81','SERAM BAGIAN TIMUR','2'],
    ['8108','81','MALUKU BARAT DAYA','2'],
    ['8109','81','BURU SELATAN','2'],
    ['8171','81','AMBON','1'],
    ['8172','81','TUAL','1'],
    ['8201','82','HALMAHERA BARAT','2'],
    ['8202','82','HALMAHERA TENGAH','2'],
    ['8203','82','KEPULAUAN SULA','2'],
    ['8204','82','HALMAHERA SELATAN','2'],
    ['8205','82','HALMAHERA UTARA','2'],
    ['8206','82','HALMAHERA TIMUR','2'],
    ['8207','82','PULAU MOROTAI','2'],
    ['8271','82','TERNATE','1'],
    ['8272','82','TIDORE KEPULAUAN','1'],
    ['9101','91','FAKFAK','2'],
    ['9102','91','KAIMANA','2'],
    ['9103','91','TELUK WONDAMA','2'],
    ['9104','91','TELUK BINTUNI','2'],
    ['9105','91','MANOKWARI','2'],
    ['9106','91','SORONG SELATAN','2'],
    ['9107','91','SORONG','2'],
    ['9108','91','RAJA AMPAT','2'],
    ['9109','91','TAMBRAUW','2'],
    ['9110','91','MAYBRAT','2'],
    ['9171','91','SORONG','1'],
    ['9401','94','MERAUKE','2'],
    ['9402','94','JAYAWIJAYA','2'],
    ['9403','94','JAYAPURA','2'],
    ['9404','94','NABIRE','2'],
    ['9408','94','YAPEN WAROPEN','2'],
    ['9409','94','BIAK NUMFOR','2'],
    ['9410','94','PANIAI','2'],
    ['9411','94','PUNCAK JAYA','2'],
    ['9412','94','MIMIKA','2'],
    ['9413','94','BOVEN DIGOEL','2'],
    ['9414','94','MAPPI','2'],
    ['9415','94','ASMAT','2'],
    ['9416','94','YAHUKIMO','2'],
    ['9417','94','PEGUNUNGAN BINTANG','2'],
    ['9418','94','TOLIKARA','2'],
    ['9419','94','SARMI','2'],
    ['9420','94','KEEROM','2'],
    ['9426','94','WAROPEN','2'],
    ['9427','94','SUPIORI','2'],
    ['9428','94','MAMBERAMO RAYA','2'],
    ['9429','94','NDUGA','2'],
    ['9430','94','LANNY JAYA','2'],
    ['9431','94','MAMBERAMO TENGAH','2'],
    ['9432','94','YALIMO','2'],
    ['9433','94','PUNCAK','2'],
    ['9434','94','DOGIYAI','2'],
    ['9435','94','INTAN JAYA','2'],
    ['9436','94','DEIYAI','2'],
    ['9471','94','JAYAPURA','1'],
];
# END IMPORT DATA

# BEGIN IMPORT META
# src: /home/s1/proj/gdint/data/ind_locality/meta.yaml
# revision: c88f0b1
# date: Wed Dec 14 20:20:26 2011 +0700
# imported-by: /home/s1/bin/yaml2dd
my $meta = {
  "columns" => {
    bps_code => [
      "int*",
      {
        "column_index" => 0,
        "column_sortable" => 1,
        "column_unique" => 1,
        "max" => 9999,
        "min" => 1101,
        "summary" => "BPS 4-digit code containing 2-digit province code and 2-digit locality code",
        "summary:ind" => "Kode 4-digit BPS berisi 2-digit kode provinsi dan 2-digit kode kota/kabupaten",
      },
    ],
    bps_prov_code => [
      "int*",
      {
        "column_index" => 1,
        "column_sortable" => 1,
        "max" => 99,
        "min" => 11,
        "summary" => "BPS 2-digit province code",
        "summary:ind" => "Kode provinsi 2-digit BPS",
      },
    ],
    ind_name => [
      "str*",
      {
        "column_index"    => 2,
        "column_sortable" => 1,
        "summary"         => "Name (in Indonesian)",
        "summary:ind"     => "Nama (bahasa Indonesia)",
      },
    ],
    type => [
      "int*",
      {
        "column_index" => 3,
        "column_sortable" => 1,
        "in" => [1, 2],
        "summary" => "Type of locality (1=city, 2=regency)",
        "summary:ind" => "Tipe (1=kota, 2=kabupaten)",
      },
    ],
  },
  "pk" => "bps_code",
  "summary" => "Localities (cities & regencies) in Indonesia",
  "summary:ind" => "Kota/kabupaten di Indonesia",
  "table_aliases:ind" => ["kota_kabupaten_ind"],
};
# END IMPORT META

my $res = gen_read_table_func(
    table_data => $data,
    table_spec => $meta,
    default_fields => 'ind_name',
);

die "BUG: Can't generate func: $res->[0] - $res->[1]"
    unless $res->[0] == 200;

my $spec = $res->[2]{spec};
$SPEC{list_id_localities} = $spec;
no warnings;
*list_id_localities = $res->[2]{code};
use warnings;

1;


=pod

=head1 NAME

Locale::ID::Locality - List of localities (cities/regencies) in Indonesia

=head1 VERSION

version 0.01

=head1 SYNOPSIS

 use Locale::ID::Locality qw(list_id_localities);
 my $res = list_id_localities(detail=>1);

=head1 DESCRIPTION

This module provides API access for list of localities (cities/regencies) in
Indonesia. Data is currently retrieved from the B<gudang-data-interim>
repository at
https://github.com/sharyanto/gudang-data-interim/tree/master/data/ind_locality/

This module's functions have L<Sub::Spec> specs.

=head1 FUNCTIONS

None are exported by default, but they are exportable.

=head2 list_id_localities(%args) -> [STATUS_CODE, ERR_MSG, RESULT]


Returns a 3-element arrayref. STATUS_CODE is 200 on success, or an error code
between 3xx-5xx (just like in HTTP). ERR_MSG is a string containing error
message, RESULT is the actual result.

Field selection arguments (C<*> denotes required arguments):

=over 4

=item * B<detail> => I<bool> (default C<0>)

Return detailed data (all fields).

=item * B<fields> => I<array> (default C<"ind_name">)

Select fields to return.

=item * B<show_field_names> => I<bool>

Show field names in result (as hash/assoc).

When off, will return an array of values without field names (array/list). When
on, will return an array of field names and values (hash/associative array).

=back

Filter arguments:

=over 4

=item * B<q> => I<str>

Search.

=back

Filter for bps_code arguments:

=over 4

=item * B<bps_code> => I<int>

Only return results having certain value of bps_code.

=item * B<max_bps_code> => I<int>

Only return results having a certain maximum value of bps_code.

=item * B<min_bps_code> => I<int>

Only return results having a certain minimum value of bps_code.

=back

Filter for bps_prov_code arguments:

=over 4

=item * B<bps_prov_code> => I<int>

Only return results having certain value of bps_prov_code.

=item * B<max_bps_prov_code> => I<int>

Only return results having a certain maximum value of bps_prov_code.

=item * B<min_bps_prov_code> => I<int>

Only return results having a certain minimum value of bps_prov_code.

=back

Filter for ind_name arguments:

=over 4

=item * B<ind_name> => I<str>

Only return results having certain value of ind_name.

=item * B<ind_name_contain> => I<str>

Only return results with ind_name containing certain text.

=item * B<ind_name_match> => I<str>

Only return results with ind_name matching specified regex.

=item * B<ind_name_not_contain> => I<str>

Only return results with ind_name not containing certain text.

=item * B<ind_name_not_match> => I<str>

Only return results with ind_name matching specified regex.

=item * B<max_ind_name> => I<str>

Only return results having a certain maximum value of ind_name.

=item * B<min_ind_name> => I<str>

Only return results having a certain minimum value of ind_name.

=back

Filter for type arguments:

=over 4

=item * B<max_type> => I<int>

Only return results having a certain maximum value of type.

=item * B<min_type> => I<int>

Only return results having a certain minimum value of type.

=item * B<type> => I<int>

Only return results having certain value of type.

=back

Order arguments:

=over 4

=item * B<random> => I<bool> (default C<0>)

If on, return result in random order.

=item * B<sort> => I<str>

Order data according to certain fields.

A list of field names separated by comma. Each field can be prefixed with '-' to
specify descending order instead of the default ascending.

=back

Paging arguments:

=over 4

=item * B<result_limit> => I<int>

Only return a certain number of results.

=item * B<result_start> => I<int> (default C<1>)

Only return results from a certain position.

=back

=head1 SEE ALSO

L<list-id-localities>

Gudang Data Interim project, https://github.com/sharyanto/gudang-data-interim/

This API will also be available on GudangAPI, http://gudangapi.com/

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__
# ABSTRACT: List of localities (cities/regencies) in Indonesia

