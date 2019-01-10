# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(fname: 'Chip', lname: 'Kragt', email: 'chip@20liters.org', password: 'password', password_confirmation: 'password')

Technology.create(
  [
    { name: 'Household Filter', short_name: 'SAM3', default_impact: 5, scale: 'Family', direct_cost: 35_28, indirect_cost: 100_00 },
    { name: 'Modified Household Filter', short_name: 'SAM3-M', default_impact: 5, scale: 'Family', direct_cost: 32_22, indirect_cost: 100_00 },
    { name: 'Community Filter', short_name: 'SAM2', default_impact: 400, scale: 'Community', agreement_required: true, direct_cost: 1_382_44, indirect_cost: 2_000_00 },
    { name: 'Modified Community Filter', short_name: 'SAM2-M', default_impact: 400, scale: 'Community', agreement_required: true, direct_cost: 1_839_82, indirect_cost: 2_600_00 },
    { name: 'Rainwater Harvesting System', short_name: 'RWHS', default_impact: 500, scale: 'Community', agreement_required: true, direct_cost: 1_565_38, indirect_cost: 3_200_00 },
    { name: 'Slowsand Filter', short_name: 'SS', default_impact: 5, scale: 'Family' }
  ]
)

Contract.create(
  [
    { start_date: '2013-08-01', end_date: '2015-08-30', budget: 680_794_78, household_goal: 11_905_00, people_goal: 59_525_00 },
    { start_date: '2015-09-01', end_date: '2016-12-31', budget: 390_251_00, household_goal: 3_700_00, people_goal: 38_200_00 },
    { start_date: '2017-01-01', end_date: '2018-09-30', budget: 585_722_00, household_goal: 4_870_00, people_goal: 58_499_00 },
    { start_date: '2018-10-01', end_date: '2021-09-30', budget: 336_000_00, household_goal: 10_090_00, people_goal: 58_687_00 }
  ]
)

District.create(
  [
    { id: 1, name: 'Nyarugenge', gis_id: 11 },
    { id: 2, name: 'Kicukiro', gis_id: 13 },
    { id: 3, name: 'Bugesera', gis_id: 57 }
  ]
)

Sector.create(
  [
    { id: 1, name: 'Nyakabanda', gis_id: 1107, district_id: 1 },
    { id: 2, name: 'Gahanga', gis_id: 1301, district_id: 2 },
    { id: 3, name: 'Masaka', gis_id: 1308, district_id: 2 },
    { id: 4, name: 'Gashora', gis_id: 5701, district_id: 3 },
    { id: 5, name: 'Juru', gis_id: 5702, district_id: 3 },
    { id: 6, name: 'Mwogo', gis_id: 5707, district_id: 3 },
    { id: 7, name: 'Ntarama', gis_id: 5709, district_id: 3 }
  ]
)

Cell.create(
  [
    { id: 1, name: 'Munanira I', gis_id: 110701, sector_id: 1 },
    { id: 2, name: 'Gahanga', gis_id: 130101, sector_id: 2 },
    { id: 3, name: 'Kagasa', gis_id: 130102, sector_id: 2 },
    { id: 4, name: 'Karembure', gis_id: 130103, sector_id: 2 },
    { id: 5, name: 'Murinja', gis_id: 130104, sector_id: 2 },
    { id: 6, name: 'Nunga', gis_id: 130105, sector_id: 2 },
    { id: 7, name: 'Rwabutenge', gis_id: 130106, sector_id: 2 },
    { id: 8, name: 'Ayabaraya', gis_id: 130801, sector_id: 3 },
    { id: 9, name: 'Cyimo', gis_id: 130802, sector_id: 3 },
    { id: 10, name: 'Gako', gis_id: 130803, sector_id: 3 },
    { id: 11, name: 'Gitaraga', gis_id: 130804, sector_id: 3 },
    { id: 12, name: 'Mbabe', gis_id: 130805, sector_id: 3 },
    { id: 13, name: 'Rusheshe', gis_id: 130806, sector_id: 3 },
    { id: 14, name: 'Biryogo', gis_id: 570101, sector_id: 4 },
    { id: 15, name: 'Kabuye', gis_id: 570102, sector_id: 4 },
    { id: 16, name: 'Kagomasi', gis_id: 570103, sector_id: 4 },
    { id: 17, name: 'Mwendo', gis_id: 570104, sector_id: 4 },
    { id: 18, name: 'Ramiro', gis_id: 570105, sector_id: 4 },
    { id: 19, name: 'Juru', gis_id: 570201, sector_id: 5 },
    { id: 20, name: 'Kabukuba', gis_id: 570202, sector_id: 5 },
    { id: 21, name: 'Mugorore', gis_id: 570203, sector_id: 5 },
    { id: 22, name: 'Musovu', gis_id: 570204, sector_id: 5 },
    { id: 23, name: 'Rwinume', gis_id: 570205, sector_id: 5 },
    { id: 24, name: 'Bitaba', gis_id: 570701, sector_id: 6 },
    { id: 25, name: 'Kagasa', gis_id: 570702, sector_id: 6 },
    { id: 26, name: 'Rugunga', gis_id: 570703, sector_id: 6 },
    { id: 27, name: 'Rurenge', gis_id: 570704, sector_id: 6 },
    { id: 28, name: 'Cyugaro', gis_id: 570901, sector_id: 7 },
    { id: 29, name: 'Kanzenze', gis_id: 570902, sector_id: 7 },
    { id: 30, name: 'Kibungo', gis_id: 570903, sector_id: 7 }
  ]
)

Village.create(
  [
    { id: 1, name: 'Kabusunzu', gis_id: 11070101, cell_id: 1, latitude: -2.054922, longitude: 30.0912883, population: 513, households: 110 },
    { id: 2, name: 'Rurembo', gis_id: 11070105, cell_id: 1, latitude: -2.041366, longitude: 30.1012423, population: 319, households: 75 },
    { id: 3, name: 'Gahanga', gis_id: 13010101, cell_id: 2, latitude: -2.02637, longitude: 30.1041, population: 320, households: 106 },
    { id: 4, name: 'Gatare', gis_id: 13010102, cell_id: 2, latitude: -2.02725, longitude: 30.10448, population: 615, households: 116 },
    { id: 5, name: 'Gatovu', gis_id: 13010103, cell_id: 2, latitude: -2.02201, longitude: 30.1008, population: 571, households: 165 },
    { id: 6, name: 'Rinini', gis_id: 13010104, cell_id: 2, latitude: -2.0122, longitude: 30.10747, population: 534, households: 111 },
    { id: 7, name: 'Rwinanka', gis_id: 13010105, cell_id: 2, latitude: -2.0319, longitude: 30.10204, population: 376, households: 125 },
    { id: 8, name: 'Ubumwe', gis_id: 13010106, cell_id: 2, latitude: -2.02563, longitude: 30.10438, population: 706, households: 157 },
    { id: 9, name: 'Kabeza', gis_id: 13010201, cell_id: 3, latitude: -2.01766, longitude: 30.12477, population: 507, households: 113 },
    { id: 10, name: 'Kabidandi', gis_id: 13010202, cell_id: 3, latitude: -2.0161, longitude: 30.10872, population: 548, households: 139 },
    { id: 11, name: 'Kiyanja', gis_id: 13010203, cell_id: 3, latitude: -2.01301, longitude: 30.12197, population: 719, households: 179 },
    { id: 12, name: 'Nyacyonga', gis_id: 13010204, cell_id: 3, latitude: -2.00965, longitude: 30.12314, population: 463, households: 102 },
    { id: 13, name: 'Nyagafunzo', gis_id: 13010205, cell_id: 3, latitude: -2.01415, longitude: 30.13282, population: 699, households: 149 },
    { id: 14, name: 'Nyakuguma', gis_id: 13010206, cell_id: 3, latitude: -2.01324, longitude: 30.10868, population: 366, households: 122 },
    { id: 15, name: 'Rugando Ii', gis_id: 13010207, cell_id: 3, latitude: -2.02409, longitude: 30.13146, population: 387, households: 86 },
    { id: 16, name: 'Amahoro', gis_id: 13010301, cell_id: 4, latitude: -2.01053, longitude: 30.09198, population: 412, households: 125 },
    { id: 17, name: 'Bigo', gis_id: 13010302, cell_id: 4, latitude: -2.00992, longitude: 30.0903, population: 402, households: 95 },
    { id: 18, name: 'Kabeza', gis_id: 13010303, cell_id: 4, latitude: -2.03273, longitude: 30.08034, population: 393, households: 98 },
    { id: 19, name: 'Kamuyinga', gis_id: 13010304, cell_id: 4, latitude: -2.01714, longitude: 30.09397, population: 603, households: 151 },
    { id: 20, name: 'Karembure', gis_id: 13010305, cell_id: 4, latitude: -2.01583, longitude: 30.08876, population: 402, households: 99 },
    { id: 21, name: 'Kimena', gis_id: 13010306, cell_id: 4, latitude: -2.02279, longitude: 30.08517, population: 716, households: 132 },
    { id: 22, name: 'Mubuga', gis_id: 13010307, cell_id: 4, latitude: -2.02681, longitude: 30.08309, population: 472, households: 102 },
    { id: 23, name: 'Rwamaya', gis_id: 13010308, cell_id: 4, latitude: -2.01149, longitude: 30.09421, population: 406, households: 104 },
    { id: 24, name: 'Kampuro', gis_id: 13010401, cell_id: 5, latitude: -2.03413, longitude: 30.10856, population: 473, households: 103 },
    { id: 25, name: 'Kigasa', gis_id: 13010402, cell_id: 5, latitude: -2.09839, longitude: 30.11144, population: 562, households: 96 },
    { id: 26, name: 'Mashyiga', gis_id: 13010403, cell_id: 5, latitude: -2.03076, longitude: 30.10659, population: 325, households: 83 },
    { id: 27, name: 'Nyabigugu', gis_id: 13010404, cell_id: 5, latitude: -2.0467, longitude: 30.19683, population: 378, households: 93 },
    { id: 28, name: 'Nyamuharaza', gis_id: 13010405, cell_id: 5, latitude: -2.04399, longitude: 30.1149, population: 272, households: 64 },
    { id: 29, name: 'Rukore', gis_id: 13010406, cell_id: 5, latitude: -2.04888, longitude: 30.10895, population: 216, households: 54 },
    { id: 30, name: 'Runyoni', gis_id: 13010407, cell_id: 5, latitude: -2.04637, longitude: 30.11741, population: 346, households: 91 },
    { id: 31, name: 'Sabununga', gis_id: 13010408, cell_id: 5, latitude: -2.02935, longitude: 30.11034, population: 283, households: 87 },
    { id: 32, name: 'Kigarama', gis_id: 13010501, cell_id: 6, latitude: -2.04163, longitude: 30.18698, population: 525, households: 115 },
    { id: 33, name: 'Kinyana', gis_id: 13010502, cell_id: 6, latitude: -2.03198, longitude: 30.18818, population: 480, households: 106 },
    { id: 34, name: 'Mugendo', gis_id: 13010503, cell_id: 6, latitude: -2.05168, longitude: 30.18622, population: 480, households: 165 },
    { id: 35, name: 'Nunga I', gis_id: 13010504, cell_id: 6, latitude: -2.02706, longitude: 30.19267, population: 605, households: 128 },
    { id: 36, name: 'Nunga Ii', gis_id: 13010505, cell_id: 6, latitude: -2.03761, longitude: 30.19034, population: 424, households: 94 },
    { id: 37, name: 'Rugasa', gis_id: 13010506, cell_id: 6, latitude: -2.04017, longitude: 30.18543, population: 526, households: 126 },
    { id: 38, name: 'Gahosha', gis_id: 13010601, cell_id: 7, latitude: -2.03925, longitude: 30.12247, population: 368, households: 111 },
    { id: 39, name: 'Gashubi', gis_id: 13010602, cell_id: 7, latitude: -2.03643, longitude: 30.12794, population: 407, households: 103 },
    { id: 40, name: 'Kaboshya', gis_id: 13010603, cell_id: 7, latitude: -2.02444, longitude: 30.11406, population: 534, households: 140 },
    { id: 41, name: 'Karambo', gis_id: 13010604, cell_id: 7, latitude: -2.03192, longitude: 30.12113, population: 374, households: 118 },
    { id: 42, name: 'Rebero', gis_id: 13010605, cell_id: 7, latitude: -2.02922, longitude: 30.13344, population: 353, households: 96 },
    { id: 43, name: 'Rugando I', gis_id: 13010606, cell_id: 7, latitude: -2.02555, longitude: 30.13473, population: 365, households: 98 },
    { id: 44, name: 'Kababyeyi', gis_id: 13080101, cell_id: 8, latitude: -2.0441, longitude: 30.2157, population: 408, households: 83 },
    { id: 45, name: 'Ayabaraya', gis_id: 13080102, cell_id: 8, latitude: -2.02438333333333, longitude: 30.2203166666667, population: 546, households: 132 },
    { id: 46, name: 'Nyamico', gis_id: 13080103, cell_id: 8, latitude: -2.03825, longitude: 30.2224, population: 483, households: 118 },
    { id: 47, name: 'Nyamyijima', gis_id: 13080104, cell_id: 8, latitude: -2.03478333333333, longitude: 30.2222166666667, population: 515, households: 121 },
    { id: 48, name: 'Nyirakavomo', gis_id: 13080105, cell_id: 8, latitude: -2.0495, longitude: 30.2220666666667, population: 532, households: 125 },
    { id: 49, name: 'Rususa', gis_id: 13080106, cell_id: 8, latitude: -2.01546666666667, longitude: 30.2247333333333, population: 497, households: 123 },
    { id: 50, name: 'Biryogo', gis_id: 13080201, cell_id: 9, latitude: -1.999191, longitude: 30.1922883, population: 531, households: 167 },
    { id: 51, name: 'Cyimo', gis_id: 13080203, cell_id: 9, latitude: -1.9877736, longitude: 30.2047363, population: 765, households: 153 },
    { id: 52, name: 'Kabeza', gis_id: 13080204, cell_id: 9, latitude: -1.994215, longitude: 30.2072213, population: 685, households: 137 },
    { id: 53, name: 'Butare', gis_id: 13080303, cell_id: 10, latitude: -2.0027, longitude: 30.22395, population: 414, households: 111 },
    { id: 54, name: 'Cyugamo', gis_id: 13080304, cell_id: 10, latitude: -1.985466, longitude: 30.2169633, population: 655, households: 175 },
    { id: 55, name: 'Gicaca', gis_id: 13080305, cell_id: 10, latitude: -2.02763333333333, longitude: 30.2153333333333, population: 444, households: 103 },
    { id: 56, name: 'Gihuke', gis_id: 13080306, cell_id: 10, latitude: -2.00933333333333, longitude: 30.2255, population: 613, households: 156 },
    { id: 57, name: 'Kibande', gis_id: 13080308, cell_id: 10, latitude: -2.00426666666667, longitude: 30.2213333333333, population: 714, households: 162 },
    { id: 58, name: 'Rebero', gis_id: 13080309, cell_id: 10, latitude: -2.003633, longitude: 30.2202333333333, population: 368, households: 95 },
    { id: 59, name: 'Rugende', gis_id: 13080310, cell_id: 10, latitude: -2.007867, longitude: 30.2204166666667, population: 414, households: 141 },
    { id: 60, name: 'Ruyaga', gis_id: 13080311, cell_id: 10, latitude: -2.01035, longitude: 30.2165166666667, population: 245, households: 78 },
    { id: 61, name: 'Gitaraga', gis_id: 13080401, cell_id: 11, latitude: -2.00026666666667, longitude: 30.18855, population: 457, households: 129 },
    { id: 62, name: 'Kabeza', gis_id: 13080402, cell_id: 11, latitude: -2.00026663, longitude: 30.1813666666667, population: 304, households: 136 },
    { id: 63, name: 'Nyange', gis_id: 13080405, cell_id: 11, latitude: -2.003407, longitude: 30.1872166666667, population: 528, households: 158 },
    { id: 64, name: 'Ruhanga', gis_id: 13080406, cell_id: 11, latitude: -2.00828333333333, longitude: 30.1708, population: 518, households: 179 },
    { id: 65, name: 'Rwintare', gis_id: 13080407, cell_id: 11, latitude: -2.00968333333333, longitude: 30.1793333333333, population: 565, households: 161 },
    { id: 66, name: 'Kabeza', gis_id: 13080501, cell_id: 12, latitude: -2.0152, longitude: 30.1954833333333, population: 680, households: 137 },
    { id: 67, name: 'Kamashashi', gis_id: 13080502, cell_id: 12, latitude: -2.01208333333333, longitude: 30.1877333333333, population: 562, households: 153 },
    { id: 68, name: 'Mbabe', gis_id: 13080503, cell_id: 12, latitude: -2.0273, longitude: 30.2029666666667, population: 653, households: 147 },
    { id: 69, name: 'Murambi', gis_id: 13080504, cell_id: 12, latitude: -2.0247, longitude: 30.2080666666667, population: 658, households: 125 },
    { id: 70, name: 'Ngarama', gis_id: 13080505, cell_id: 12, latitude: -2.02138333333333, longitude: 30.1799833333333, population: 571, households: 138 },
    { id: 71, name: 'Sangano', gis_id: 13080506, cell_id: 12, latitude: -2.0286, longitude: 30.2134333333333, population: 705, households: 149 },
    { id: 72, name: 'Cyankongi', gis_id: 13080601, cell_id: 13, latitude: -2.06201666666667, longitude: 30.2050666666667, population: 456, households: 156 },
    { id: 73, name: 'Cyeru', gis_id: 13080602, cell_id: 13, latitude: -2.0497, longitude: 30.2024166666667, population: 487, households: 154 },
    { id: 74, name: 'Gatare', gis_id: 13080603, cell_id: 13, latitude: -2.04231666666667, longitude: 30.2088, population: 612, households: 152 },
    { id: 75, name: 'Kagese', gis_id: 13080604, cell_id: 13, latitude: -2.03905, longitude: 30.2109666666667, population: 707, households: 156 },
    { id: 76, name: 'Kanyetabi', gis_id: 13080605, cell_id: 13, latitude: -2.02478333333333, longitude: 30.1952166666667, population: 400, households: 95 },
    { id: 77, name: 'Mubano', gis_id: 13080606, cell_id: 13, latitude: -2.03366666666667, longitude: 30.1924666666667, population: 435, households: 96 },
    { id: 78, name: 'Ruhosha', gis_id: 13080607, cell_id: 13, latitude: -2.03566666666667, longitude: 30.1995666666667, population: 660, households: 141 },
    { id: 79, name: 'Bidudu', gis_id: 57010101, cell_id: 14, latitude: -2.20749, longitude: 30.25254, population: 881, households: 191 },
    { id: 80, name: 'Biryogo', gis_id: 57010102, cell_id: 14, latitude: -2.21006, longitude: 30.24087, population: 911, households: 182 },
    { id: 81, name: 'Buhoro', gis_id: 57010103, cell_id: 14, latitude: -2.19462, longitude: 30.24557, population: 617, households: 106 },
    { id: 82, name: 'Gihanama', gis_id: 57010104, cell_id: 14, latitude: -2.22833, longitude: 30.24136, population: 853, households: 158 },
    { id: 83, name: 'Kagarama', gis_id: 57010105, cell_id: 14, latitude: -2.20573, longitude: 30.24476, population: 513, households: 108 },
    { id: 84, name: 'Kanyonyomba', gis_id: 57010106, cell_id: 14, latitude: -2.20847, longitude: 30.24845, population: 502, households: 102 },
    { id: 85, name: 'Karutete', gis_id: 57010107, cell_id: 14, latitude: -2.20031, longitude: 30.24279, population: 632, households: 117 },
    { id: 86, name: 'Kivugiza', gis_id: 57010108, cell_id: 14, latitude: -2.20797, longitude: 30.24774, population: 624, households: 123 },
    { id: 87, name: 'Rugunga', gis_id: 57010109, cell_id: 14, latitude: -2.20974, longitude: 30.24406, population: 617, households: 116 },
    { id: 88, name: 'Bidudu', gis_id: 57010201, cell_id: 15, latitude: -2.24242, longitude: 30.26993, population: 512, households: 172 },
    { id: 89, name: 'Kabuye', gis_id: 57010202, cell_id: 15, latitude: -2.23884, longitude: 30.26055, population: 607, households: 135 },
    { id: 90, name: 'Karizinge', gis_id: 57010203, cell_id: 15, latitude: -2.24096, longitude: 30.25677, population: 545, households: 124 },
    { id: 91, name: 'Rwagasiga', gis_id: 57010204, cell_id: 15, latitude: -2.23928, longitude: 30.27591, population: 495, households: 138 },
    { id: 92, name: 'Rweteto', gis_id: 57010205, cell_id: 15, latitude: -2.24623, longitude: 30.27063, population: 562, households: 125 },
    { id: 93, name: 'Akagako', gis_id: 57010301, cell_id: 16, latitude: -2.23539, longitude: 30.19911, population: 425, households: 104 },
    { id: 94, name: 'Kagomasi', gis_id: 57010302, cell_id: 16, latitude: -2.21701, longitude: 30.22533, population: 508, households: 104 },
    { id: 95, name: 'Kiruhura', gis_id: 57010303, cell_id: 16, latitude: -2.22038, longitude: 30.23405, population: 532, households: 130 },
    { id: 96, name: 'Kuruganda', gis_id: 57010304, cell_id: 16, latitude: -2.24107, longitude: 30.21823, population: 450, households: 106 },
    { id: 97, name: 'Runzenze', gis_id: 57010305, cell_id: 16, latitude: -2.22017, longitude: 30.22293, population: 450, households: 113 },
    { id: 98, name: 'Rushubi', gis_id: 57010306, cell_id: 16, latitude: -2.22998, longitude: 30.21833, population: 517, households: 128 },
    { id: 99, name: 'Gaharwa', gis_id: 57010401, cell_id: 17, latitude: -2.25866, longitude: 30.25434, population: 512, households: 113 },
    { id: 100, name: 'Gisenyi', gis_id: 57010402, cell_id: 17, latitude: -2.25362, longitude: 30.24574, population: 504, households: 107 },
    { id: 101, name: 'Kayovu', gis_id: 57010403, cell_id: 17, latitude: -2.25841, longitude: 30.25482, population: 475, households: 98 },
    { id: 102, name: 'Ruhanga', gis_id: 57010404, cell_id: 17, latitude: -2.24898, longitude: 30.24618, population: 400, households: 89 },
    { id: 103, name: 'Ruhanura', gis_id: 57010405, cell_id: 17, latitude: -2.24504, longitude: 30.25521, population: 706, households: 153 },
    { id: 104, name: 'Rutanga', gis_id: 57010406, cell_id: 17, latitude: -2.24447, longitude: 30.25685, population: 778, households: 169 },
    { id: 105, name: 'Karusine i', gis_id: 57010407, cell_id: 17, latitude: -2.250829, longitude: 30.2391699, population: 625, households: 145 },
    { id: 106, name: 'Dihiro', gis_id: 57010501, cell_id: 18, latitude: -2.23686, longitude: 30.22402, population: 793, households: 158 },
    { id: 107, name: 'Kagasa I', gis_id: 57010502, cell_id: 18, latitude: -2.27039, longitude: 30.21705, population: 513, households: 116 },
    { id: 108, name: 'Kagasa Ii', gis_id: 57010503, cell_id: 18, latitude: -2.27066, longitude: 30.21691, population: 476, households: 108 },
    { id: 109, name: 'Karusine I', gis_id: 57010504, cell_id: 18, latitude: -2.25016, longitude: 30.24689, population: 625, households: 145 },
    { id: 110, name: 'Karusine Ii', gis_id: 57010505, cell_id: 18, latitude: -2.24959, longitude: 30.23164, population: 603, households: 152 },
    { id: 111, name: 'Migina', gis_id: 57010506, cell_id: 18, latitude: -2.24968, longitude: 30.22062, population: 682, households: 162 },
    { id: 112, name: 'Munyinya', gis_id: 57010507, cell_id: 18, latitude: -2.22649, longitude: 30.23188, population: 591, households: 108 },
    { id: 113, name: 'Rweru I', gis_id: 57010508, cell_id: 18, latitude: -2.23902, longitude: 30.23954, population: 542, households: 113 },
    { id: 114, name: 'Rweru Ii', gis_id: 57010509, cell_id: 18, latitude: -2.24907, longitude: 30.22034, population: 570, households: 114 },
    { id: 115, name: 'Ayabakiza', gis_id: 57020101, cell_id: 19, latitude: -2.11751, longitude: 30.22149, population: 512, households: 106 },
    { id: 116, name: 'Bisagara', gis_id: 57020102, cell_id: 19, latitude: -2.10184, longitude: 30.23657, population: 1004, households: 205 },
    { id: 117, name: 'Nyamigende', gis_id: 57020103, cell_id: 19, latitude: -2.08877, longitude: 30.22978, population: 711, households: 187 },
    { id: 118, name: 'Rugarama', gis_id: 57020104, cell_id: 19, latitude: -2.09511, longitude: 30.22511, population: 572, households: 110 },
    { id: 119, name: 'Rwamakara', gis_id: 57020105, cell_id: 19, latitude: -2.11687, longitude: 30.24598, population: 631, households: 117 },
    { id: 120, name: 'Twabagarama', gis_id: 57020106, cell_id: 19, latitude: -2.10916, longitude: 30.21501, population: 408, households: 108 },
    { id: 121, name: 'Gikana', gis_id: 57020201, cell_id: 20, latitude: -2.09981, longitude: 30.19269, population: 677, households: 139 },
    { id: 122, name: 'Gikurazo', gis_id: 57020202, cell_id: 20, latitude: -2.10974, longitude: 30.20358, population: 451, households: 107 },
    { id: 123, name: 'Kabukuba', gis_id: 57020203, cell_id: 20, latitude: -2.10302, longitude: 30.19257, population: 891, households: 189 },
    { id: 124, name: 'Kamatongo', gis_id: 57020204, cell_id: 20, latitude: -2.10281, longitude: 30.19716, population: 586, households: 146 },
    { id: 125, name: 'Majanja', gis_id: 57020205, cell_id: 20, latitude: -2.09265, longitude: 30.20475, population: 657, households: 162 },
    { id: 126, name: 'Mbuye', gis_id: 57020206, cell_id: 20, latitude: -2.09654, longitude: 30.18818, population: 468, households: 101 },
    { id: 127, name: 'Rushubi', gis_id: 57020207, cell_id: 20, latitude: -2.10778, longitude: 30.18693, population: 645, households: 147 },
    { id: 128, name: 'Cyirabo', gis_id: 57020301, cell_id: 21, latitude: -2.13602, longitude: 30.22597, population: 407, households: 94 },
    { id: 129, name: 'Gatora', gis_id: 57020302, cell_id: 21, latitude: -2.13001, longitude: 30.24529, population: 541, households: 137 },
    { id: 130, name: 'Kajevuba', gis_id: 57020303, cell_id: 21, latitude: -2.11964, longitude: 30.24704, population: 582, households: 128 },
    { id: 131, name: 'Mugorore', gis_id: 57020304, cell_id: 21, latitude: -2.13306, longitude: 30.24271, population: 964, households: 187 },
    { id: 132, name: 'Murambi', gis_id: 57020305, cell_id: 21, latitude: -2.12669, longitude: 30.24551, population: 512, households: 133 },
    { id: 133, name: 'Rebero', gis_id: 57020306, cell_id: 21, latitude: -2.13258, longitude: 30.24055, population: 568, households: 142 },
    { id: 134, name: 'Rwamurama', gis_id: 57020307, cell_id: 21, latitude: -2.1403, longitude: 30.24755, population: 426, households: 112 },
    { id: 135, name: 'Tabarari', gis_id: 57020308, cell_id: 21, latitude: -2.13748, longitude: 30.24324, population: 431, households: 98 },
    { id: 136, name: 'Bitega', gis_id: 57020401, cell_id: 22, latitude: -2.08516, longitude: 30.19466, population: 675, households: 174 },
    { id: 137, name: 'Cyabasonga', gis_id: 57020402, cell_id: 22, latitude: -2.08493, longitude: 30.18516, population: 819, households: 178 },
    { id: 138, name: 'Cyingaju', gis_id: 57020403, cell_id: 22, latitude: -2.07369, longitude: 30.1853, population: 640, households: 186 },
    { id: 139, name: 'Kabeza', gis_id: 57020404, cell_id: 22, latitude: -2.06978, longitude: 30.17833, population: 780, households: 164 },
    { id: 140, name: 'Nyaruhuru', gis_id: 57020405, cell_id: 22, latitude: -2.07729, longitude: 30.17885, population: 622, households: 137 },
    { id: 141, name: 'Gisororo', gis_id: 57020501, cell_id: 23, latitude: -2.13639, longitude: 30.22461, population: 723, households: 176 },
    { id: 142, name: 'Kabeza', gis_id: 57020502, cell_id: 23, latitude: -2.12484, longitude: 30.20553, population: 758, households: 168 },
    { id: 143, name: 'Katarara', gis_id: 57020503, cell_id: 23, latitude: -2.12638, longitude: 30.20334, population: 691, households: 156 },
    { id: 144, name: 'Kinihira', gis_id: 57020504, cell_id: 23, latitude: -2.11262, longitude: 30.20322, population: 758, households: 154 },
    { id: 145, name: 'Rwimpyisi', gis_id: 57020505, cell_id: 23, latitude: -2.12721, longitude: 30.20482, population: 774, households: 172 },
    { id: 146, name: 'Uwimpunga', gis_id: 57020506, cell_id: 23, latitude: -2.13907, longitude: 30.21267, population: 817, households: 187 },
    { id: 147, name: 'Bitaba', gis_id: 57070101, cell_id: 24, latitude: -2.08645, longitude: 30.15812, population: 524, households: 143 },
    { id: 148, name: 'Gatwe', gis_id: 57070102, cell_id: 24, latitude: -2.08579, longitude: 30.15736, population: 498, households: 126 },
    { id: 149, name: 'Gisasa', gis_id: 57070103, cell_id: 24, latitude: -2.08091, longitude: 30.16079, population: 674, households: 157 },
    { id: 150, name: 'Misatsi', gis_id: 57070104, cell_id: 24, latitude: -2.08547, longitude: 30.15532, population: 568, households: 145 },
    { id: 151, name: 'Rebero', gis_id: 57070105, cell_id: 24, latitude: -2.088465, longitude: 30.16472, population: 546, households: 120 },
    { id: 152, name: 'Rukoronko', gis_id: 57070106, cell_id: 24, latitude: -2.07527, longitude: 30.16653, population: 503, households: 138 },
    { id: 153, name: 'Gatare', gis_id: 57070201, cell_id: 25, latitude: -2.06857, longitude: 30.13025, population: 283, households: 73 },
    { id: 154, name: 'Gisenyi', gis_id: 57070202, cell_id: 25, latitude: -2.08127, longitude: 30.1493, population: 452, households: 99 },
    { id: 155, name: 'Karutabana', gis_id: 57070203, cell_id: 25, latitude: -2.08143, longitude: 30.14359, population: 490, households: 114 },
    { id: 156, name: 'Ngando', gis_id: 57070204, cell_id: 25, latitude: -2.06941, longitude: 30.13459, population: 516, households: 128 },
    { id: 157, name: 'Rubumba', gis_id: 57070205, cell_id: 25, latitude: -2.07594, longitude: 30.12161, population: 675, households: 175 },
    { id: 158, name: 'Rwintenderi', gis_id: 57070206, cell_id: 25, latitude: -2.08083, longitude: 30.14363, population: 654, households: 165 },
    { id: 159, name: 'Kagerero', gis_id: 57070301, cell_id: 26, latitude: -2.04967, longitude: 30.1573, population: 573, households: 120 },
    { id: 160, name: 'Nyamabuye', gis_id: 57070302, cell_id: 26, latitude: -2.05722, longitude: 30.16593, population: 385, households: 95 },
    { id: 161, name: 'Nyarukombe', gis_id: 57070303, cell_id: 26, latitude: -2.05658, longitude: 30.16492, population: 519, households: 118 },
    { id: 162, name: 'Rugazi', gis_id: 57070304, cell_id: 26, latitude: -2.05788, longitude: 30.16602, population: 732, households: 184 },
    { id: 163, name: 'Rukira', gis_id: 57070305, cell_id: 26, latitude: -2.04411, longitude: 30.15458, population: 716, households: 143 },
    { id: 164, name: 'Rukore', gis_id: 57070306, cell_id: 26, latitude: -2.07847, longitude: 30.17885, population: 631, households: 126 },
    { id: 165, name: 'Rusagara', gis_id: 57070307, cell_id: 26, latitude: -2.05251, longitude: 30.16021, population: 630, households: 126 },
    { id: 166, name: 'Gatoki', gis_id: 57070401, cell_id: 27, latitude: -2.08788, longitude: 30.07631, population: 421, households: 96 },
    { id: 167, name: 'Gitaraga', gis_id: 57070402, cell_id: 27, latitude: -2.08586, longitude: 30.09964, population: 738, households: 182 },
    { id: 168, name: 'Kaboshya', gis_id: 57070403, cell_id: 27, latitude: -2.08889, longitude: 30.13648, population: 645, households: 167 },
    { id: 169, name: 'Kaziramire', gis_id: 57070404, cell_id: 27, latitude: -2.09421, longitude: 30.12596, population: 526, households: 119 },
    { id: 170, name: 'Rurenge', gis_id: 57070405, cell_id: 27, latitude: -2.08669, longitude: 30.13105, population: 764, households: 112 },
    { id: 171, name: 'Rwabashenyi', gis_id: 57070406, cell_id: 27, latitude: -2.08566, longitude: 30.13305, population: 608, households: 145 },
    { id: 172, name: 'Gatoro', gis_id: 57090101, cell_id: 28, latitude: -2.11381, longitude: 30.04362, population: 320, households: 93 },
    { id: 173, name: 'Kayenzi', gis_id: 57090102, cell_id: 28, latitude: -2.12845, longitude: 30.05864, population: 639, households: 144 },
    { id: 174, name: 'Kidudu', gis_id: 57090103, cell_id: 28, latitude: -2.12971, longitude: 30.03156, population: 464, households: 104 },
    { id: 175, name: 'Kingabo', gis_id: 57090104, cell_id: 28, latitude: -2.11601, longitude: 30.04163, population: 237, households: 78 },
    { id: 176, name: 'Rubomborana', gis_id: 57090105, cell_id: 28, latitude: -2.11174, longitude: 30.04852, population: 466, households: 100 },
    { id: 177, name: 'Rugarama', gis_id: 57090106, cell_id: 28, latitude: -2.11175, longitude: 30.05587, population: 479, households: 139 },
    { id: 178, name: 'Rugunga', gis_id: 57090107, cell_id: 28, latitude: -2.11871, longitude: 30.03218, population: 737, households: 145 },
    { id: 179, name: 'Cyeru', gis_id: 57090201, cell_id: 29, latitude: -2.08982, longitude: 30.08769, population: 658, households: 131 },
    { id: 180, name: 'Gasagara', gis_id: 57090202, cell_id: 29, latitude: -2.08705, longitude: 30.06333, population: 277, households: 54 },
    { id: 181, name: 'Kabaha', gis_id: 57090203, cell_id: 29, latitude: -2.10724, longitude: 30.06867, population: 444, households: 122 },
    { id: 182, name: 'Kabeza', gis_id: 57090204, cell_id: 29, latitude: -2.07804, longitude: 30.09964, population: 400, households: 143 },
    { id: 183, name: 'Karumuna', gis_id: 57090205, cell_id: 29, latitude: -2.0721, longitude: 30.08713, population: 547, households: 146 },
    { id: 184, name: 'Kurugenge', gis_id: 57090206, cell_id: 29, latitude: -2.07783, longitude: 30.07631, population: 619, households: 123 },
    { id: 185, name: 'Nyamabuye', gis_id: 57090207, cell_id: 29, latitude: -2.07719, longitude: 30.07214, population: 390, households: 197 },
    { id: 186, name: 'Rwangara', gis_id: 57090208, cell_id: 29, latitude: -2.10998, longitude: 30.06842, population: 722, households: 84 },
    { id: 187, name: 'Kagoma I', gis_id: 57090301, cell_id: 30, latitude: -2.0824, longitude: 30.02903, population: 520, households: 114 },
    { id: 188, name: 'Kagoma Ii', gis_id: 57090302, cell_id: 30, latitude: -2.08244, longitude: 30.03145, population: 481, households: 127 },
    { id: 189, name: 'Kiganwa', gis_id: 57090303, cell_id: 30, latitude: -2.07632, longitude: 30.04372, population: 493, households: 131 },
    { id: 190, name: 'Nganwa', gis_id: 57090304, cell_id: 30, latitude: -2.08441, longitude: 30.03385, population: 415, households: 125 },
    { id: 191, name: 'Nyarunazi', gis_id: 57090305, cell_id: 30, latitude: -2.09126, longitude: 30.05201, population: 568, households: 113 },
    { id: 192, name: 'Ruhengeri', gis_id: 57090306, cell_id: 30, latitude: -2.08337, longitude: 30.03839, population: 325, households: 157 },
    { id: 193, name: 'Rusekera', gis_id: 57090307, cell_id: 30, latitude: -2.08859, longitude: 30.03626, population: 376, households: 123 }
  ]
)