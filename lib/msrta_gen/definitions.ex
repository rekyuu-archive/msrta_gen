defmodule MsrtaGen.Definitions do
  def plateau do
    [
      %{
        id: 0,
        name: "Oman Au",
        trial: "Magnesis Trial",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Great Plateau",
        orbs: 1
      }, %{
        id: 1,
        name: "Ja Baij",
        trial: "Bomb Trial",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Great Plateau",
        orbs: 1
      }, %{
        id: 2,
        name: "Keh Namut",
        trial: "Cryonis Trial",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Great Plateau",
        orbs: 1
      }, %{
        id: 3,
        name: "Owa Daim",
        trial: "Stasis Trial",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Great Plateau",
        orbs: 1
      }
    ]
  end

  def shrines do
    [
      %{
        id: 0,
        name: "Tutsuwa Nima",
        trial: "A Major Test of Strength",
        blessing: false,
        tos: "major",
        quest: %{name: "The Spring of Power", forced: true},
        beast: nil,
        region: "Akkala",
        orbs: 1
      }, %{
        id: 1,
        name: "Dah Hesho",
        trial: "A Minor Test of Strength",
        blessing: false,
        tos: "minor",
        quest: nil,
        beast: nil,
        region: "Akkala",
        orbs: 1
      }, %{
        id: 2,
        name: "Ke'nai Shakah",
        trial: "A Modest Test of Strength",
        blessing: false,
        tos: "modest",
        quest: nil,
        beast: nil,
        region: "Akkala",
        orbs: 1
      }, %{
        id: 3,
        name: "Katosa Aug",
        trial: "Katosa Aug Apparatus",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Akkala",
        orbs: 1
      }, %{
        id: 4,
        name: "Ritaag Zumo",
        trial: "Ritaag Zumo's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "Into the Vortex", forced: true},
        beast: nil,
        region: "Akkala",
        orbs: 1
      }, %{
        id: 5,
        name: "Tu Ka'loh",
        trial: "Tu Ka'loh's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "Trial of the Labyrinth", forced: false},
        beast: nil,
        region: "Akkala",
        orbs: 1
      }, %{
        id: 6,
        name: "Ze Kasho",
        trial: "Ze Kasho Apparatus",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Akkala",
        orbs: 1
      }, %{
        id: 7,
        name: "Zuna Kai",
        trial: "Zuna Kai's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "The Skull's Eye", forced: false},
        beast: nil,
        region: "Akkala",
        orbs: 1
      }, %{
        id: 8,
        name: "Saas Ko'sah",
        trial: "A Major Test of Strength",
        blessing: false,
        tos: "major",
        quest: nil,
        beast: nil,
        region: "Central",
        orbs: 1
      }, %{
        id: 9,
        name: "Katah Chuki",
        trial: "A Minor Test of Strength",
        blessing: false,
        tos: "minor",
        quest: nil,
        beast: nil,
        region: "Central",
        orbs: 1
      }, %{
        id: 10,
        name: "Noya Neha",
        trial: "A Minor Test of Strength",
        blessing: false,
        tos: "minor",
        quest: nil,
        beast: nil,
        region: "Central",
        orbs: 1
      }, %{
        id: 11,
        name: "Namika Ozz",
        trial: "A Modest Test of Strength",
        blessing: false,
        tos: "modest",
        quest: nil,
        beast: nil,
        region: "Central",
        orbs: 1
      }, %{
        id: 12,
        name: "Wahgo Katta",
        trial: "Metal Connections",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Central",
        orbs: 1
      }, %{
        id: 13,
        name: "Rota Ooh",
        trial: "Passing of the Gates",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Central",
        orbs: 1
      }, %{
        id: 14,
        name: "Kaya Wan",
        trial: "Shields from Water",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Central",
        orbs: 1
      }, %{
        id: 15,
        name: "Kaam Ya'tak",
        trial: "Test of Power",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Central",
        orbs: 1
      }, %{
        id: 16,
        name: "Hila Rao",
        trial: "Drifting",
        blessing: false,
        tos: nil,
        quest: %{name: "Watch Out for the Flowers", forced: true},
        beast: nil,
        region: "Dueling Peaks",
        orbs: 1
      }, %{
        id: 17,
        name: "Lakna Rokee",
        trial: "Lakna Rokee's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "The Stolen Heirloom", forced: true},
        beast: nil,
        region: "Dueling Peaks",
        orbs: 1
      }, %{
        id: 18,
        name: "Ta'loh Naeg",
        trial: "Ta'loh Naeg's Teaching",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Dueling Peaks",
        orbs: 1
      }, %{
        id: 19,
        name: "Ha Dahamar",
        trial: "The Water Guides",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Dueling Peaks",
        orbs: 1
      }, %{
        id: 20,
        name: "Bosh Kala",
        trial: "The Wind Guides You",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Dueling Peaks",
        orbs: 1
      }, %{
        id: 21,
        name: "Ree Dahee",
        trial: "Timing is Critical",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Dueling Peaks",
        orbs: 1
      }, %{
        id: 22,
        name: "Toto Sah",
        trial: "Toto Sah Apparatus",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Dueling Peaks",
        orbs: 1
      }, %{
        id: 23,
        name: "Shee Vaneer",
        trial: "Twin Memories",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Dueling Peaks",
        orbs: 1
      }, %{
        id: 24,
        name: "Shee Venath",
        trial: "Twin Memories",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Dueling Peaks",
        orbs: 1
      }, %{
        id: 25,
        name: "Qua Raym",
        trial: "A Balanced Approach",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Eldin",
        orbs: 1
      }, %{
        id: 26,
        name: "Shora Hah",
        trial: "Blue Flame",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Eldin",
        orbs: 1
      }, %{
        id: 27,
        name: "Gorae Torr",
        trial: "Gorae Torr's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "The Gut Check Challenge", forced: true},
        beast: nil,
        region: "Eldin",
        orbs: 1
      }, %{
        id: 28,
        name: "Kayra Mah",
        trial: "Greedy Hill",
        blessing: false,
        tos: nil,
        quest: %{name: "A Brother's Roast", forced: true},
        beast: nil,
        region: "Eldin",
        orbs: 1
      }, %{
        id: 29,
        name: "Mo'a Keet",
        trial: "Metal Makes a Path",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Eldin",
        orbs: 1
      }, %{
        id: 30,
        name: "Tah Muhl",
        trial: "Passing the Flame",
        blessing: false,
        tos: nil,
        quest: %{name: "A Landscape of a Stable", forced: false},
        beast: nil,
        region: "Eldin",
        orbs: 1
      }, %{
        id: 31,
        name: "Sah Dahaj",
        trial: "Power of Fire",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Eldin",
        orbs: 1
      }, %{
        id: 32,
        name: "Daqa Koh",
        trial: "Stalled Flight",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Eldin",
        orbs: 1
      }, %{
        id: 33,
        name: "Shae Mo'sah",
        trial: "Swinging Flames",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Eldin",
        orbs: 1
      }, %{
        id: 34,
        name: "Muwo Jeem",
        trial: "A Modest Test of Strength",
        blessing: false,
        tos: "modest",
        quest: nil,
        beast: nil,
        region: "Faron",
        orbs: 1
      }, %{
        id: 35,
        name: "Yah Rin",
        trial: "A Weighty Decision",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Faron",
        orbs: 1
      }, %{
        id: 36,
        name: "Korgu Chideh",
        trial: "Korgu Chideh's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "Stranded on Eventide", forced: true},
        beast: nil,
        region: "Faron",
        orbs: 1
      }, %{
        id: 37,
        name: "Shai Utoh",
        trial: "Halt the Tilt",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Faron",
        orbs: 1
      }, %{
        id: 38,
        name: "Shoda Sah",
        trial: "Impeccable Timing",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Faron",
        orbs: 1
      }, %{
        id: 39,
        name: "Kah Yah",
        trial: "Quick Thinking",
        blessing: false,
        tos: nil,
        quest: %{name: "A Fragmented Monument", forced: true},
        beast: nil,
        region: "Faron",
        orbs: 1
      }, %{
        id: 40,
        name: "Qukah Nata",
        trial: "Qukah Nata's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "A Song of Storms", forced: true},
        beast: nil,
        region: "Faron",
        orbs: 1
      }, %{
        id: 41,
        name: "Tawa Jinn",
        trial: "Tawa Jinn's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "The Three Giant Brothers", forced: true},
        beast: nil,
        region: "Faron",
        orbs: 1
      }, %{
        id: 42,
        name: "Kema Kosassa",
        trial: "A Major Test of Strength",
        blessing: false,
        tos: "major",
        quest: nil,
        beast: nil,
        region: "Gerudo",
        orbs: 1
      }, %{
        id: 43,
        name: "Dah Kaso",
        trial: "A Minor Test of Strength",
        blessing: false,
        tos: "minor",
        quest: nil,
        beast: nil,
        region: "Gerudo",
        orbs: 1
      }, %{
        id: 44,
        name: "Sasa Kai",
        trial: "A Modest Test of Strength",
        blessing: false,
        tos: "modest",
        quest: %{name: "Sign of the Shadow", forced: true},
        beast: nil,
        region: "Gerudo",
        orbs: 1
      }, %{
        id: 45,
        name: "Joloo Nah",
        trial: "Joloo Nah Apparatus",
        blessing: false,
        tos: nil,
        quest: %{name: "Test of Will", forced: true},
        beast: nil,
        region: "Gerudo",
        orbs: 1
      }, %{
        id: 46,
        name: "Keeha Yoog",
        trial: "Keeha Yoog's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "Cliffside Etchings", forced: true},
        beast: nil,
        region: "Gerudo",
        orbs: 1
      }, %{
        id: 47,
        name: "Kuh Takkar",
        trial: "Melting Ice Hazard",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Gerudo",
        orbs: 1
      }, %{
        id: 48,
        name: "Sho Dantu",
        trial: "Two Bombs",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Gerudo",
        orbs: 1
      }, %{
        id: 49,
        name: "Chaas Qeta",
        trial: "A Major Test of Strength",
        blessing: false,
        tos: "major",
        quest: nil,
        beast: nil,
        region: "Hateno",
        orbs: 1
      }, %{
        id: 50,
        name: "Mezza Lo",
        trial: "Ancient Trifecta",
        blessing: false,
        tos: nil,
        quest: %{name: "The Crowned Beast", forced: true},
        beast: nil,
        region: "Hateno",
        orbs: 1
      }, %{
        id: 51,
        name: "Jitan Sa'mi",
        trial: "Jitan Sa'mi's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "The Spring of Wisdom", forced: true},
        beast: nil,
        region: "Hateno",
        orbs: 1
      }, %{
        id: 52,
        name: "Myahm Agana",
        trial: "Myahm Agana Apparatus",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Hateno",
        orbs: 1
      }, %{
        id: 53,
        name: "Tahno O'ah",
        trial: "Tahno O'ah's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "Secret of the Cedars", forced: false},
        beast: nil,
        region: "Hateno",
        orbs: 1
      }, %{
        id: 54,
        name: "Dow Na'eh",
        trial: "Three Boxes",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Hateno",
        orbs: 1
      }, %{
        id: 55,
        name: "Kam Urog",
        trial: "Trial of Passage",
        blessing: false,
        tos: nil,
        quest: %{name: "The Cursed Statue", forced: true},
        beast: nil,
        region: "Hateno",
        orbs: 1
      }, %{
        id: 56,
        name: "Goma Asaagh",
        trial: "A Major Test of Strength",
        blessing: false,
        tos: "major",
        quest: nil,
        beast: nil,
        region: "Hebra",
        orbs: 1
      }, %{
        id: 57,
        name: "Hia Miu",
        trial: "A Major Test of Strength",
        blessing: false,
        tos: "major",
        quest: nil,
        beast: nil,
        region: "Hebra",
        orbs: 1
      }, %{
        id: 58,
        name: "Mozo Shenno",
        trial: "A Major Test of Strength",
        blessing: false,
        tos: "major",
        quest: %{name: "The Bird in the Mountains", forced: false},
        beast: nil,
        region: "Hebra",
        orbs: 1
      }, %{
        id: 59,
        name: "Dunba Taag",
        trial: "Build and Release",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Hebra",
        orbs: 1
      }, %{
        id: 60,
        name: "Rin Oyaa",
        trial: "Directing the Wind",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Hebra",
        orbs: 1
      }, %{
        id: 61,
        name: "Lanno Kooh",
        trial: "Lanno Kooh's Blessing",
        blessing: true,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Hebra",
        orbs: 1
      }, %{
        id: 62,
        name: "Rok Uwog",
        trial: "Power of Reach",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Hebra",
        orbs: 1
      }, %{
        id: 63,
        name: "Qaza Tokki",
        trial: "Qaza Tokki's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "Trial on the Cliff", forced: false},
        beast: nil,
        region: "Hebra",
        orbs: 1
      }, %{
        id: 64,
        name: "Shada Naw",
        trial: "Red Giveaway",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Hebra",
        orbs: 1
      }, %{
        id: 65,
        name: "Sha Gehma",
        trial: "Shift and Lock",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Hebra",
        orbs: 1
      }, %{
        id: 66,
        name: "Maka Rah",
        trial: "Steady Thy Heart",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Hebra",
        orbs: 1
      }, %{
        id: 67,
        name: "Gee Ha'rah",
        trial: "Tandem",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Hebra",
        orbs: 1
      }, %{
        id: 68,
        name: "To Quomo",
        trial: "To Quomo's Blessing",
        blessing: true,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Hebra",
        orbs: 1
      }, %{
        id: 69,
        name: "Pumaag Nitae",
        trial: "A Minor Test of Strength",
        blessing: false,
        tos: "minor",
        quest: nil,
        beast: nil,
        region: "Lake",
        orbs: 1
      }, %{
        id: 70,
        name: "Shoqa Tatone",
        trial: "A Modest Test of Strength",
        blessing: false,
        tos: "modest",
        quest: %{name: "Guardian Slideshow", forced: false},
        beast: nil,
        region: "Lake",
        orbs: 1
      }, %{
        id: 71,
        name: "Ishto Soh",
        trial: "Bravery's Grasp",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Lake",
        orbs: 1
      }, %{
        id: 72,
        name: "Ka'o Makagh",
        trial: "Metal Doors Open the Way",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Lake",
        orbs: 1
      }, %{
        id: 73,
        name: "Shae Katha",
        trial: "Shae Katha's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "The Serpent's Jaws", forced: true},
        beast: nil,
        region: "Lake",
        orbs: 1
      }, %{
        id: 74,
        name: "Ya Naga",
        trial: "Shatter the Heavens",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Lake",
        orbs: 1
      }, %{
        id: 75,
        name: "Soh Kofi",
        trial: "A Minor Test of Strength",
        blessing: false,
        tos: "minor",
        quest: nil,
        beast: nil,
        region: "Lanayru",
        orbs: 1
      }, %{
        id: 76,
        name: "Dagah Keek",
        trial: "Dagah Keek's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "The Ceremonial Song", forced: true},
        beast: nil,
        region: "Lanayru",
        orbs: 1
      }, %{
        id: 77,
        name: "Kah Mael",
        trial: "Drop and Rise",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Lanayru",
        orbs: 1
      }, %{
        id: 78,
        name: "Rucco Maag",
        trial: "Five Flames",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Lanayru",
        orbs: 1
      }, %{
        id: 79,
        name: "Ne'ez Yohma",
        trial: "Pushing Power",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Lanayru",
        orbs: 1
      }, %{
        id: 80,
        name: "Shai Yota",
        trial: "Shai Yota's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "Master of the Wind", forced: true},
        beast: nil,
        region: "Lanayru",
        orbs: 1
      }, %{
        id: 81,
        name: "Sheh Rata",
        trial: "Speed of Light",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Lanayru",
        orbs: 1
      }, %{
        id: 82,
        name: "Daka Tuss",
        trial: "Sunken Scoop",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Lanayru",
        orbs: 1
      }, %{
        id: 83,
        name: "Mijah Rokee",
        trial: "A Modest Test of Strength",
        blessing: false,
        tos: "modest",
        quest: %{name: "Under a Red Moon", forced: true},
        beast: nil,
        region: "Ridgeland",
        orbs: 1
      }, %{
        id: 84,
        name: "Shae Loya",
        trial: "Aim for the Moment",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Ridgeland",
        orbs: 1
      }, %{
        id: 85,
        name: "Toh Yahsa",
        trial: "Buried Secrets",
        blessing: false,
        tos: nil,
        quest: %{name: "Trial of Thunder", forced: true},
        beast: nil,
        region: "Ridgeland",
        orbs: 1
      }, %{
        id: 86,
        name: "Maag No'rah",
        trial: "Maag No'rah's Blessing",
        blessing: true,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Ridgeland",
        orbs: 1
      }, %{
        id: 87,
        name: "Sheem Dagoze",
        trial: "Moving in Parallel",
        blessing: false,
        tos: nil,
        quest: %{name: "The Two Rings", forced: true},
        beast: nil,
        region: "Ridgeland",
        orbs: 1
      }, %{
        id: 88,
        name: "Mogg Latan",
        trial: "Synced Swing",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Ridgeland",
        orbs: 1
      }, %{
        id: 89,
        name: "Zalta Wa",
        trial: "Two Orbs to Guide You",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Ridgeland",
        orbs: 1
      }, %{
        id: 90,
        name: "Tena Ko'sah",
        trial: "A Major Test of Strength",
        blessing: false,
        tos: "major",
        quest: nil,
        beast: nil,
        region: "Tabantha",
        orbs: 1
      }, %{
        id: 91,
        name: "Bareeda Naag",
        trial: "Cannon",
        blessing: false,
        tos: nil,
        quest: %{name: "The Ancient Rito Song", forced: true},
        beast: nil,
        region: "Tabantha",
        orbs: 1
      }, %{
        id: 92,
        name: "Sha Warvo",
        trial: "Path of Hidden Winds",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Tabantha",
        orbs: 1
      }, %{
        id: 93,
        name: "Voo Lota",
        trial: "The Winding Route",
        blessing: false,
        tos: nil,
        quest: %{name: "Recital at Warbler's Nest", forced: true},
        beast: "medoh",
        region: "Tabantha",
        orbs: 1
      }, %{
        id: 94,
        name: "Kah Okeo",
        trial: "Wind Guide",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Tabantha",
        orbs: 1
      }, %{
        id: 95,
        name: "Akh Va'quot",
        trial: "Windmills",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Tabantha",
        orbs: 1
      }, %{
        id: 96,
        name: "Kema Zoos",
        trial: "A Delayed Puzzle",
        blessing: false,
        tos: nil,
        quest: %{name: "The Silent Swordswomen", forced: false},
        beast: nil,
        region: "Wasteland",
        orbs: 1
      }, %{
        id: 97,
        name: "Dila Maag",
        trial: "Dila Maag's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "The Desert Labyrinth", forced: false},
        beast: nil,
        region: "Wasteland",
        orbs: 1
      }, %{
        id: 98,
        name: "Dako Tah",
        trial: "Electric Path",
        blessing: false,
        tos: nil,
        quest: %{name: "The Eye of the Sandstorm", forced: false},
        beast: nil,
        region: "Wasteland",
        orbs: 1
      }, %{
        id: 99,
        name: "Korsh O'hu",
        trial: "Korsh O'hu's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "The Seven Heroines", forced: true},
        beast: nil,
        region: "Wasteland",
        orbs: 1
      }, %{
        id: 100,
        name: "Misae Suma",
        trial: "Misae Suma's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "The Perfect Drink", forced: true},
        beast: nil,
        region: "Wasteland",
        orbs: 1
      }, %{
        id: 101,
        name: "Jee Noh",
        trial: "On the Move",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Wasteland",
        orbs: 1
      }, %{
        id: 102,
        name: "Kay Noh",
        trial: "Power of Electricity",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Wasteland",
        orbs: 1
      }, %{
        id: 103,
        name: "Raqa Zunzo",
        trial: "Raqa Zunzo's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "The Undefeated Champ", forced: true},
        beast: "naboris",
        region: "Wasteland",
        orbs: 1
      }, %{
        id: 104,
        name: "Suma Sahma",
        trial: "Suma Sahma's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "Secret of the Snowy Peaks", forced: true},
        beast: nil,
        region: "Wasteland",
        orbs: 1
      }, %{
        id: 105,
        name: "Hawa Koth",
        trial: "The Current Solution",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Wasteland",
        orbs: 1
      }, %{
        id: 106,
        name: "Daqo Chisay",
        trial: "The Whole Picture",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Wasteland",
        orbs: 1
      }, %{
        id: 107,
        name: "Tho Kayu",
        trial: "Tho Kayu's Blessing",
        blessing: true,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Wasteland",
        orbs: 1
      }, %{
        id: 108,
        name: "Daag Chokah",
        trial: "Daag Chokah's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "The Lost Pilgrimage", forced: true},
        beast: nil,
        region: "Woodland",
        orbs: 1
      }, %{
        id: 109,
        name: "Monya Toma",
        trial: "Drawing Parabolas",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Woodland",
        orbs: 1
      }, %{
        id: 110,
        name: "Keo Ruug",
        trial: "Fateful Stars",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Woodland",
        orbs: 1
      }, %{
        id: 111,
        name: "Ketoh Wawai",
        trial: "Ketoh Wawai's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "Shrouded Shrine", forced: true},
        beast: nil,
        region: "Woodland",
        orbs: 1
      }, %{
        id: 112,
        name: "Kuhn Sidajj",
        trial: "Kuh Sidajj's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "Trial of Second Sight", forced: true},
        beast: nil,
        region: "Woodland",
        orbs: 1
      }, %{
        id: 113,
        name: "Maag Halan",
        trial: "Maag Halan's Blessing",
        blessing: true,
        tos: nil,
        quest: %{name: "The Test of Wood", forced: true},
        beast: nil,
        region: "Woodland",
        orbs: 1
      }, %{
        id: 114,
        name: "Rona Kachta",
        trial: "Rona Kachta's Blessing",
        blessing: true,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Woodland",
        orbs: 1
      }, %{
        id: 115,
        name: "Mirro Shaz",
        trial: "Tempered Power",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Woodland",
        orbs: 1
      }
    ]
  end

  def beasts do
    [
      %{
        id: 0,
        name: "Divine Beast Vah Medoh",
        region: "Tabantha",
        trial: nil,
        quest: nil,
        orbs: 4
      }, %{
        id: 1,
        name: "Divine Beast Vah Naboris",
        region: "Wasteland",
        trial: nil,
        quest: nil,
        orbs: 4
      }, %{
        id: 2,
        name: "Divine Beast Vah Rudania",
        region: "Eldin",
        trial: nil,
        quest: nil,
        orbs: 4
      }, %{
        id: 3,
        name: "Divine Beast Vah Ruta",
        region: "Lanayru",
        trial: nil,
        quest: nil,
        orbs: 4
      }
    ]
  end
end
