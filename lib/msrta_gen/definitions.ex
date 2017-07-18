defmodule Msrta.Definitions do
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
        region: "Central Hyrule",
        orbs: 1
      }, %{
        id: 9,
        name: "Katah Chuki",
        trial: "A Minor Test of Strength",
        blessing: false,
        tos: "minor",
        quest: nil,
        beast: nil,
        region: "Central Hyrule",
        orbs: 1
      }, %{
        id: 10,
        name: "Noya Neha",
        trial: "A Minor Test of Strength",
        blessing: false,
        tos: "minor",
        quest: nil,
        beast: nil,
        region: "Central Hyrule",
        orbs: 1
      }, %{
        id: 11,
        name: "Namika Ozz",
        trial: "A Modest Test of Strength",
        blessing: false,
        tos: "modest",
        quest: nil,
        beast: nil,
        region: "Central Hyrule",
        orbs: 1
      }, %{
        id: 12,
        name: "Wahgo Katta",
        trial: "Metal Connections",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Central Hyrule",
        orbs: 1
      }, %{
        id: 13,
        name: "Rota Ooh",
        trial: "Passing of the Gates",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Central Hyrule",
        orbs: 1
      }, %{
        id: 14,
        name: "Kaya Wan",
        trial: "Shields from Water",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Central Hyrule",
        orbs: 1
      }, %{
        id: 15,
        name: "Kaam Ya'tak",
        trial: "Test of Power",
        blessing: false,
        tos: nil,
        quest: nil,
        beast: nil,
        region: "Central Hyrule",
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
      }
    ]
  end

  def beasts do
    [
      %{
        id: 0,
        name: "Divine Beast Vah Medoh",
        region: "Tabantha",
        orbs: 4
      }, %{
        id: 1,
        name: "Divine Beast Vah Naboris",
        region: "Wasteland",
        orbs: 4
      }, %{
        id: 2,
        name: "Divine Beast Vah Rudania",
        region: "Eldin",
        orbs: 4
      }, %{
        id: 3,
        name: "Divine Beast Vah Ruta",
        region: "Lanayru",
        orbs: 4
      }
    ]
  end

  def regions do
    [
      %{
        id: 0,
        name: "Great Plateau",
        short: "plateau",
        beast: false,
        shrines: 4
      }, %{
        id: 1,
        name: "Akkala",
        short: "akkala",
        beast: false,
        shrines: 8
      }, %{
        id: 2,
        name: "Central Hyrule",
        short: "central",
        beast: false,
        shrines: 8
      }, %{
        id: 3,
        name: "Dueling Peaks",
        short: "dp",
        beast: false,
        shrines: 9
      }, %{
        id: 4,
        name: "Eldin",
        short: "eldin",
        beast: true,
        shrines: 9
      }, %{
        id: 5,
        name: "Faron",
        short: "faron",
        beast: false,
        shrines: 8
      }, %{
        id: 6,
        name: "Gerudo Highlands",
        short: "gerudo",
        beast: false,
        shrines: 7
      }, %{
        id: 7,
        name: "Hateno",
        short: "hateno",
        beast: false,
        shrines: 7
      }, %{
        id: 8,
        name: "Hebra",
        short: "hebra",
        beast: false,
        shrines: 13
      }, %{
        id: 9,
        name: "Lake",
        short: "lake",
        beast: false,
        shrines: 6
      }, %{
        id: 10,
        name: "Lanayru",
        short: "lanayru",
        beast: true,
        shrines: 8
      }, %{
        id: 11,
        name: "Ridgeland",
        short: "ridgeland",
        beast: false,
        shrines: 7
      }, %{
        id: 12,
        name: "Tabantha",
        short: "tabantha",
        beast: true,
        shrines: 6
      }, %{
        id: 13,
        name: "Gerudo Wasteland",
        short: "wasteland",
        beast: true,
        shrines: 12
      }, %{
        id: 14,
        name: "Woodland",
        short: "woodland",
        beast: false,
        shrines: 8
      }
    ]
  end
end
