part of 'mocked_api_client.dart';

typedef _ResponseData = Map<String, Object?>;

class _MockedApiClientRepository {
  _MockedApiClientRepository._();

  static List<Todo> getTodos() {
    final dynamic json = {
      "todos": [
        {
          "id": 1,
          "todo": "Do something nice for someone I care about",
          "completed": true,
          "userId": 26
        },
        {
          "id": 2,
          "todo": "Memorize the fifty states and their capitals",
          "completed": false,
          "userId": 48
        },
        {"id": 3, "todo": "Watch a classic movie", "completed": false, "userId": 4},
        {
          "id": 4,
          "todo": "Contribute code or a monetary donation to an open-source software project",
          "completed": false,
          "userId": 48
        },
        {"id": 5, "todo": "Solve a Rubik's cube", "completed": false, "userId": 31},
        {"id": 6, "todo": "Bake pastries for me and neighbor", "completed": false, "userId": 39},
        {"id": 7, "todo": "Go see a Broadway production", "completed": false, "userId": 32},
        {
          "id": 8,
          "todo": "Write a thank you letter to an influential person in my life",
          "completed": true,
          "userId": 13
        },
        {
          "id": 9,
          "todo": "Invite some friends over for a game night",
          "completed": false,
          "userId": 47
        },
        {
          "id": 10,
          "todo": "Have a football scrimmage with some friends",
          "completed": false,
          "userId": 19
        },
        {
          "id": 11,
          "todo": "Text a friend I haven't talked to in a long time",
          "completed": false,
          "userId": 39
        },
        {"id": 12, "todo": "Organize pantry", "completed": true, "userId": 39},
        {"id": 13, "todo": "Buy a new house decoration", "completed": false, "userId": 16},
        {
          "id": 14,
          "todo": "Plan a vacation I've always wanted to take",
          "completed": false,
          "userId": 28
        },
        {"id": 15, "todo": "Clean out car", "completed": false, "userId": 33},
        {"id": 16, "todo": "Draw and color a Mandala", "completed": true, "userId": 24},
        {
          "id": 17,
          "todo": "Create a cookbook with favorite recipes",
          "completed": false,
          "userId": 1
        },
        {"id": 18, "todo": "Bake a pie with some friends", "completed": false, "userId": 1},
        {"id": 19, "todo": "Create a compost pile", "completed": true, "userId": 5},
        {"id": 20, "todo": "Take a hike at a local park", "completed": true, "userId": 43},
        {
          "id": 21,
          "todo": "Take a class at local community center that interests you",
          "completed": false,
          "userId": 22
        },
        {"id": 22, "todo": "Research a topic interested in", "completed": false, "userId": 4},
        {"id": 23, "todo": "Plan a trip to another country", "completed": true, "userId": 37},
        {"id": 24, "todo": "Improve touch typing", "completed": false, "userId": 45},
        {"id": 25, "todo": "Learn Express.js", "completed": false, "userId": 49},
        {"id": 26, "todo": "Learn calligraphy", "completed": false, "userId": 50},
        {
          "id": 27,
          "todo": "Have a photo session with some friends",
          "completed": false,
          "userId": 14
        },
        {"id": 28, "todo": "Go to the gym", "completed": false, "userId": 15},
        {"id": 29, "todo": "Make own LEGO creation", "completed": false, "userId": 30},
        {"id": 30, "todo": "Take cat on a walk", "completed": false, "userId": 15}
      ],
      "total": 150,
      "skip": 0,
      "limit": 30
    };

    return (json['todos'] as List).cast<_ResponseData>().map(Todo.fromJson).toList();
  }

  static List<_ResponseData> getUsersRaw() {
    final dynamic json = {
      "users": [
        {
          "id": 1,
          "username": "atuny0",
          "password": "9uQFF1Lh",
          "email": "atuny0@sohu.com",
          "firstName": "Terry",
          "lastName": "Medhurst",
          "gender": "male",
          "image": "https://robohash.org/Terry.png?set=set4"
        },
        {
          "id": 2,
          "username": "hbingley1",
          "password": "CQutx25i8r",
          "email": "hbingley1@plala.or.jp",
          "firstName": "Sheldon",
          "lastName": "Quigley",
          "gender": "male",
          "image": "https://robohash.org/Sheldon.png?set=set4"
        },
        {
          "id": 3,
          "username": "rshawe2",
          "password": "OWsTbMUgFc",
          "email": "rshawe2@51.la",
          "firstName": "Terrill",
          "lastName": "Hills",
          "gender": "male",
          "image": "https://robohash.org/Terrill.png?set=set4"
        },
        {
          "id": 4,
          "username": "yraigatt3",
          "password": "sRQxjPfdS",
          "email": "yraigatt3@nature.com",
          "firstName": "Miles",
          "lastName": "Cummerata",
          "gender": "male",
          "image": "https://robohash.org/Miles.png?set=set4"
        },
        {
          "id": 5,
          "username": "kmeus4",
          "password": "aUTdmmmbH",
          "email": "kmeus4@upenn.edu",
          "firstName": "Mavis",
          "lastName": "Schultz",
          "gender": "male",
          "image": "https://robohash.org/Mavis.png?set=set4"
        },
        {
          "id": 6,
          "username": "jtreleven5",
          "password": "zY1nE46Zm",
          "email": "jtreleven5@nhs.uk",
          "firstName": "Alison",
          "lastName": "Reichert",
          "gender": "female",
          "image": "https://robohash.org/Alison.png?set=set4"
        },
        {
          "id": 7,
          "username": "dpettegre6",
          "password": "YVmhktgYVS",
          "email": "dpettegre6@columbia.edu",
          "firstName": "Oleta",
          "lastName": "Abbott",
          "gender": "female",
          "image": "https://robohash.org/Oleta.png?set=set4"
        },
        {
          "id": 8,
          "username": "ggude7",
          "password": "MWwlaeWcOoF6",
          "email": "ggude7@chron.com",
          "firstName": "Ewell",
          "lastName": "Mueller",
          "gender": "male",
          "image": "https://robohash.org/Ewell.png?set=set4"
        },
        {
          "id": 9,
          "username": "nloiterton8",
          "password": "HTQxxXV9Bq4",
          "email": "nloiterton8@aol.com",
          "firstName": "Demetrius",
          "lastName": "Corkery",
          "gender": "male",
          "image": "https://robohash.org/Demetrius.png?set=set4"
        },
        {
          "id": 10,
          "username": "umcgourty9",
          "password": "i0xzpX",
          "email": "umcgourty9@jalbum.net",
          "firstName": "Eleanora",
          "lastName": "Price",
          "gender": "female",
          "image": "https://robohash.org/Eleanora.png?set=set4"
        },
        {
          "id": 11,
          "username": "acharlota",
          "password": "M9lbMdydMN",
          "email": "acharlota@liveinternet.ru",
          "firstName": "Marcel",
          "lastName": "Jones",
          "gender": "male",
          "image": "https://robohash.org/Marcel.png?set=set4"
        },
        {
          "id": 12,
          "username": "rhallawellb",
          "password": "esTkitT1r",
          "email": "rhallawellb@dropbox.com",
          "firstName": "Assunta",
          "lastName": "Rath",
          "gender": "female",
          "image": "https://robohash.org/Assunta.png?set=set4"
        },
        {
          "id": 13,
          "username": "lgribbinc",
          "password": "ftGj8LZTtv9g",
          "email": "lgribbinc@posterous.com",
          "firstName": "Trace",
          "lastName": "Douglas",
          "gender": "male",
          "image": "https://robohash.org/Trace.png?set=set4"
        },
        {
          "id": 14,
          "username": "mturleyd",
          "password": "GyLnCB8gNIp",
          "email": "mturleyd@tumblr.com",
          "firstName": "Enoch",
          "lastName": "Lynch",
          "gender": "male",
          "image": "https://robohash.org/Enoch.png?set=set4"
        },
        {
          "id": 15,
          "username": "kminchelle",
          "password": "0lelplR",
          "email": "kminchelle@qq.com",
          "firstName": "Jeanne",
          "lastName": "Halvorson",
          "gender": "female",
          "image": "https://robohash.org/Jeanne.png?set=set4"
        },
        {
          "id": 16,
          "username": "dpierrof",
          "password": "Vru55Y4tufI4",
          "email": "dpierrof@vimeo.com",
          "firstName": "Trycia",
          "lastName": "Fadel",
          "gender": "female",
          "image": "https://robohash.org/Trycia.png?set=set4"
        },
        {
          "id": 17,
          "username": "vcholdcroftg",
          "password": "mSPzYZfR",
          "email": "vcholdcroftg@ucoz.com",
          "firstName": "Bradford",
          "lastName": "Prohaska",
          "gender": "male",
          "image": "https://robohash.org/Bradford.png?set=set4"
        },
        {
          "id": 18,
          "username": "sberminghamh",
          "password": "cAjfb8vg",
          "email": "sberminghamh@chron.com",
          "firstName": "Arely",
          "lastName": "Skiles",
          "gender": "male",
          "image": "https://robohash.org/Arely.png?set=set4"
        },
        {
          "id": 19,
          "username": "bleveragei",
          "password": "UZGAiqPqWQHQ",
          "email": "bleveragei@so-net.ne.jp",
          "firstName": "Gust",
          "lastName": "Purdy",
          "gender": "male",
          "image": "https://robohash.org/Gust.png?set=set4"
        },
        {
          "id": 20,
          "username": "aeatockj",
          "password": "szWAG6hc",
          "email": "aeatockj@psu.edu",
          "firstName": "Lenna",
          "lastName": "Renner",
          "gender": "female",
          "image": "https://robohash.org/Lenna.png?set=set4"
        },
        {
          "id": 21,
          "username": "ckensleyk",
          "password": "tq7kPXyf",
          "email": "ckensleyk@pen.io",
          "firstName": "Doyle",
          "lastName": "Ernser",
          "gender": "male",
          "image": "https://robohash.org/Doyle.png?set=set4"
        },
        {
          "id": 22,
          "username": "froachel",
          "password": "rfVSKImC",
          "email": "froachel@howstuffworks.com",
          "firstName": "Tressa",
          "lastName": "Weber",
          "gender": "female",
          "image": "https://robohash.org/Tressa.png?set=set4"
        },
        {
          "id": 23,
          "username": "beykelhofm",
          "password": "zQwaHTHbuZyr",
          "email": "beykelhofm@wikispaces.com",
          "firstName": "Felicity",
          "lastName": "O'Reilly",
          "gender": "female",
          "image": "https://robohash.org/Felicity.png?set=set4"
        },
        {
          "id": 24,
          "username": "brickeardn",
          "password": "bMQnPttV",
          "email": "brickeardn@fema.gov",
          "firstName": "Jocelyn",
          "lastName": "Schuster",
          "gender": "male",
          "image": "https://robohash.org/Jocelyn.png?set=set4"
        },
        {
          "id": 25,
          "username": "dfundello",
          "password": "k9zgV68UKw8m",
          "email": "dfundello@amazon.co.jp",
          "firstName": "Edwina",
          "lastName": "Ernser",
          "gender": "female",
          "image": "https://robohash.org/Edwina.png?set=set4"
        },
        {
          "id": 26,
          "username": "lgronaverp",
          "password": "4a1dAKDv9KB9",
          "email": "lgronaverp@cornell.edu",
          "firstName": "Griffin",
          "lastName": "Braun",
          "gender": "male",
          "image": "https://robohash.org/Griffin.png?set=set4"
        },
        {
          "id": 27,
          "username": "fokillq",
          "password": "xZnWSWnqH",
          "email": "fokillq@amazon.co.jp",
          "firstName": "Piper",
          "lastName": "Schowalter",
          "gender": "female",
          "image": "https://robohash.org/Piper.png?set=set4"
        },
        {
          "id": 28,
          "username": "xisherwoodr",
          "password": "HLDqN5vCF",
          "email": "xisherwoodr@ask.com",
          "firstName": "Kody",
          "lastName": "Terry",
          "gender": "male",
          "image": "https://robohash.org/Kody.png?set=set4"
        },
        {
          "id": 29,
          "username": "jissetts",
          "password": "ePawWgrnZR8L",
          "email": "jissetts@hostgator.com",
          "firstName": "Macy",
          "lastName": "Greenfelder",
          "gender": "female",
          "image": "https://robohash.org/Macy.png?set=set4"
        },
        {
          "id": 30,
          "username": "kdulyt",
          "password": "5t6q4KC7O",
          "email": "kdulyt@umich.edu",
          "firstName": "Maurine",
          "lastName": "Stracke",
          "gender": "female",
          "image": "https://robohash.org/Maurine.png?set=set4"
        },
        {
          "id": 31,
          "username": "smargiottau",
          "password": "pSGvhgS2A",
          "email": "smargiottau@altervista.org",
          "firstName": "Luciano",
          "lastName": "Sauer",
          "gender": "male",
          "image": "https://robohash.org/Luciano.png?set=set4"
        },
        {
          "id": 32,
          "username": "lskeelv",
          "password": "Eolj9Svg28",
          "email": "lskeelv@webeden.co.uk",
          "firstName": "Kaya",
          "lastName": "Emard",
          "gender": "female",
          "image": "https://robohash.org/Kaya.png?set=set4"
        },
        {
          "id": 33,
          "username": "gsilcockw",
          "password": "AI6RmBSXjw2S",
          "email": "gsilcockw@infoseek.co.jp",
          "firstName": "Lee",
          "lastName": "Schmidt",
          "gender": "male",
          "image": "https://robohash.org/Lee.png?set=set4"
        },
        {
          "id": 34,
          "username": "aaughtonx",
          "password": "Vzwc72RhNGu",
          "email": "aaughtonx@businessweek.com",
          "firstName": "Darien",
          "lastName": "Witting",
          "gender": "male",
          "image": "https://robohash.org/Darien.png?set=set4"
        },
        {
          "id": 35,
          "username": "mbrooksbanky",
          "password": "9V8lqrkq",
          "email": "mbrooksbanky@gnu.org",
          "firstName": "Jacklyn",
          "lastName": "Schimmel",
          "gender": "female",
          "image": "https://robohash.org/Jacklyn.png?set=set4"
        },
        {
          "id": 36,
          "username": "dalmondz",
          "password": "wM5tOHRMQt6g",
          "email": "dalmondz@joomla.org",
          "firstName": "Angelica",
          "lastName": "Baumbach",
          "gender": "female",
          "image": "https://robohash.org/Angelica.png?set=set4"
        },
        {
          "id": 37,
          "username": "nwytchard10",
          "password": "ij8mFevk",
          "email": "nwytchard10@blogspot.com",
          "firstName": "Delfina",
          "lastName": "Ziemann",
          "gender": "female",
          "image": "https://robohash.org/Delfina.png?set=set4"
        },
        {
          "id": 38,
          "username": "igannan11",
          "password": "MB63jkg3W",
          "email": "igannan11@microsoft.com",
          "firstName": "Thaddeus",
          "lastName": "McCullough",
          "gender": "male",
          "image": "https://robohash.org/Thaddeus.png?set=set4"
        },
        {
          "id": 39,
          "username": "lgherardi12",
          "password": "m0eNOs",
          "email": "lgherardi12@washington.edu",
          "firstName": "Salvatore",
          "lastName": "Fisher",
          "gender": "male",
          "image": "https://robohash.org/Salvatore.png?set=set4"
        },
        {
          "id": 40,
          "username": "lgutridge13",
          "password": "SqR03CE",
          "email": "lgutridge13@sun.com",
          "firstName": "Jasmin",
          "lastName": "Hermiston",
          "gender": "male",
          "image": "https://robohash.org/Jasmin.png?set=set4"
        },
        {
          "id": 41,
          "username": "cslateford14",
          "password": "wpbWfIbpIgGc",
          "email": "cslateford14@blogspot.com",
          "firstName": "Nicklaus",
          "lastName": "Cruickshank",
          "gender": "male",
          "image": "https://robohash.org/Nicklaus.png?set=set4"
        },
        {
          "id": 42,
          "username": "mhaslegrave15",
          "password": "sq5FYgvU",
          "email": "mhaslegrave15@springer.com",
          "firstName": "Tiara",
          "lastName": "Rolfson",
          "gender": "female",
          "image": "https://robohash.org/Tiara.png?set=set4"
        },
        {
          "id": 43,
          "username": "kbrecknock16",
          "password": "KoNiIBiHE",
          "email": "kbrecknock16@marriott.com",
          "firstName": "Garret",
          "lastName": "Klocko",
          "gender": "male",
          "image": "https://robohash.org/Garret.png?set=set4"
        },
        {
          "id": 44,
          "username": "rlaxe17",
          "password": "OHFibd",
          "email": "rlaxe17@tamu.edu",
          "firstName": "Reginald",
          "lastName": "Wisoky",
          "gender": "male",
          "image": "https://robohash.org/Reginald.png?set=set4"
        },
        {
          "id": 45,
          "username": "pidill18",
          "password": "GbBDdjbKG1a2",
          "email": "pidill18@china.com.cn",
          "firstName": "Humberto",
          "lastName": "Botsford",
          "gender": "male",
          "image": "https://robohash.org/Humberto.png?set=set4"
        },
        {
          "id": 46,
          "username": "rmcritchie19",
          "password": "QFSwkjeVEhOQ",
          "email": "rmcritchie19@topsy.com",
          "firstName": "Justus",
          "lastName": "Sipes",
          "gender": "male",
          "image": "https://robohash.org/Justus.png?set=set4"
        },
        {
          "id": 47,
          "username": "rlangston1a",
          "password": "rU8ybew",
          "email": "rlangston1a@51.la",
          "firstName": "Coralie",
          "lastName": "Boyle",
          "gender": "female",
          "image": "https://robohash.org/Coralie.png?set=set4"
        },
        {
          "id": 48,
          "username": "jevanson1b",
          "password": "1Dlvqluwi5zO",
          "email": "jevanson1b@admin.ch",
          "firstName": "Felicita",
          "lastName": "Gibson",
          "gender": "female",
          "image": "https://robohash.org/Felicita.png?set=set4"
        },
        {
          "id": 49,
          "username": "ssarjant1c",
          "password": "y2YBSxtcmXVW",
          "email": "ssarjant1c@statcounter.com",
          "firstName": "Pearl",
          "lastName": "Blick",
          "gender": "female",
          "image": "https://robohash.org/Pearl.png?set=set4"
        },
        {
          "id": 50,
          "username": "xlinster1d",
          "password": "WHAE1AtmDh",
          "email": "xlinster1d@bravesites.com",
          "firstName": "Johnathon",
          "lastName": "Predovic",
          "gender": "male",
          "image": "https://robohash.org/Johnathon.png?set=set4"
        },
        {
          "id": 51,
          "username": "tmullender1e",
          "password": "fxJRvUVCFA95",
          "email": "tmullender1e@scientificamerican.com",
          "firstName": "Jerry",
          "lastName": "Kertzmann",
          "gender": "male",
          "image": "https://robohash.org/Jerry.png?set=set4"
        },
        {
          "id": 52,
          "username": "gmein1f",
          "password": "VYaG1Ew",
          "email": "gmein1f@nasa.gov",
          "firstName": "Elbert",
          "lastName": "Gottlieb",
          "gender": "male",
          "image": "https://robohash.org/Elbert.png?set=set4"
        },
        {
          "id": 53,
          "username": "gmaccumeskey1g",
          "password": "bETj6uCOI",
          "email": "gmaccumeskey1g@buzzfeed.com",
          "firstName": "Sincere",
          "lastName": "Mueller",
          "gender": "female",
          "image": "https://robohash.org/Sincere.png?set=set4"
        },
        {
          "id": 54,
          "username": "bpetts1h",
          "password": "IxI5sjpNT5F",
          "email": "bpetts1h@smugmug.com",
          "firstName": "Telly",
          "lastName": "Spinka",
          "gender": "female",
          "image": "https://robohash.org/Telly.png?set=set4"
        },
        {
          "id": 55,
          "username": "ajozef1i",
          "password": "uAVFvWB0Pxi",
          "email": "ajozef1i@usatoday.com",
          "firstName": "Hal",
          "lastName": "Keebler",
          "gender": "male",
          "image": "https://robohash.org/Hal.png?set=set4"
        },
        {
          "id": 56,
          "username": "oyakushkev1j",
          "password": "UB3BAOn8Sj7",
          "email": "oyakushkev1j@oracle.com",
          "firstName": "Megane",
          "lastName": "Armstrong",
          "gender": "female",
          "image": "https://robohash.org/Megane.png?set=set4"
        },
        {
          "id": 57,
          "username": "bpickering1k",
          "password": "J4f0Es7sxXVO",
          "email": "bpickering1k@clickbank.net",
          "firstName": "Toy",
          "lastName": "Olson",
          "gender": "male",
          "image": "https://robohash.org/Toy.png?set=set4"
        },
        {
          "id": 58,
          "username": "nworley1l",
          "password": "HhWAr5TR",
          "email": "nworley1l@thetimes.co.uk",
          "firstName": "Deanna",
          "lastName": "Glover",
          "gender": "female",
          "image": "https://robohash.org/Deanna.png?set=set4"
        },
        {
          "id": 59,
          "username": "klife1m",
          "password": "ZdEndJIQLM",
          "email": "klife1m@i2i.jp",
          "firstName": "Marcella",
          "lastName": "Shanahan",
          "gender": "female",
          "image": "https://robohash.org/Marcella.png?set=set4"
        },
        {
          "id": 60,
          "username": "dlambarth1n",
          "password": "1zosSj9eR",
          "email": "dlambarth1n@blinklist.com",
          "firstName": "Rachel",
          "lastName": "Jacobson",
          "gender": "female",
          "image": "https://robohash.org/Rachel.png?set=set4"
        },
        {
          "id": 61,
          "username": "cepgrave1o",
          "password": "BnC5P3MdJ",
          "email": "cepgrave1o@biblegateway.com",
          "firstName": "Nora",
          "lastName": "Sawayn",
          "gender": "female",
          "image": "https://robohash.org/Nora.png?set=set4"
        },
        {
          "id": 62,
          "username": "mpoyner1p",
          "password": "nCTH1QhLCNY",
          "email": "mpoyner1p@google.co.uk",
          "firstName": "Mozell",
          "lastName": "O'Connell",
          "gender": "female",
          "image": "https://robohash.org/Mozell.png?set=set4"
        },
        {
          "id": 63,
          "username": "eburras1q",
          "password": "Y7UmdaATt",
          "email": "eburras1q@go.com",
          "firstName": "Nasir",
          "lastName": "Leuschke",
          "gender": "male",
          "image": "https://robohash.org/Nasir.png?set=set4"
        },
        {
          "id": 64,
          "username": "gfernandes1r",
          "password": "LzI2Plmj",
          "email": "gfernandes1r@virginia.edu",
          "firstName": "Quinn",
          "lastName": "Witting",
          "gender": "male",
          "image": "https://robohash.org/Quinn.png?set=set4"
        },
        {
          "id": 65,
          "username": "hollet1s",
          "password": "WK46QB",
          "email": "hollet1s@trellian.com",
          "firstName": "Jeanne",
          "lastName": "O'Keefe",
          "gender": "female",
          "image": "https://robohash.org/Jeanne.png?set=set4"
        },
        {
          "id": 66,
          "username": "hfasey1t",
          "password": "vDMcOSFj0",
          "email": "hfasey1t@home.pl",
          "firstName": "Terrence",
          "lastName": "Koelpin",
          "gender": "male",
          "image": "https://robohash.org/Terrence.png?set=set4"
        },
        {
          "id": 67,
          "username": "gbarhams1u",
          "password": "uDO326b3Hn7O",
          "email": "gbarhams1u@cnet.com",
          "firstName": "Davonte",
          "lastName": "Heaney",
          "gender": "male",
          "image": "https://robohash.org/Davonte.png?set=set4"
        },
        {
          "id": 68,
          "username": "rstrettle1v",
          "password": "ryhdXB",
          "email": "rstrettle1v@globo.com",
          "firstName": "Everette",
          "lastName": "Prohaska",
          "gender": "female",
          "image": "https://robohash.org/Everette.png?set=set4"
        },
        {
          "id": 69,
          "username": "btegler1w",
          "password": "xx9O9fzZI",
          "email": "btegler1w@elegantthemes.com",
          "firstName": "Oda",
          "lastName": "Schmidt",
          "gender": "male",
          "image": "https://robohash.org/Oda.png?set=set4"
        },
        {
          "id": 70,
          "username": "cmasurel1x",
          "password": "es8eVhVy4c",
          "email": "cmasurel1x@baidu.com",
          "firstName": "Twila",
          "lastName": "Padberg",
          "gender": "female",
          "image": "https://robohash.org/Twila.png?set=set4"
        },
        {
          "id": 71,
          "username": "omarsland1y",
          "password": "MT463NsEI",
          "email": "omarsland1y@washingtonpost.com",
          "firstName": "Amelia",
          "lastName": "Mann",
          "gender": "female",
          "image": "https://robohash.org/Amelia.png?set=set4"
        },
        {
          "id": 72,
          "username": "mcrumpe1z",
          "password": "F8JxU31tNw",
          "email": "mcrumpe1z@techcrunch.com",
          "firstName": "Frederique",
          "lastName": "Boehm",
          "gender": "female",
          "image": "https://robohash.org/Frederique.png?set=set4"
        },
        {
          "id": 73,
          "username": "wfeldon20",
          "password": "cLcJUmA",
          "email": "wfeldon20@netlog.com",
          "firstName": "Clotilde",
          "lastName": "Larson",
          "gender": "female",
          "image": "https://robohash.org/Clotilde.png?set=set4"
        },
        {
          "id": 74,
          "username": "ahinckes21",
          "password": "dIoZ2huN",
          "email": "ahinckes21@google.es",
          "firstName": "Moriah",
          "lastName": "Mills",
          "gender": "male",
          "image": "https://robohash.org/Moriah.png?set=set4"
        },
        {
          "id": 75,
          "username": "ptilson22",
          "password": "jNbmsr",
          "email": "ptilson22@360.cn",
          "firstName": "Claudia",
          "lastName": "Dooley",
          "gender": "female",
          "image": "https://robohash.org/Claudia.png?set=set4"
        },
        {
          "id": 76,
          "username": "cgaber23",
          "password": "nieEPfUI",
          "email": "cgaber23@prlog.org",
          "firstName": "Deon",
          "lastName": "Gutkowski",
          "gender": "male",
          "image": "https://robohash.org/Deon.png?set=set4"
        },
        {
          "id": 77,
          "username": "rkingswood24",
          "password": "0VNksmUL7",
          "email": "rkingswood24@usa.gov",
          "firstName": "Amos",
          "lastName": "Weimann",
          "gender": "male",
          "image": "https://robohash.org/Amos.png?set=set4"
        },
        {
          "id": 78,
          "username": "dbuist25",
          "password": "OlP0CIw",
          "email": "dbuist25@hao123.com",
          "firstName": "Frankie",
          "lastName": "Hudson",
          "gender": "male",
          "image": "https://robohash.org/Frankie.png?set=set4"
        },
        {
          "id": 79,
          "username": "pmoraleda26",
          "password": "QrZGjkTF8eX",
          "email": "pmoraleda26@symantec.com",
          "firstName": "Harrison",
          "lastName": "Lemke",
          "gender": "male",
          "image": "https://robohash.org/Harrison.png?set=set4"
        },
        {
          "id": 80,
          "username": "vkohrt27",
          "password": "yMmUuTZDdPC",
          "email": "vkohrt27@hostgator.com",
          "firstName": "Guy",
          "lastName": "Franecki",
          "gender": "male",
          "image": "https://robohash.org/Guy.png?set=set4"
        },
        {
          "id": 81,
          "username": "capplewhite28",
          "password": "oqqDPsff",
          "email": "capplewhite28@nationalgeographic.com",
          "firstName": "Sidney",
          "lastName": "Rutherford",
          "gender": "male",
          "image": "https://robohash.org/Sidney.png?set=set4"
        },
        {
          "id": 82,
          "username": "kogilvy29",
          "password": "aGX6R9Xd9bd2",
          "email": "kogilvy29@blogtalkradio.com",
          "firstName": "Maymie",
          "lastName": "Yundt",
          "gender": "female",
          "image": "https://robohash.org/Maymie.png?set=set4"
        },
        {
          "id": 83,
          "username": "gconford2a",
          "password": "CNZ3xN",
          "email": "gconford2a@wordpress.com",
          "firstName": "Rita",
          "lastName": "Shields",
          "gender": "female",
          "image": "https://robohash.org/Rita.png?set=set4"
        },
        {
          "id": 84,
          "username": "dmantle2b",
          "password": "SBnr789",
          "email": "dmantle2b@reuters.com",
          "firstName": "Aniya",
          "lastName": "Wisozk",
          "gender": "female",
          "image": "https://robohash.org/Aniya.png?set=set4"
        },
        {
          "id": 85,
          "username": "kpondjones2c",
          "password": "H4IiV9f8jb",
          "email": "kpondjones2c@nsw.gov.au",
          "firstName": "Angelica",
          "lastName": "Metz",
          "gender": "female",
          "image": "https://robohash.org/Angelica.png?set=set4"
        },
        {
          "id": 86,
          "username": "whuman2d",
          "password": "JyHAUcC",
          "email": "whuman2d@hp.com",
          "firstName": "Rupert",
          "lastName": "Upton",
          "gender": "male",
          "image": "https://robohash.org/Rupert.png?set=set4"
        },
        {
          "id": 87,
          "username": "fschlagman2e",
          "password": "icEdQz4YnwV",
          "email": "fschlagman2e@deliciousdays.com",
          "firstName": "Eleazar",
          "lastName": "Torp",
          "gender": "male",
          "image": "https://robohash.org/Eleazar.png?set=set4"
        },
        {
          "id": 88,
          "username": "agreenhouse2f",
          "password": "VmqqWniF",
          "email": "agreenhouse2f@mashable.com",
          "firstName": "Anais",
          "lastName": "Yundt",
          "gender": "female",
          "image": "https://robohash.org/Anais.png?set=set4"
        },
        {
          "id": 89,
          "username": "cdwyr2g",
          "password": "x96XD8Fm",
          "email": "cdwyr2g@shop-pro.jp",
          "firstName": "Gayle",
          "lastName": "Krajcik",
          "gender": "male",
          "image": "https://robohash.org/Gayle.png?set=set4"
        },
        {
          "id": 90,
          "username": "omottley2h",
          "password": "67oJrJe6ta",
          "email": "omottley2h@hugedomains.com",
          "firstName": "Wilma",
          "lastName": "Hickle",
          "gender": "female",
          "image": "https://robohash.org/Wilma.png?set=set4"
        },
        {
          "id": 91,
          "username": "hyaknov2i",
          "password": "Xw8nIye1",
          "email": "hyaknov2i@hhs.gov",
          "firstName": "Arne",
          "lastName": "Jacobs",
          "gender": "male",
          "image": "https://robohash.org/Arne.png?set=set4"
        },
        {
          "id": 92,
          "username": "clambol2j",
          "password": "MJRFJutRGS",
          "email": "clambol2j@bloglovin.com",
          "firstName": "Emely",
          "lastName": "Schmitt",
          "gender": "female",
          "image": "https://robohash.org/Emely.png?set=set4"
        },
        {
          "id": 93,
          "username": "dduggan2k",
          "password": "Hf0TgLPXG",
          "email": "dduggan2k@simplemachines.org",
          "firstName": "Fabiola",
          "lastName": "Oberbrunner",
          "gender": "female",
          "image": "https://robohash.org/Fabiola.png?set=set4"
        },
        {
          "id": 94,
          "username": "jtossell2l",
          "password": "LTRc4mC",
          "email": "jtossell2l@drupal.org",
          "firstName": "Kari",
          "lastName": "Schinner",
          "gender": "female",
          "image": "https://robohash.org/Kari.png?set=set4"
        },
        {
          "id": 95,
          "username": "cchomiszewski2m",
          "password": "xjuQsRDR0NP6",
          "email": "cchomiszewski2m@cbsnews.com",
          "firstName": "Rory",
          "lastName": "Conn",
          "gender": "male",
          "image": "https://robohash.org/Rory.png?set=set4"
        },
        {
          "id": 96,
          "username": "bgoby2n",
          "password": "aKzuEqfI3wU",
          "email": "bgoby2n@washingtonpost.com",
          "firstName": "Cristobal",
          "lastName": "Watsica",
          "gender": "male",
          "image": "https://robohash.org/Cristobal.png?set=set4"
        },
        {
          "id": 97,
          "username": "cdavydochkin2o",
          "password": "N1node",
          "email": "cdavydochkin2o@globo.com",
          "firstName": "Allene",
          "lastName": "Harber",
          "gender": "female",
          "image": "https://robohash.org/Allene.png?set=set4"
        },
        {
          "id": 98,
          "username": "zstenning2p",
          "password": "Ck5jBaO6691g",
          "email": "zstenning2p@list-manage.com",
          "firstName": "Lempi",
          "lastName": "Runte",
          "gender": "female",
          "image": "https://robohash.org/Lempi.png?set=set4"
        },
        {
          "id": 99,
          "username": "flesslie2q",
          "password": "XUKU613LscMS",
          "email": "flesslie2q@google.nl",
          "firstName": "Terrell",
          "lastName": "Schuppe",
          "gender": "male",
          "image": "https://robohash.org/Terrell.png?set=set4"
        },
        {
          "id": 100,
          "username": "pcumbes2r",
          "password": "obhSsvCF8c0",
          "email": "pcumbes2r@networkadvertising.org",
          "firstName": "Tevin",
          "lastName": "Prohaska",
          "gender": "male",
          "image": "https://robohash.org/Tevin.png?set=set4"
        }
      ],
      "total": 100,
      "skip": 0,
      "limit": 100
    };

    return (json['users'] as List).cast<_ResponseData>();
  }
}
