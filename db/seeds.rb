# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tag1 = Tag.create!(name: "東京")
tag2 = Tag.create!(name: "東京23区内")
tag3 = Tag.create!(name: "東京23区外")



place1 = Place.create!(
  name: "銀座テラス",
  description: "銀座三越9階にある屋上庭園「銀座テラス」。芝生広場、テラスガーデンほかテーブル・イス・ベンチがあり休息にぴったり!",
  fee: "0",
  start_time: "10:00",
  end_time: "20:00",
  access: "東京メトロ銀座線・丸の内線・日比谷線「銀座駅」銀座四丁目交差点改札より徒歩1分
  東京メトロ有楽町線「銀座一丁目駅」(9番出口)より徒歩5分
  都営浅草線・東京メトロ日比谷線「東銀座駅」銀座駅方面地下通路経由徒歩2分
  JR「有楽町駅」(中央口・銀座口)より徒歩9分",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d810.3059703043009!2d139.765722!3d35.671489!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x91fb4ae4762f83be!2z6YqA5bqn5LiJ6LaK!5e0!3m2!1sja!2sjp!4v1667670056008!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.76574077546226, 35.67133211499226),
  address: "東京都中央区銀座4丁目6-16"
)
place1.tags << tag1
place1.tags << tag2
Store.create!(
  place_id: place1.id,
  store_type: 1,
  title: "ギンザフードガーデン",
  description: "銀座三越本館地下2階、地下3階に位置。",
  start_time: "10:00",
  end_time: "20:00",
)

place2 = Place.create!(
  name: "GINZA SIX ガーデン",
  description: "GINZA SIX13階にある屋上庭園「GINZA SIX ガーデン」。銀座最大級の約4000㎡で自然に親しむ近世江戸の庭園文化と街の賑わいを楽しむ西欧の広場文化の融合がコンセプト!",
  fee: "0",
  start_time: "7:00",
  end_time: "23:00",
  access: "東京メトロ 銀座線・丸ノ内線・日比谷線「銀座駅」A3出口
  徒歩2分
  東京メトロ 日比谷線、都営地下鉄 浅草線「東銀座駅」A1出口徒歩3分
  東京メトロ 有楽町線 「銀座一丁目駅」9番出口徒歩8分
  東京メトロ 日比谷線・千代田線、都営地下鉄 三田線「日比谷駅」A2出口徒歩9分
  東京メトロ 有楽町線、JR 山手線・京浜東北線「有楽町駅」銀座口出口徒歩10分
  東京メトロ 銀座線・都営地下鉄 浅草線、JR 京浜東北線・東海道線・横須賀線、ゆりかもめ「新橋駅」銀座口出口徒歩10分
  ",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1620.6555453179315!2d139.763962!3d35.6693413!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188bef472c0001%3A0xcfcb0363f18109fc!2sGINZA%20SIX!5e0!3m2!1sja!2sjp!4v1667669997551!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.76398345766756, 35.669746595746375),
  address: "東京都中央区銀座6丁目10-1"
)

place2.tags << tag1
place2.tags << tag2

Store.create!(
  place_id: place2.id,
  store_type: 1,
  title: "スターバックスコーヒー",
  description: "GINZA SIX1階2階に位置。1階と2階で営業時間が違う点に注意",
  start_time: "7:00",
  end_time: "22:30",
)

Store.create!(
  place_id: place2.id,
  store_type: 1,
  title: "BLUE BOTTLE COFFEE",
  description: "GINZA SIX地下2階に位置。",
  start_time: "8:00",
  end_time: "20:30",
)


place3 = Place.create!(
  name: "日本橋髙島屋S.C本館屋上",
  description: "日本橋髙島屋S.C本館屋上にある屋上庭園。日本庭園やカフェの他、バーベキュー ビアガーデンも完備！",
  fee: "0",
  start_time: "10:30",
  end_time: "19:30",
  access: "・JR「東京駅」八重洲北口徒歩5分
  ・東京メトロ銀座線・東西線「日本橋駅」直結
  ・都営地下鉄浅草線「日本橋駅」徒歩4分",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6481.694823451809!2d139.773512!3d35.680759!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188957eeda32ad%3A0x58716e5c91efbc3f!2z44CSMTAzLTAwMjcg5p2x5Lqs6YO95Lit5aSu5Yy65pel5pys5qmL77yS5LiB55uu77yU4oiS77yR!5e0!3m2!1sja!2sjp!4v1667669951636!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.773512, 35.68117730991948),
  address: "東京都中央区日本橋2丁目4-1"
)

place3.tags << tag1
place3.tags << tag2
Store.create!(
  place_id: place3.id,
  store_type: 0,
  title: "FEEL GREEN CAFE",
  description: "高島屋S.C本館屋上に位置。テーブル席あり。",
  start_time: "10:30",
  end_time: "15:00",
)


place4 = Place.create!(
  name: "松屋銀座 屋上",
  description: "松屋銀座 屋上菜園にある屋上庭園。小さな菜園やファッション関係の祈願にご利益があると言われる龍光不動尊も。ちょっとした休憩におすすめ！",
  fee: "0",
  start_time: "10:00",
  end_time: "20:00",
  access: "東京メトロ銀座線、丸ノ内線、日比谷線「銀座駅」A12番出口直結
  東京メトロ有楽町線「銀座一丁目駅」9番出口より徒歩3分
  都営地下鉄浅草線「東銀座駅」A8番出口より徒歩3分
  JR「有楽町駅」より徒歩8分",
  map_link: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3241.2076139659694!2d139.7659893!3d35.6718896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188be69c80f1c7%3A0x6cfcc44679728e21!2z44CSMTA0LTAwNjEg5p2x5Lqs6YO95Lit5aSu5Yy66YqA5bqn77yT5LiB55uu77yW4oiS77yR!5e0!3m2!1sja!2sjp!4v1667669909298!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.76601075767078, 35.67209006272129),
  address: "東京都中央区銀座3丁目6-1"
)

place4.tags << tag1
place4.tags << tag2


place5 = Place.create!(
  name: "新丸ビル",
  description: "新丸ビル7階にある屋上庭園。東京駅を眺めることができるスポット。テラスには休憩できるよう椅子やテーブルを設置!",
  fee: "0",
  start_time: "11:00",
  end_time: "21:00",
  access: "JR東京駅丸の内中央口より徒歩1分
  丸ノ内線東京駅直結
  千代田線二重橋前＜丸の内＞駅徒歩2分
  三田線大手町駅直結
  東西線大手町駅徒歩4分
  半蔵門線大手町駅徒歩8分
  有楽町線有楽町駅徒歩11分",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6481.546327429794!2d139.764409!3d35.682587!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188bf9b11e03ab%3A0x94bd79343edb8416!2z5paw5Li444Gu5YaF44OT44Or44OH44Kj44Oz44Kw!5e0!3m2!1sja!2sjp!4v1667669861055!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.76423733863345, 35.683057587723724),
  address: "東京都千代田区丸の内1丁目5-1"
)

place5.tags << tag1
place5.tags << tag2



place6 = Place.create!(
  name: "東京ミッドタウン日比谷パークビューガーデン",
  description: "東京ミッドタウン日比谷6階にある空中庭園。日比谷公園や皇居を一望することも可能。ベンチや周辺にショップもあり!",
  fee: "0",
  start_time: "8:00",
  end_time: "23:00",
  access: "東京メトロ千代田線・日比谷線 ・都営地下鉄三田線「日比谷」駅直結
  東京メトロ有楽町線「有楽町」駅　徒歩4分
  東京メトロ丸ノ内線・日比谷線・銀座線「銀座」駅　徒歩5分
  JR山手線・京浜東北線「有楽町」駅　徒歩5分",
  map_link: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1620.5661630608263!2d139.75917619999998!3d35.6737436!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188bee3cf5818b%3A0x2c4beff9dc43a879!2z5p2x5Lqs44Of44OD44OJ44K_44Km44Oz5pel5q-U6LC3!5e0!3m2!1sja!2sjp!4v1667669798912!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.7592191153416, 35.67383511352686),
  address: "東京都千代田区有楽町1丁目1-2"
)

place6.tags << tag1
place6.tags << tag2
Store.create!(
  place_id: place6.id,
  store_type: 1,
  title: "セブン-イレブン",
  description: "ミッドタウンB1階に位置。",
  start_time: "6:00",
  end_time: "23:00",
)



place7 = Place.create!(
  name: "有楽町コリーヌ",
  description: "東京交通会館3階にある屋上庭園。ウッドデッキを基調としつつ石張りも。ベンチもあるためちょっとした休憩にも最適。",
  fee: "0",
  start_time: "10:00",
  end_time: "16:30",
  access: "JR線 ＪＲ山手線・京浜東北線：有楽町駅（京橋口・中央口（銀座側）） 徒歩１分
  地下鉄 有楽町線：有楽町駅〔Ｄ８〕 徒歩１分
  有楽町線：銀座一丁目駅〔２〕 徒歩１分
  丸ノ内線：銀座駅〔Ｃ９〕 徒歩３分
  銀座線：銀座駅〔Ｃ９〕 徒歩３分
  日比谷線：銀座駅〔Ｃ９〕 徒歩３分
  千代田線：日比谷駅〔Ｄ８〕 徒歩８分
  都営三田線：日比谷駅〔Ｄ８〕 徒歩５分",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3241.0857710338323!2d139.764331!3d35.67489!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188be53d8f6d49%3A0x6b04420514b9431d!2z44CSMTAwLTAwMDYg5p2x5Lqs6YO95Y2D5Luj55Sw5Yy65pyJ5qW955S677yS5LiB55uu77yR77yQ4oiS77yR!5e0!3m2!1sja!2sjp!4v1667669265462!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.76430954232922, 35.67511660147696),
  address: "東京都千代田区有楽町2丁目10-1"
)

place7.tags << tag1
place7.tags << tag2


place8 = Place.create!(
  name: "KITTEガーデン",
  description: "KITTE丸の内6階にある屋上庭園「KITTEガーデン」。東京駅丸の内駅舎を一望できるスポット。お昼だけでなく夜景もおすすめ!",
  fee: "0",
  start_time: "11:00",
  end_time: "23:00",
  access: "JR 東京駅から徒歩約1分
  丸ノ内線東京駅　地下道より直結
  千代田線二重橋前駅から徒歩約2分",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6481.793681751183!2d139.765012!3d35.679542!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4934f603ad7b2e75!2zS0lUVEXjgqzjg7zjg4fjg7M!5e0!3m2!1sja!2sjp!4v1667668953922!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.76494762698758, 35.67992545669168),
  address: "東京都千代田区丸の内2丁目7-2 KITTE丸の内 6F"
)
place8.tags << tag1
place8.tags << tag2
Store.create!(
  place_id: place8.id,
  store_type: 1,
  title: "KITTE丸の内店",
  description: "KITTE1階、東京ビル方面に位置。",
  start_time: "7:00",
  end_time: "22:00",
)

place9 = Place.create!(
  name: "大手町カンファレンスセンター スカイガーデン",
  description: "大手町カンファレンスセンター4階にある屋上庭園「スカイガーデン」。川や水田等里山の風景を感じさせる部分や大手町神社もあり。",
  fee: "0",
  start_time: "10:00",
  end_time: "16:00",
  access: "大手町駅から地下1階にてC2b出口が直結
  竹橋駅4出口から徒歩3分
  東京駅丸の内出口から徒歩15分",
  map_link: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3240.523661360423!2d139.7627321!3d35.6887292!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188c061d2b2677%3A0xbaf2735fc7eb8025!2z44CSMTAwLTAwMDQg5p2x5Lqs6YO95Y2D5Luj55Sw5Yy65aSn5omL55S677yR5LiB55uu77yT4oiS77yRIEpB44OT44Or!5e0!3m2!1sja!2sjp!4v1667668862384!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.76276428461415, 35.68895574236939),
  address: "東京都千代田区大手町1丁目3-1"
)

place9.tags << tag1
place9.tags << tag2

Store.create!(
  place_id: place9.id,
  store_type: 1,
  title: "スターバックスコーヒー",
  description: "大手町カンファレンスセンター1階に位置。",
  start_time: "7:00",
  end_time: "22:00",
)

Store.create!(
  place_id: place9.id,
  store_type: 1,
  title: "セブン-イレブン",
  description: "大手町カンファレンスセンター地下1階に位置。",
  start_time: "7:00",
  end_time: "23:00",
)


place10 = Place.create!(
  name: "晴海アイランド トリトンスクエア",
  description: "晴海アイランド トリトンスクエアにある庭園。広々とした花のテラス、緑のテラスがあり季節ごとに様相が変わっていくのも魅力！",
  fee: "0",
  start_time: "11:00",
  end_time: "21:00",
  access: "都営地下鉄大江戸線「勝どき」駅下車 A2a・b出口（月島駅側）より徒歩4分
  東京メトロ有楽町線・都営地下鉄大江戸線「月島」駅下車 10番出口より徒歩9分",
  map_link: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3241.79704024159!2d139.7827814!3d35.6573718!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6018897833cde967%3A0x67c8a3e3c280c546!2z44CSMTA0LTAwNTMg5p2x5Lqs6YO95Lit5aSu5Yy65pm05rW377yR5LiB55uu77yY4oiS77yR77yW!5e0!3m2!1sja!2sjp!4v1667668806138!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.78269556699857, 35.65752869264157),
  address: "東京都中央区晴海1丁目8-16"
)
place10.tags << tag1
place10.tags << tag2
Store.create!(
  place_id: place10.id,
  store_type: 1,
  title: "マルエツ プチ",
  description: "晴海アイランド1階、オフィスタワーZの近くに位置。",
  start_time: "8:00",
  end_time: "22:00",
)
Store.create!(
  place_id: place10.id,
  store_type: 1,
  title: "マクドナルド",
  description: "晴海アイランド1階、オフィスタワーZの近くに位置",
  start_time: "7:00",
  end_time: "22:00",
)


place11 = Place.create!(
  name: "アークヒルズ メインガーデン",
  description: "アークヒルズ メインガーデンは季節の自然感にあふれるスポットで散策に最適",
  fee: "0",
  start_time: "0:00",
  end_time: "23:59",
  access: "東京メトロ南北線『六本木一丁目駅』3番出口より徒歩1分
  東京メトロ銀座線『溜池山王駅』13番出口より徒歩1分
  東京メトロ日比谷線『神谷町駅』4番出口より徒歩8分
  東京メトロ千代田線『赤坂駅』5番出口より徒歩9分
  東京メトロ丸の内線『国会議事堂前駅』3番出口より徒歩10分",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6482.801187231773!2d139.740015!3d35.667137!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188b85242e57f5%3A0xc57bb3108bd9de67!2z44CSMTA3LTAwNTIg5p2x5Lqs6YO95riv5Yy66LWk5Z2C77yR5LiB55uu77yR77yS4oiS77yT77yS!5e0!3m2!1sja!2sjp!4v1667668687520!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.740015, 35.6674856512534),
  address: "東京都港区赤坂1丁目12-32"
)

place11.tags << tag1
place11.tags << tag2


place12 = Place.create!(
  name: "アークヒルズ フォーシーズンガーデン",
  description: "アークヒルズ フォーシーズンガーデンは日本原産の植物が多く、緑がとてもきれいなスポットです",
  fee: "0",
  start_time: "0:00",
  end_time: "23:59",
  access: "東京メトロ南北線『六本木一丁目駅』3番出口より徒歩1分
  東京メトロ銀座線『溜池山王駅』13番出口より徒歩1分
  東京メトロ日比谷線『神谷町駅』4番出口より徒歩8分
  東京メトロ千代田線『赤坂駅』5番出口より徒歩9分
  東京メトロ丸の内線『国会議事堂前駅』3番出口より徒歩10分",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6482.801187231773!2d139.740015!3d35.667137!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188b85242e57f5%3A0xc57bb3108bd9de67!2z44CSMTA3LTAwNTIg5p2x5Lqs6YO95riv5Yy66LWk5Z2C77yR5LiB55uu77yR77yS4oiS77yT77yS!5e0!3m2!1sja!2sjp!4v1667668580335!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.740015, 35.6674856512534),
  address: "東京都港区赤坂1丁目12-32"
)

place12.tags << tag1
place12.tags << tag2


place13 = Place.create!(
  name: "松坂屋 上野店",
  description: "松坂屋 上野店の屋上にある庭園。過去には屋上遊園地があったことで話題に。今もベンチ等ありひと休憩におすすめ。",
  fee: "0",
  start_time: "10:00",
  end_time: "19:00",
  access: "JR御徒町駅より徒歩2分
  東京メトロ銀座線 上野広小路駅 直結、日比谷線 仲御徒町駅より徒歩3分
  都営大江戸線上野御徒町駅より徒歩1分
  京成電鉄京成上野駅より徒歩7分",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6479.52334663487!2d139.773412!3d35.707482!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xcaa7301f0201d89a!2z5p2-5Z2C5bGLIOS4iumHjuW6lw!5e0!3m2!1sja!2sus!4v1667668505185!5m2!1sja!2sus",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.77328325397508, 35.70786532238021),
  address: "東京都台東区上野3丁目29-5"
)

place13.tags << tag1
place13.tags << tag2


place14 = Place.create!(
  name: "国立科学博物館 屋上庭園",
  description: "国立科学博物館地球館の屋上にある庭園。ハーブカーデンとスカイデッキ2つあり自分の気分に合わせて利用できる点もおすすめ",
  fee: "630",
  start_time: "9:00",
  end_time: "17:00",
  access: "JR御徒町駅より徒歩2分
  JR「上野」駅（公園口）から徒歩5分
  東京メトロ銀座線・日比谷線「上野」駅（７番出口）から徒歩10分
  京成線「京成上野」駅（正面口）から徒歩10分",
  map_link: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3239.4318753227017!2d139.77678989999998!3d35.715595799999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188e9c8aeaaaab%3A0x9b5afd54b728e89c!2z5Zu956uL56eR5a2m5Y2a54mp6aSoIOWcsOeQg-mkqA!5e0!3m2!1sja!2sjp!4v1667668446357!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.77674698465836, 35.71583099682514),
  address: "東京都台東区上野公園7-20 国立科学博物館地球館"
)

place14.tags << tag1
place14.tags << tag2


place15 = Place.create!(
  name: "朝倉彫塑館",
  description: "朝倉彫塑館の屋上にある庭園。日本の屋上緑化の先駆けとしての歴史も。年間を通して楽しめるスポット",
  fee: "500",
  start_time: "9:30",
  end_time: "16:30",
  access: "	JR、京成線、日暮里・舎人ライナー 日暮里駅北改札口を出て西口から徒歩5分",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1619.4872836606528!2d139.768525!3d35.726844!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x48f5ab29bbf7fdd0!2z5pyd5YCJ5b2r5aGR6aSo!5e0!3m2!1sja!2sjp!4v1667668370835!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.76838552513965, 35.72694416236853),
  address: "東京都台東区谷中7丁目18-10"
)

place15.tags << tag1
place15.tags << tag2


place16 = Place.create!(
  name: "新宿NEWoMan",
  description: "新宿駅直結のNEWoManの6階にある庭園。3階から6階まで外階段で繋がり緑があるためそちらもおすすめ！",
  fee: "0",
  start_time: "11:00",
  end_time: "18:00",
  access: "	JR各線「新宿駅」ミライナタワー改札・甲州街道改札・新南改札直結。
  都営新宿線・都営大江戸線・京王新線「新宿駅」より徒歩5分。
  東京メトロ副都心線「新宿三丁目駅」より徒歩3分",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3240.5254691292025!2d139.6996543!3d35.6886847!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188cdac81f3bf5%3A0xd246d03c1aeda4f8!2z44OL44Ol44Km44Oe44Oz5paw5a6_!5e0!3m2!1sja!2sjp!4v1667668317410!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.70187516892986, 35.688885120531786),
  address: "東京都新宿区新宿4丁目1-6"
)

place16.tags << tag1
place16.tags << tag2

Store.create!(
  place_id: place16.id,
  store_type: 1,
  title: "THE MATCHA TOKYO",
  description: "新宿NEWoMan1階に位置する抹茶専門店。",
  start_time: "10:00",
  end_time: "21:00",
)
Store.create!(
  place_id: place16.id,
  store_type: 1,
  title: "Blue Bottle Coffee",
  description: "新宿NEWoMan1階に位置する。",
  start_time: "8:00",
  end_time: "21:00",
)
Store.create!(
  place_id: place16.id,
  store_type: 1,
  title: "タリーズコーヒー",
  description: "新宿NEWoMan2階に位置する。駅ナカにあるため注意",
  start_time: "7:00",
  end_time: "21:00",
)


place17 = Place.create!(
  name: "伊勢丹新宿店 アイ・ガーデン",
  description: "伊勢丹新宿店屋上にある「アイ・ガーデン」。芝生広場や雑木林がありちょっとした休憩におすすめ！",
  fee: "0",
  start_time: "10:00",
  end_time: "19:00",
  access: "東京メトロ丸ノ内線新宿三丁目駅伊勢丹方面改札から徒歩約１分
  東京メトロ副都心線新宿三丁目交差点改札から徒歩約２分または伊勢丹正面改札から徒歩約３０秒(伊勢丹正面改札は15時以降使用可能）
    都営新宿線新宿三丁目改札から徒歩約３分",
  map_link: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3240.4080900986296!2d139.7046466!3d35.691573999999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188cdba56b3bf7%3A0x8b741cc73341edb5!2z5LyK5Yui5Li5IOaWsOWuv-W6lw!5e0!3m2!1sja!2sjp!4v1667668212863!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.70464660000002,35.69181798130809),
  address: "東京都新宿区新宿3丁目14-1"
)
place17.tags << tag1
place17.tags << tag2



place18 = Place.create!(
  name: "新宿マルイ本館　Q-COURT",
  description: "新宿マルイ本館屋上にある「Q-COURT」。英国様式で整備されており、東西南北5箇所のスペースがあり！ベンチもあるのでちょっとした休憩にもおすすめ",
  fee: "0",
  start_time: "11:00",
  end_time: "19:00",
  access: "東京メトロ丸ノ内線A4口から徒歩約1分
  都営新宿線新宿三丁目駅A1口から徒歩約2分
  東京メトロ副都心線新宿三丁目駅からA1徒歩約2分
  JR各線新宿駅東口から徒歩約5分",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6480.868425915149!2d139.704064!3d35.690931!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1b7b25d83eb308ff!2z5paw5a6_44Oe44Or44KkIOacrOmkqA!5e0!3m2!1sja!2sjp!4v1667668159807!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.70406400000002, 35.69147124767695),
  address: "東京都新宿区新宿3丁目30-13"
)
place18.tags << tag1
place18.tags << tag2



place19 = Place.create!(
  name: "アトレ恵比寿 アトレ空中花園",
  description: "アトレ恵比寿西館8階にある「アトレ空中花園」。オリーブがシンボルツリーとしてあったり会員制の菜園もある！東京タワーも眺めることができるおすすめスポット！",
  fee: "0",
  start_time: "8:00",
  end_time: "23:00",
  access: "JR各線恵比寿駅直結",
  map_link: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3242.2355421234442!2d139.7096458!3d35.646567999999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188b405b2840e9%3A0xd00b2ba6437ca775!2z44Ki44OI44Os5oG15q-U5a-_IOilv-mkqA!5e0!3m2!1sja!2sjp!4v1667668105001!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.7096779846133, 35.64669875827924),
  address: "東京都渋谷区恵比寿南1丁目6-1"
)
Store.create!(
  place_id: place19.id,
  store_type: 1,
  title: "Blue Bottle Coffee",
  description: "アトレ恵比寿1階に位置する。",
  start_time: "8:00",
  end_time: "21:00",
)

place19.tags << tag1
place19.tags << tag2

place20 = Place.create!(
  name: "西武池袋本店 食と緑の空中庭園",
  description: "西武池袋本店の屋上にある「食と緑の空中庭園」。四季折々の風情を楽しめる睡蓮の庭を始めとしてガーデンエリアやフードエリアあり。夜にはライトアップもあるおしゃれスポット",
  fee: "0",
  start_time: "10:00",
  end_time: "22:00",
  access: "西武池袋線池袋駅、JR各線池袋駅から徒歩数分",
  map_link: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3238.8925792220257!2d139.71181389999998!3d35.7288603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188d67fef93b19%3A0xcd9ac1373273ee1e!2z6KW_5q2m5rGg6KKL5pys5bqX!5e0!3m2!1sja!2sjp!4v1667668037363!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.71165296557777, 35.729060599723496),
  address: "東京都豊島区南池袋1丁目28-1"
)

place20.tags << tag1
place20.tags << tag2


place21 = Place.create!(
  name: "目黒十五庭",
  description: "目黒総合庁舎屋上にある「目黒十五庭」。緑化エリアや芝生エリア、和風庭園エリア、野菜畑など様々な緑に触れることができるのがおすすめ",
  fee: "0",
  start_time: "9:00",
  end_time: "16:30",
  access: "東急東横線・東京メトロ日比谷線中目黒駅から5分",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6485.275671431132!2d139.6980683!3d35.6366538!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188b49c80bdc73%3A0x5c80d8950a40fe!2z55uu6buS5Yy65b255omA!5e0!3m2!1sja!2sjp!4v1667667987362!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.69819702387016, 35.64179818539245),
  address:"東京都目黒区上目黒2丁目19-15"
)
place21.tags << tag1
place21.tags << tag2


place22 = Place.create!(
  name: "目黒天空庭園",
  description: "首都高速中央環状線大橋ジャンクション屋上にある目黒天空庭園。全国初のジャンクションの屋上に開設されており、多くの来場者で賑わいがある。広々とした自然がありおすすめ！",
  fee: "0",
  start_time: "7:00",
  end_time: "21:00",
  access: "東急田園都市線池尻大橋駅下車約3分、東急バス「大橋」下車約3分",
  map_link: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3242.0530249204908!2d139.68755819999998!3d35.651065200000005!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6018f4abbe170ab3%3A0x49b378992a0735fb!2z55uu6buS5aSp56m65bqt5ZyS!5e0!3m2!1sja!2sjp!4v1667576257917!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.6875581981072, 35.65121338699545),
  address: "東京都目黒区大橋1丁目9-2"
)
place22.tags << tag1
place22.tags << tag2


place23 = Place.create!(
  name: "etomo 武蔵小山店",
  description: "etomo 武蔵小山店の屋上にある屋上庭園。ベンチや遊歩道がありちょっとした休憩にもおすすめ！",
  fee: "0",
  start_time: "10:00",
  end_time: "20:00",
  access: "東急目黒線武蔵小山駅直結",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3243.2963938743!2d139.7020396!3d35.620419!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188ad9709e333d%3A0xd7aeafabf220c272!2z44Ko44OI44Oi5q2m6JS15bCP5bGx!5e0!3m2!1sja!2sjp!4v1667576187863!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.70438923063756, 35.620680671728735),
  address: "東京都品川区小山3丁目4-8"
)
place23.tags << tag1
place23.tags << tag2

Store.create!(
  place_id: place23.id,
  store_type: 1,
  title: "タリーズコーヒー",
  description: "etomo 武蔵小山1階に位置する。",
  start_time: "7:30",
  end_time: "22:00",
)


place24 = Place.create!(
  name: "成城コルティ 屋上庭園",
  description: "成城コルティの4階にある屋上庭園。オリーブの庭と雑木林の岡があり自然豊か。自然だけでなくオリーブの庭からは富士山・雑木林の岡からは東京タワーやスカイツリーが望める景色の良いスポット！",
  fee: "0",
  start_time: "10:00",
  end_time: "21:00",
  access: "小田急線「成城学園前駅」下車すぐ",
  map_link: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3242.5038067973237!2d139.59859989999998!3d35.6399571!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6018f1689ac55003%3A0x1a4c109a81f16fe1!2z5oiQ5Z-O44Kz44Or44OG44Kj!5e0!3m2!1sja!2sjp!4v1667576137230!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.59851406931668, 35.64020123910217),
  address: "東京都世田谷区成城6丁目5-34"
)
place24.tags << tag1
place24.tags << tag2
Store.create!(
  place_id: place24.id,
  store_type: 1,
  title: "Odakyu OX",
  description: "成城コルティ1階に位置するスーパーマーケット。",
  start_time: "10:00",
  end_time: "23:00",
)

place25 = Place.create!(
  name: "経堂コルティ 屋上庭園",
  description: "経堂コルティの4階にある屋上庭園。四季折々の風情を楽しめたりイベントも行われている。ベンチやテーブルもあるため休憩も可能！",
  fee: "0",
  start_time: "10:00",
  end_time: "21:00",
  access: "小田急線「経堂駅」下車すぐ",
  map_link: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3242.0409949342297!2d139.6356064!3d35.6513616!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6018f39606774787%3A0x9165424c6e819db9!2z57WM5aCC44Kz44Or44OG44Kj!5e0!3m2!1sja!2sjp!4v1667575203718!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.63563858650625, 35.65152724225466),
  address: "東京都世田谷区経堂2丁目1-33"
)

place25.tags << tag1
place25.tags << tag2

Store.create!(
  place_id: place25.id,
  store_type: 1,
  title: "Odakyu OX",
  description: "経堂コルティ1階に位置するスーパーマーケット。",
  start_time: "10:00",
  end_time: "23:00",
)


place26 = Place.create!(
  name: "玉川高島屋S・C本館 フォレストガーデン",
  description: "玉川高島屋S・C本館屋上にある「フォレストガーデン」。芝生の丘、滝、デッキテラスなど多種多様な自然が混ざった空間。リフレッシュのひとときに最適スポット!",
  fee: "0",
  start_time: "10:00",
  end_time: "20:00",
  access: "東急田園都市線/東急大井町線二子玉川駅西口徒歩2分",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3243.53876668654!2d139.6245706!3d35.6144424!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfc778a3a914e8f99!2z546J5bed6auY5bO25bGL77yz772l77yj!5e0!3m2!1sja!2sjp!4v1667575063565!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.62641597537328, 35.61336956086154),
  address: "東京都世田谷区玉川3丁目17-1"
)
place26.tags << tag1
place26.tags << tag2

Store.create!(
  place_id: place26.id,
  store_type: 1,
  title: "ゴンチャ",
  description: "玉川高島屋南館地下1階に位置する。",
  start_time: "10:00",
  end_time: "20:00",
)
Store.create!(
  place_id: place26.id,
  store_type: 1,
  title: "スターバックスコーヒー",
  description: "玉川高島屋南館7階に位置する。テラス席あり",
  start_time: "10:00",
  end_time: "20:00",
)


place27 = Place.create!(
  name: "玉川高島屋S・C本館 ローズガーデン",
  description: "玉川高島屋S・C本館3階にある「ローズガーデン」。バラをテーマにした英国式庭園。6つのゾーンがあり四季折々の風情を感じることが可能！",
  fee: "0",
  start_time: "10:00",
  end_time: "20:00",
  access: "東急田園都市線/東急大井町線二子玉川駅西口徒歩2分",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3243.53876668654!2d139.6245706!3d35.6144424!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfc778a3a914e8f99!2z546J5bed6auY5bO25bGL77yz772l77yj!5e0!3m2!1sja!2sjp!4v1667574977628!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.62641597537328, 35.61336956086154),
  address: "東京都世田谷区玉川3丁目17-1"
)

place27.tags << tag1
place27.tags << tag2
Store.create!(
  place_id: place27.id,
  store_type: 1,
  title: "ゴンチャ",
  description: "玉川高島屋南館地下1階に位置する。",
  start_time: "10:00",
  end_time: "20:00",
)
Store.create!(
  place_id: place27.id,
  store_type: 1,
  title: "スターバックスコーヒー",
  description: "玉川高島屋南館7階に位置する。テラス席あり",
  start_time: "10:00",
  end_time: "20:00",
)


place28 = Place.create!(
  name: "玉川高島屋S・C南館 PARK＆TERRACE OSOTO",
  description: "玉川高島屋S・C南館7階8階にある「PARK＆TERRACE OSOTO」。モロッコ風スタイルと西海岸スタイルが合わさっている。ヤシ科樹木もあるため南国雰囲気が好きな方にはおすすめ",
  fee: "0",
  start_time: "10:00",
  end_time: "20:00",
  access: "東急田園都市線/東急大井町線二子玉川駅西口徒歩2分",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3243.53876668654!2d139.6245706!3d35.6144424!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfc778a3a914e8f99!2z546J5bed6auY5bO25bGL77yz772l77yj!5e0!3m2!1sja!2sjp!4v1667574904058!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.62641597537328, 35.61336956086154),
  address: "東京都世田谷区玉川3丁目17-1"
)

place28.tags << tag1
place28.tags << tag2
Store.create!(
  place_id: place28.id,
  store_type: 1,
  title: "ゴンチャ",
  description: "玉川高島屋南館地下1階に位置する。",
  start_time: "10:00",
  end_time: "20:00",
)
Store.create!(
  place_id: place28.id,
  store_type: 1,
  title: "スターバックスコーヒー",
  description: "玉川高島屋南館7階に位置する。テラス席あり",
  start_time: "10:00",
  end_time: "20:00",
)


place29 = Place.create!(
  name: "京王リトナード永福町屋上庭園ふくにわ",
  description: "京王リトナード永福町屋上にある「ふくにわ」。季節の花々の他にも桜がシンボルツリーとして存在。ベンチもあるため憩いの場としてもおすすめ！",
  fee: "0",
  start_time: "8:00",
  end_time: "19:00",
  access: "京王井の頭線永福町駅直結",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d25928.28915532453!2d139.643307!3d35.676112!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb33c0f6ce10eeac0!2z5Lqs546L44Oq44OI44OK44O844OJIOawuOemj-eUug!5e0!3m2!1sja!2sjp!4v1667489374147!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.6432211693167, 35.67820364947157),
  address: "東京都杉並区永福2丁目60-31"
)

place29.tags << tag1
place29.tags << tag2
Store.create!(
  place_id: place24.id,
  store_type: 1,
  title: "キッチンコート",
  description: "京王リトナード永福町1階にあるスーパーマーケット。",
  start_time: "9:30",
  end_time: "24:00",
)

place30 = Place.create!(
  name: "キラリナ京王吉祥寺 キラリナテラス",
  description: "キラリナ京王吉祥寺9階にある屋上庭園「キラリナテラス」。芝生やベンチがあるため休憩スポットとしても。北側は武蔵野台地を一望できる景色の良さも売り。",
  fee: "0",
  start_time: "10:00",
  end_time: "21:00",
  access: "京王井の頭線、JR吉祥寺駅直結",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12959.808616409602!2d139.580038!3d35.702795!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xcd6a3353cfa84940!2z44Kt44Op44Oq44OKIOS6rOeOi-WQieelpeWvug!5e0!3m2!1sja!2sjp!4v1667489213358!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.5798234232918, 35.70370108501663),
  address: "東京都武蔵野市吉祥寺南町2丁目1-25"
)

place30.tags << tag1
place30.tags << tag3


place31 = Place.create!(
  name: "イオンモール多摩平の森　四季の森ガーデン",
  description: "イオンモール多摩平の森3階4階にある「四季の森ガーデン」。キッズパークもあるため大人こども両方楽しむことができるスポット!",
  fee: "0",
  start_time: "10:00",
  end_time: "21:00",
  access: "JR中央本線豊田駅北口から徒歩約3分",
  map_link: "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3241.5229860365257!2d139.3781424!3d35.6641225!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6018e2147f98b923%3A0x37ba06ae4fd490f5!2z44Kk44Kq44Oz44Oi44O844Or5aSa5pGp5bmz44Gu5qOu!5e0!3m2!1sja!2sjp!4v1667488250755!5m2!1sja!2sjp",
  lonlat: RGeo::Geographic.spherical_factory(srid: 4326).point(139.38088894754867, 35.662161214474764),
  address: '東京都日野市多摩平2丁目4-1'
)
place31.tags << tag1
place31.tags << tag3

Store.create!(
  place_id: place31.id,
  store_type: 1,
  title: "スターバックスコーヒー",
  description: "イオンモール多摩平の森1階に位置。",
  start_time: "9:30",
  end_time: "22:00",
)

Store.create!(
  place_id: place31.id,
  store_type: 1,
  title: "サンマルクカフェ",
  description: "イオンモール多摩平の森3階に位置。",
  start_time: "10:00",
  end_time: "21:00",
)
