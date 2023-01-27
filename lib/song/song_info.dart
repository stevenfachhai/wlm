import 'package:wlm/song/song_lyric.dart';

const songInfo = {
  '1': {
    'title': 'A hmangaihna a lo ni',
    'language': 'mizo',
    'lyrics': ahmangaihnaaloni,
    'link': 'www.youtube.com/https://youtu.be/HjBo0q0EPtM'
  },
  '2': {
    'title': 'An hrilhfiah',
    'language': 'mizo',
    'lyrics': anhrilhfiah,
    'link': 'www.youtube.com/https://youtu.be/lMUZgcUYzDM',
  },
  '3': {
    'title': 'Aman engkimah min hria e',
    'language': 'mizo',
    'lyrics': amanengkimahminhria,
    'link': 'www.youtube.com/https://youtu.be/vkp590eaSz4',
  },
  '4': {
    'title': 'Amen ka pe lo thei lo',
    'language': 'mizo',
    'lyrics': amenkapelotheilo,
    'link': 'www.youtube.com/https://youtu.be/m8IEpdpME6Y',
  },
  '5': {
    'title': 'Amen! Silfai ka ni',
    'language': 'mizo',
    'lyrics': amenSilfaikani,
    'link': 'www.youtube.com/https://youtu.be/khlqJCfLKQI',
  },
  '6': {
    'title': 'A ṭha e',
    'language': 'mizo',
    'lyrics': athae,
    'link': 'www.youtube.com/https://youtu.be/jpGi1wVPyzI',
  },
  '7': {
    'title': 'Aw ropuiber',
    'language': 'mizo',
    'lyrics': awropuiber,
    'link': 'www.youtube.com/https://youtu.be/HbBqjiMVafk',
  },
  '8': {
    'title': 'Bultan min phal sak',
    'language': 'mizo',
    'lyrics': bultanminphalsak,
    'link': 'www.youtube.com/https://youtu.be/Csi67pEKH3A',
  },
  '9': {
    'title': 'Chawimawina',
    'language': 'mizo',
    'lyrics': chawmawinazawngkahlanche,
    'link': 'www.youtube.com/https://youtu.be/59tSCeBuxQY',
  },
  '10': {
    'title': 'Chhandamtu min hruaina lamtluang',
    'language': 'mizo',
    'lyrics': chhandamtuminhruainalamtluang,
    'link': 'www.youtube.com/https://youtu.be/TUoBoXChYfU',
  },
  '11': {
    'title': 'Danglamlo krista',
    'language': 'mizo',
    'lyrics': danglamlokrista,
    'link': 'www.youtube.com/https://youtu.be/Bkc7DlcPmpE',
  },
  '12': {
    'title': 'Duhthlanna sang ber',
    'language': 'mizo',
    'lyrics': duhthlannasangber,
    'link': 'www.youtube.com/https://youtu.be/-82eQDK-bbs',
  },
  '13': {
    'title': 'Engtia awm thei nge?',
    'language': 'mizo',
    'lyrics': engtiaawmtheinge,
    'link': 'www.youtube.com/https://youtu.be/G9aUVdBjSwY',
  },
  '14': {
    'title': 'Eng vang nge',
    'language': 'mizo',
    'lyrics': engvangnge,
    'link': 'www.youtube.com/https://youtu.be/QcvBD6B4RYM',
  },
  '15': {
    'title': 'El Dorado',
    'language': 'mizo',
    'lyrics': eldoradomizo,
    'link': 'www.youtube.com/https://youtu.be/8ukstCOI174',
  },
  '16': {
    'title': 'Hmangaihtu',
    'language': 'mizo',
    'lyrics': hmangaihtu,
    'link': 'www.youtube.com/https://youtu.be/3hqA7exUg0U',
  },
  '17': {
    'title': 'Hringnun kan zin kawngah hian',
    'language': 'mizo',
    'lyrics': hringnunkanzinkawngahhian,
    'link': 'www.youtube.com/https://youtu.be/OY5-hzSceEU',
  },
  '18': {
    'title': 'Hriatchian lehzual che hi',
    'language': 'mizo',
    'lyrics': hriatchianlehzualchehi,
    'link': 'www.youtube.com/https://youtu.be/frY-352fu1A',
  },
  '19': {
    'title': 'I hlu a ni',
    'language': 'mizo',
    'lyrics': hriatchianlehzualchehi,
    'link': 'www.youtube.com/https://youtu.be/y9wr46Pe6xI',
  },
  '20': {
    'title': 'I lam kan lo hawi',
    'language': 'mizo',
    'lyrics': ilamkanlohawi,
    'link': 'www.youtube.com/https://youtu.be/NglqcMbMdzY',
  },
  '21': {
    'title': 'Indona',
    'language': 'mizo',
    'lyrics': ilamkanlohawi,
    'link': 'www.youtube.com/https://youtu.be/kdNakn06vdI',
  },
  '22': {
    'title': 'Isua Lal ber ani',
    'language': 'mizo',
    'lyrics': isualalber,
    'link': 'www.youtube.com/https://youtu.be/NeD1ANr_IiI',
  },
  '23': {
    'title': 'I zalen',
    'language': 'mizo',
    'lyrics': izalen,
    'link': 'www.youtube.com/https://youtu.be/FLX4d02tdX0',
  },
  '24': {
    'title': 'Ka dam lai nun kawng',
    'language': 'mizo',
    'lyrics': izalen,
    'link': 'www.youtube.com/https://youtu.be/ToF0vmgtw8c',
  },
  '25': {
    'title': 'Ka dai zel dawn',
    'language': 'mizo',
    'lyrics': kadaizeldawn,
    'link': 'www.youtube.com/https://youtu.be/otKn2dgP9YI',
  },
  '26': {
    'title': 'Ka duh ber Lalpa',
    'language': 'mizo',
    'lyrics': kaduhberlalpa,
    'link': 'www.youtube.com/https://youtu.be/s-IKpi4B3UI',
  },
  '27': {
    'title': 'ka hnaih nan che',
    'language': 'mizo',
    'lyrics': kahnaihnanche,
    'link': 'www.youtube.com/https://youtu.be/IJqYPjI5WOM',
  },
  '28': {
    'title': 'Ka lawm e Isu',
    'language': 'mizo',
    'lyrics': kalawmeisu,
    'link': 'www.youtube.com/https://youtu.be/M6LozoEWfg8',
  },
  '29': {
    'title': 'Ka lawm e Lalpa',
    'language': 'mizo',
    'lyrics': kalawmelalpa,
    'link': 'www.youtube.com/https://youtu.be/1bKn5OCkkyE',
  },
  '30': {
    'title': 'ka lo kir e',
    'language': 'mizo',
    'lyrics': kalokire,
    'link': 'www.youtube.com/https://youtu.be/h1hQrMOIb5Y',
  },
  '31': {
    'title': 'Kan fak che',
    'language': 'mizo',
    'lyrics': kanfakche,
    'link': 'www.youtube.com/https://youtu.be/Ets6LriJm-w',
  },
  '32': {
    'title': 'Kan thinlung kan hlan che',
    'language': 'mizo',
    'lyrics': kanthinlunghi,
    'link': 'www.youtube.com/https://youtu.be/TT1kE6tDwU4',
  },
  '33': {
    'title': 'Ka nun hnâr kaitu',
    'language': 'mizo',
    'lyrics': kanunhnarkaitu,
    'link': 'www.youtube.com/https://youtu.be/p_OUNpEEx3w',
  },
  '34': {
    'title': 'Kan zai I tan',
    'language': 'mizo',
    'lyrics': kanzaiitan,
    'link': 'www.youtube.com/https://youtu.be/TxBERRbz-W0',
  },
  '35': {
    'title': 'Ka rawn in hlan e',
    'language': 'mizo',
    'lyrics': karawninhlane,
    'link': 'www.youtube.com/https://youtu.be/9eD07EG2FTw',
  },
  '36': {
    'title': 'Ka rinchhan Lalpa',
    'language': 'mizo',
    'lyrics': karinchhanLalpan,
    'link': 'www.youtube.com/https://youtu.be/Yq0sEFQu6hc',
  },
  '37': {
    'title': 'Ka ring zel ang che',
    'language': 'mizo',
    'lyrics': karingzelangche,
    'link': 'www.youtube.com/https://youtu.be/HGCvnnk_TjQ',
  },
  '38': {
    'title': 'Ka tawrh hi Lalpan a phal',
    'language': 'mizo',
    'lyrics': katawrhhilalpanaphal,
    'link': 'www.youtube.com/https://youtu.be/G4fr3PDVLy8',
  },
  '39': {
    'title': 'Ka tling si lo',
    'language': 'mizo',
    'lyrics': katlingsilo,
    'link': 'www.youtube.com/https://youtu.be/AS4JhjKzso0',
  },
  '40': {
    'title': 'Ka thinglungah a nung',
    'language': 'mizo',
    'lyrics': kathinglungahanung,
    'link': 'www.youtube.com/https://youtu.be/yDd9UNuhHv8',
  },
  '41': {
    'title': 'Ka thupui ber',
    'language': 'mizo',
    'lyrics': kathupuiber,
    'link': 'www.youtube.com/https://youtu.be/wsnJvCxgAX8',
  },
  '42': {
    'title': 'Ka zawng zawng hian fak che a nuam',
    'language': 'mizo',
    'lyrics': kazawngzawnghianfakcheanuam,
    'link': 'www.youtube.com/https://youtu.be/axt9darYYbk',
  },
  '43': {
    'title': 'Khawngaihna',
    'language': 'mizo',
    'lyrics': Khawngaihna,
    'link': 'www.youtube.com/https://youtu.be/lgEC3Z8XhDY',
  },
  '44': {
    'title': 'Kraws kawng',
    'language': 'mizo',
    'lyrics': krawkawng,
    'link': 'www.youtube.com/https://youtu.be/k2M2S9WSnBQ',
  },
  '45': {
    'title': 'Lalpa atha ani',
    'language': 'mizo',
    'lyrics': lalpaathaani,
    'link': 'www.youtube.com/https://youtu.be/oPvMhkiQ1m0',
  },
  '46': {
    'title': 'Lalpa atha',
    'language': 'mizo',
    'lyrics': lalpaatha,
    'link': 'www.youtube.com/https://youtu.be/en82XRTJJW8',
  },
  '47': {
    'title': 'Lalpa thatna',
    'language': 'mizo',
    'lyrics': lalpathatna,
    'link': 'www.youtube.com/https://youtu.be/W-bGOi9Cmls',
  },
  '48': {
    'title': 'Lalpa Ini',
    'language': 'mizo',
    'lyrics': lalpaini,
    'link': 'www.youtube.com/https://youtu.be/N1ttXyN3Iag',
  },
  '49': {
    'title': 'Lalpa mi hriat',
    'language': 'mizo',
    'lyrics': lalpamihriat,
    'link': 'www.youtube.com/https://youtu.be/-4v9EyBODKM',
  },
  '50': {
    'title': 'Lalpan min hria',
    'language': 'mizo',
    'lyrics': lalpaminhria,
    'link': 'www.youtube.com/https://youtu.be/26SHA1vh1fI',
  },
  '51': {
    'title': 'Lalpa remruat',
    'language': 'mizo',
    'lyrics': lalparemruat,
    'link': 'www.youtube.com/https://youtu.be/xHjsd0ibTAM',
  },
  '52': {
    'title': 'Min chhung khat la',
    'language': 'mizo',
    'lyrics': minchhungkhatla,
    'link': 'www.youtube.com/https://youtu.be/x5xIfH2ELYk',
  },
  '53': {
    'title': 'Min dilsak thin',
    'language': 'mizo',
    'lyrics': mindilsakthin,
    'link': 'www.youtube.com/https://youtu.be/iMbMxNn3bqg',
  },
  '54': {
    'title': 'Min hmangaih loh i thei lo',
    'language': 'mizo',
    'lyrics': minhmangaihlohItheilo,
    'link': 'www.youtube.com/https://youtu.be/uoUeGX3gcNQ',
  },
  '55': {
    'title': 'Min hmangaih si a',
    'language': 'mizo',
    'lyrics': minhmangaihsia,
    'link': 'www.youtube.com/https://youtu.be/5i7bVytO1As',
  },
  '56': {
    'title': 'Min hruai la ka zui ang che',
    'language': 'mizo',
    'lyrics': minhruailakazuiangche,
    'link': 'www.youtube.com/https://youtu.be/tNqw2gtIuaY',
  },
  '57': {
    'title': 'Min ti harh leh rawh',
    'language': 'mizo',
    'lyrics': mintiharhlehrawh,
    'link': 'www.youtube.com/https://youtu.be/j2rXDQxLyMY',
  },
  '58': {
    'title': 'Nang chauh i ni',
    'language': 'mizo',
    'lyrics': nangchauhini,
    'link': 'www.youtube.com/https://youtu.be/FSs3aOHhdBc',
  },
  '59': {
    'title': 'Nang fak zel che',
    'language': 'mizo',
    'lyrics': nangfakzelche,
    'link': 'www.youtube.com/https://youtu.be/zpiKFs9d7ys',
  },
  '60': {
    'title': 'Nang ka himna i ni si',
    'language': 'mizo',
    'lyrics': nangkahimnainisi,
    'link': 'www.youtube.com/https://youtu.be/F_draC2gnOM',
  },
  '61': {
    'title': 'Nang nen chuan',
    'language': 'mizo',
    'lyrics': nangnenchuan,
    'link': 'www.youtube.com/https://youtu.be/Ltlb3z5BEzs',
  },
  '62': {
    'title': 'Nazareth',
    'language': 'mizo',
    'lyrics': nazareth,
    'link': 'www.youtube.com/https://youtu.be/Bmv66qK4oK4',
  },
  '63': {
    'title': 'Nitin hian',
    'language': 'mizo',
    'lyrics': nitinhian,
    'link': 'www.youtube.com/https://youtu.be/OjdJblwxZ2c',
  },
  '64': {
    'title': 'Pathian hmel',
    'language': 'mizo',
    'lyrics': pathianhmelduhawm,
    'link': 'www.youtube.com/https://youtu.be/GxbMPtrhCVs',
  },
  '65': {
    'title': 'Pathian hnen ata ka bo hnu',
    'language': 'mizo',
    'lyrics': pathianhnenata,
    'link': 'www.youtube.com/https://youtu.be/vOWOtdaSn3I',
  },
  '66': {
    'title': 'Phuloh hmangaihna chu',
    'language': 'mizo',
    'lyrics': phulohmangaihna,
    'link': 'www.youtube.com/https://youtu.be/bBDROhI3A58',
  },
  '67': {
    'title': 'Rabboni',
    'language': 'mizo',
    'lyrics': rabboni,
    'link': 'www.youtube.com/https://youtu.be/oog8tybmCZE',
  },
  '68': {
    'title': 'Rimawi ropui ber',
    'language': 'mizo',
    'lyrics': rimawiropuiber,
    'link': 'www.youtube.com/https://youtu.be/MCPDAiku7TE',
  },
  '69': {
    'title': 'Rohlu Isua ka nei',
    'language': 'mizo',
    'lyrics': rohluisuakanei,
    'link': 'www.youtube.com/https://youtu.be/SWgkXwwf6jw',
  },
  '70': {
    'title': 'Siamtu duatlai',
    'language': 'mizo',
    'lyrics': siamduatlai,
    'link': 'www.youtube.com/https://youtu.be/jJ7gUTHXkiw',
  },
  '71': {
    'title': 'Thian tha ber Isua',
    'language': 'mizo',
    'lyrics': siamduatlai,
    'link': 'www.youtube.com/https://youtu.be/bTti6eOWo_w',
  },
  '72': {
    'title': 'Thlei bik i nei lo',
    'language': 'mizo',
    'lyrics': siamduatlai,
    'link': 'www.youtube.com/https://youtu.be/FLRK7hWpmb4',
  },
  '73': {
    'title': 'Tlawm lua mah la',
    'language': 'mizo',
    'lyrics': siamduatlai,
    'link': 'www.youtube.com/https://youtu.be/tXnuAKvxWZs',
  },
  '74': {
    'title': 'Uire nu',
    'language': 'mizo',
    'lyrics': siamduatlai,
    'link': 'www.youtube.com/https://youtu.be/abFA9flHzZw',
  },
  '75': {
    'title': 'Van ruahtui',
    'language': 'mizo',
    'lyrics': siamduatlai,
    'link': 'www.youtube.com/https://youtu.be/pT7VT9xuyFE',
  },
};
