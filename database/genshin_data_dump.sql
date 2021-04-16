CREATE DATABASE  IF NOT EXISTS `genshin` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `genshin`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: genshin
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gs_character`
--

DROP TABLE IF EXISTS `gs_character`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gs_character` (
  `character_name` varchar(20) NOT NULL,
  `element` varchar(10) NOT NULL,
  `base_atk` int NOT NULL,
  `base_hp` int NOT NULL,
  `rarity` int NOT NULL,
  `weapon_type` varchar(10) NOT NULL,
  `birthday` varchar(10) NOT NULL,
  `constellation` varchar(30) NOT NULL,
  `vision` text NOT NULL,
  `story_profile` text NOT NULL,
  PRIMARY KEY (`character_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gs_character`
--

LOCK TABLES `gs_character` WRITE;
/*!40000 ALTER TABLE `gs_character` DISABLE KEYS */;
INSERT INTO `gs_character` VALUES ('Albedo','Geo',251,13226,5,'Sword','9/13','Princeps Cretaceus','Gaining a Vision came as little surprise to Albedo.\r\n\r\nIndeed, when he received it, he gave it a single glance before carrying on with what he was doing before.\r\n\r\nHe barely felt any wave of emotion at all, as if this was something to be taken for granted.\r\n\r\nAs far as he is concerned, his Vision is merely a tool with which he can more conveniently conduct his research.\r\n\r\nThat which truly sparks joy within him is turning the unknown into the known.\r\n\r\nOne day, he will understand all there is to know about this world — and Visions themselves are no exception.','Alchemy is an ancient art, and many of its secrets have been lost to history.\r\n\r\nThe few commonly known alchemy techniques of today are but enough to put some broken odds and ends together, saving you the money you would have otherwise spent on glue.\r\n\r\nNay, alchemy is not so ignoble an art! Or so most alchemists would protest.\r\n\r\nBut as far as the average citizen of Mondstadt was concerned, that was alchemy.\r\n\r\nAt least until the day Albedo suddenly appeared and decided to stay in Mondstadt.\r\n\r\nThis young man displayed the true prowess of alchemy to all, bringing with him a massive corpus of wisdom that even the Sumeru Academia did not possess.\r\n\r\nThe universe is heaven reversed, and the earth is a dream lost to time. This is dust, the most basic form of complex life.\r\n\r\nAs if to provide evidence for this claim, Albedo lifted the burnt ash of a flower that once grew atop a Dendro Slime\'s head.\r\n\r\nSeconds later, a Cecilia sprouted forth from the ash in this hand.\r\n\r\nAnd this... is new birth.'),('Amber','Pyro',223,9461,4,'Bow','8/10','Lepus','Amber once believed that if she took on her grandpa\'s post, she would understand why he left Mondstadt.\r\n\r\nHowever, even when she officially became an Outrider, she was no closer to unraveling the mystery behind his wordless departure.\r\n\r\nHer grandpa had left nothing for her to find either, indicating that she would have to forge her own path.\r\n\r\nAmber floundered for a while, until she flipped through an old book of fables that she would eventually come to treasure.\r\n\r\nWhat you lacked was not wind, but courage. It is courage that has allowed you to become the first flying birds of this world.\r\n\r\nAmber realized that she shouldn\'t wait for directions from someone else, but that she should be like those courageous birds that spread their wings and flew into the blue skies.\r\n\r\nThere must be something that only I can do. There must be.\r\n\r\nThe moment she realized this, a Vision began to shine brightly at her hip.','Amber is an Outrider of the Knights of Favonius. In an age where Outriders are becoming obsolete, she continues on with her responsibilities.\r\n\r\nIt takes a newcomer only a few days to feel right at home with this passionate girl.\r\n\r\nWhether it\'s before the Good Hunter\'s signboard, the banks of Cider Lake, or the tree tops at Windrise, one can find traces of this vigilant Outrider in red anywhere.\r\n\r\nOnce spotted by her, no suspicious individual can ever escape her interrogation.'),('Barbara','Hydro',159,9787,4,'Catalyst','7/5','Crater','The story of how Barbara obtained her Vision is hardly the typical tale of high-stakes heroism.\r\n\r\nShe had just joined the church and was looking after a little boy with a high and persisting fever. Nothing Barbara could think of would console the boy and bring an end to his relentless tears.\r\n\r\nSomeone remarked that while the boy had already taken his medicine, there was no way to cure the pain of missing one\'s family. Another suggested that Barbara sing a song for the boy to raise his spirits.\r\n\r\nBarbara had never sung a song in her life up until this point, but how could she shy away from it in a moment like this?\r\n\r\nNever having sung before is no reason to abandon a child in their time of need, Barbara thought to herself.\r\n\r\nAnd so, Barbara took the boy in her arms and sang him a song: a lullaby, the only song she knew. It was unceremonious beginning to her singing career.\r\n\r\nAfter quickly realizing that she barely knew any of the words, she had to resort to humming the tune instead. Nevertheless, her voice began to soothe the child, and so she kept singing. She sang the same song, over and over again, until her throat was dry and her voice was hoarse.\r\n\r\nFinally, the boy fell asleep. Exhausted, Barbara lay down by the wall and fell straight asleep herself.\r\n\r\nEarly the next morning, Barbara awoke to discover the boy\'s fever had come down.\r\n\r\nPerhaps it was because she had sung for him, or perhaps it had something to do with the Vision which had mysteriously appeared next to her hand at some point during the night. Barbara was not preoccupied with the Vision, however. It was the sight of the boy smiling once again that filled her heart with joy.\r\n\r\nBarbara received her Vision for the simple but beautiful wish that took hold in her heart that night: A dream of healing the sick through the power of song.','Barbara is the Deaconess of the Church of Favonius, as well as the shining idol of Mondstadt.\r\n\r\nThe sight of Barbara makes all my problems disappear. This is quite a common saying among the citizens of Mondstadt.\r\n\r\nIn fact, Barbara can do much more than just put people in a better mood: Her healing powers extend to flesh wounds and other physical ailments.\r\n\r\nBarbara is known to have access to miraculous healing powers through her Hydro Vision.\r\n\r\nHowever, Barbara herself knows that hard work is the most miraculous magic of all.'),('Beidou','Electro',225,13050,4,'Claymore','2/14','Victor Mare','Liyue and Inazuma share a common saying: Its fins formed the ocean deep, its tail the mountains high. The fishermen learned this phrase while ashore long ago, and sang it over and over, spreading the tune far and wide till it became the oft-praised song people know today. Whenever the mists gather over the sea\'s surface, one can hear the distant song of the fishermen hidden in the white shroud: its fins formed the oceans deep, its tail the mountains high...\r\n\r\nThis was Beidou\'s childhood lullaby. The tale of Rex Lapis smiting the sea monsters had become legendary among the people of Liyue. As a child, Beidou loved such tales, and in her dreams, she thought: I too should like to see this giant fish.\r\n\r\nThis day, however, she sang this song with a different emotion in her heart. Her entire crew sang along as they sailed.\r\n\r\nHaishan was in the waters with them — at once like a dragon and a fish, it was larger than any could have imagined in their worst nightmares, and mighty as a deity, raising waves dozens of meters high with ease.\r\n\r\nThose who ply their trade on the high seas are destined to meet Haishan eventually. Beidou had longed to do so since she was nine, dreaming of slicing its head off in a single blow.\r\n\r\nMany times she had challenged the creature, and many times she had failed. But this day was different. This day she charged at Haishan with her best greatsword in hand, and crack sailors at her back.\r\n\r\nThe battle would rage fiercely for four days. With cannons and harpoons, arrows and ropes the fleet would assail Haishan, while Beidou battled the thusty tied-down creature for ten hours, well into the night.\r\n\r\nNow, nighttime was when Haishan was in its element, and in their vigilance not a single member of the fleet even dared sleep a wink. Beidou stood upon the prow, listening to the wind.\r\n\r\nOne strike. Just one strike. That was all she needed. And so she waited, unmoving, in the freezing wind.\r\n\r\nThen, at the crack of dawn, having neither eaten nor drank throughout the night, Beidou heard a change in the sound of the waves.\r\n\r\nWith one almighty strike that sounded as if it could have sliced the moon in two or ripped a mountain from the face of the world, she chopped the leviathan\'s head clean off!\r\n\r\nThe sound of thunder filled the heavens, and a single bolt of purple lightning struck the ocean right in front of Beidou, even as she bathed in the blood of her nemesis.\r\n\r\nThus descended a Vision to the slayer of the sea monster, its violet glow as stunning as lightning, and its immaculate, jeweled form a treasure more precious than dragon blood. A suitably divine gift for the hero who subdued Haishan.','Beidou is the leader of The Crux — an armed crew based in Liyue Harbor.\r\n\r\nAn armed crew means exactly what it sounds like: a crew of sailors armed to the teeth.\r\n\r\nWithout getting into too many details, everything the Crux does is approved by the Qixing... more or less.\r\n\r\nBeidou is a trusted leader; so much so that her crew believes her capable of taming the storms and billows on the sea.\r\n\r\nIt\'s Beidou! Even the mightiest of storms must bow its head to her might!'),('Bennett','Pyro',191,12397,4,'Sword','2/29','Rota Calamitas','Bennett\'s passion for adventure is unstoppable.\r\n\r\nHe wants to constantly explore, challenge, sweat it out, and eventually grow old on the adventurer\'s path.\r\n\r\nBut there was once when he met with a true crisis.\r\n\r\nJust as that old adventurer had so long ago, Bennett was in a predicament that would cause any other person to despair.\r\n\r\nLosing this much blood... Not good.\r\n\r\nBut Bennett did not stop. There\'s no reason to turn back, he thought.\r\n\r\nSomehow, he just knew that all the agonizing misfortune he had suffered up till this point was for the sake of overcoming this precarious position.\r\n\r\nBut at the end of his hellish journey, what he found at the end was — nothing at all.\r\n\r\nHa, returning empty-handed is... part of an adventure. I... don\'t mind...\r\n\r\nAt last, his tightly-wound emotions came loose, allowing his many injuries to rob him of his consciousness, and he collapsed.\r\n\r\nWhen he reawakened, he found that his wounds had been cauterized by a mysterious flame, stopping both the bleeding and the pain.\r\n\r\nA jewel pulsed warmly in the palm of his hand, its rhythm in time with the heartbeat in his chest the beating heart of an adventurer.\r\n\r\nThis was not the mercy of the world, or that fate took pity on him. Rather, this was his final reward, one befitting a person with Bennett\'s burning passion.','Benny\'s Adventure Team is an exception to the norm in the Adventurers\' Guild, Mondstadt Branch.\r\n\r\nInitially, the team mechanism requiring at least 3 or 4 regulars in each team was set up to promote mutual support and prevent accidents.\r\n\r\nAs for Benny\'s Adventure Team, however, its only regular member has been Bennett himself.\r\n\r\nThe lack of team members essentially has everything to do with Bennett\'s infamous bad luck.\r\n\r\nHowever, being the passionate adventurer he is, Bennett never feels lonely.\r\n\r\nWell, maybe once or twice, sometimes...'),('Chongyun','Cryo',223,10984,4,'Claymore','9/7','Nubis Caesor','Those other exorcists at least have the courtesy to wave their swords or tack on some talismans. You just sat here for a while, and now you say you’re done, and that I should pay you? Who are you trying to fool?\r\n\r\nChongyun faced a great deal of suspicion when he first took up the role of an exorcist.\r\n\r\nHe immediately faced one big hurdle: it was a lot easier to prove that evil spirits are present than not.\r\n\r\nOf course he would seem a charlatan even compared to exorcists who just went through the motions.\r\n\r\nWith all the ability in the world but no place to use it, looked on with suspicion, and needing to suppress any passionate impulses...\r\n\r\nThose who eventually apologized to him were also few.\r\n\r\nBut even so, Chongyun would not go with the flow, and use some fancy act to cover for his real method of conducting exorcism. Even with this body getting in the way, Chongyun has never once considered giving up.\r\n\r\nOne day, he will become the greatest exorcist in Liyue, control his yang energy, and rid the world of evil spirits.\r\n\r\nPerhaps it was this resolve that earned him the gods\' favor — that said, the Vision granted to Chongyun was one of Cryo rather than Pyro.\r\n\r\nAs to which of his goals it was the Vision responded to, that is also a mystery.','Throughout its long history, Liyue has never had a lack of rumors and myths regarding all manner of evil spirits and demons. And regardless of the truth of such rumors, someone has to do something about them.\r\n\r\nChongyun was born into a renowned family of exorcists, and has possessed a natural ability to drive away evil spirits from a young age due to his innate constitution of pure-yang spirit. His powers of exorcism are far beyond the norm: his mere presence is sufficient to scatter evil spirits.\r\n\r\nHowever, this has proven to be an inconvenience for Chongyun himself, for though he has undertaken hundreds of successful exorcisms, he has never seen a single ghost or demon.\r\n\r\nChongyun believes that a true exorcist should exorcize evil with charms and swordsmanship. This natural ability that he has...is just not orthodox.\r\n\r\nTherefore, he has dedicated himself to the study of exorcism techniques and martial arts, as well as seeking the haunts of evil spirits to prove himself an able and professional exorcist even without his unique physical condition.\r\n\r\nYet, when will that condition stop being a stumbling block on his path to self-realization?'),('Diluc','Pyro',335,12981,5,'Claymore','4/30','Noctua','Crepus had two regrets in his life: One was never becoming a knight, and the other was never obtaining a Vision.\r\n\r\nFor this reason, in the moment Diluc received his Vision, he took it as recognition by the gods of his and his father\'s shared ambition — finally, he could make his father proud.\r\n\r\nJust a few years later, his father died on a dark gloomy day. The hopes and dreams that burned bright in Diluc\'s Vision were extinguished in the torrential rain that fell on that night. No matter how upright and good-hearted a person may be, death will still come to them without warning. Is this where the tale of justice ends? Just like that?\r\n\r\nIt seems to him that his Vision and his status as a knight were both equally ineffectual at enabling him to protect the things that he treasured most. It was time to discard them both, he decided.\r\n\r\nWhen he recognized his own powerlessness, his Vision became but a burden, of no greater service than a Delusion. Empty titles were of no interest to him. He sought after ardent flames that would burn brighter than any other, and an unshakable resolve. Only a firm resolve can drive the truth-seeker forward, and only ardent flames can vanquish the ice that freezes the hand of justice.\r\n\r\nOn the day Diluc returned to Mondstadt, he took up his Vision once more. The events of his years away had purged him of his childish immaturity, and turned him into a hero ready to shoulder his father\'s will once more. Each night, he fought for Mondstadt.\r\n\r\nHe did not discuss the past. But he did not deny his past, either. To the lost, perhaps a Vision is a beacon of light given by the gods to help them find a way forward. But for those with conviction, a Vision is simply an extension of their strength, a medium for channeling their willpower, a tribute to the experiences that have shaped them, and a testament to the story of their life so far.','As the city of ballads and wines, Mondstadt\'s alcohol industry is renowned all over Teyvat.\r\n\r\nAs the owner of the Dawn Winery, Diluc is essentially in charge of the industry. This means he has a huge stream of revenue and an entire network of information in the form of tavern patrons\' gossip right at his fingertips.\r\n\r\nIn a way, he is the uncrowned king of Mondstadt.'),('Diona','Cryo',212,9570,4,'Bow','1/18','Feles','Diona\'s antipathy towards alcohol is not hate per se. Instead, it can be considered a form of avarice.\r\n\r\nShe wishes for her father to always be the man that she admires, and she treasures every moment that she spends with her family, unwilling to share her happiness with the wine.\r\n\r\nThere was once a storm that lasted for three days, and for those three days, her father, who had been out hunting, did not return.\r\n\r\nThe awful weather prevented the search parties sent by the Knights of Favonius from making much headway, and soon the dread of loss began to hang over Diona like a shroud.\r\n\r\nIf she could not even stand to share, how could she bear having something utterly stolen from her?\r\n\r\nShe burst out the door and into the tempest, and the waters that stood in her path were frozen by some power she did not recognize.\r\n\r\nUsing her superlative tracking skills, she found her father under a broken gorge.\r\n\r\nWith the help of other hunters, she returned home with her father, and only once she realized that he would be fine did she finally smile again.\r\n\r\nDo you... want me to mix you a drink? It\'ll numb the pain a little...\r\n\r\nThat was probably the first time she ever mixed a drink in a normal fashion.\r\n\r\nOoh, it\'s so refreshing. It\'s wonderful! Hahaha—Ouch...\r\n\r\nGetting to drink a cocktail that his daughter had made was probably a better anesthetic by far than the alcohol itself.\r\n\r\nStill, Diona gaining power over Cryo did not help reconcile her to wine at all.','Whenever a guest walks into the Cat\'s Tail, they will immediately glance in the direction of the bar. Behind it often stands a girl with mildly-twitching cat ears, cocktail shaker in hand, and an unhappy look on her face.\r\n\r\nThis is the mixologist Diona, ascendant star of Mondstadt\'s wine industry, and the greatest challenger to its traditional powerhouses.\r\n\r\nHowever, she does not make these wonderful cocktails on purpose — indeed, quite the opposite.\r\n\r\nHer mixing methods can seem a little inscrutable to an outsider. To herself, Diona tries nothing less than her hardest to ruin that hateful grog.\r\n\r\nBut no matter the drink, it will turn out to be an unimaginably sumptuous brew so long as it passes through her hands.\r\n\r\nThis is a blessing she has received, though that blessing is a huge headache for her.\r\n\r\nFor this mixologist proclaims herself to be the Wine Industry Slayer, and her final objective is the utter destruction of Mondstadt\'s entire wine industry.'),('Fischl','Electro',244,9189,4,'Bow','5/27','Corvus','So, is Oz just an imaginary friend who only exists as a figment of Fischl\'s subconscious?\r\n\r\nOur story begins with the royal heirloom, Edelstein der Dunkelheit — that is to say, Fischl\'s Vision.\r\n\r\nWhen her wish was acknowledged, the raven Oz and her Vision both appeared before her eyes.\r\n\r\nThat night, at dinner, Oz got on most well with Fischl\'s parents: Ah, mein Kaiser und Kaiserin der Verurteilung, forgive mine overstep, but the beans in your house are too delicious.\r\n\r\nOh, then please, help yourself. This is the first time little Fischl has met a friend she can bring over for dinner since she turned fourteen. This is a special occasion.\r\n\r\nW-What are you saying! I... One does not simply cavort with the plebeians!\r\n\r\n—And that\'s what happened. For all intents and purposes, it seems that the Kaiser und Kaiserin der Verurteilung could both see Oz, and both believed Oz to be the Prinzessin\'s first friend.\r\n\r\nAs for the Adventurer Who Bears the World\'s Curses, the Visitor From Outer Worlds and the Strange Fae-shaped Emergency Sustenance... They would become the Prinzessin\'s new friends, though that would happen even further in the future.','Fischl is the Prinzessin der Verurteilung who arrived here after being exiled from the otherworld, Immernachtreich.\r\n\r\nShe observes and weaves the threads of fate together with her talking night raven familiar, Oz.\r\n\r\nOwing to reasons she cannot and Oz will not explain, Fischl now serves the Adventurers\' Guild as an investigator.'),('Ganyu','Cryo',335,9797,5,'Bow','12/2','Sinae Unicornis','Qilin are paragons of benevolence among the adepti, drinking only freshwater and eating only plants. Flies they will not hurt, and a bruised reed they will not break. They do not travel in groups, and no trap will hold them. They are leisurely yet composed, active but reserved — a gentle and elegant race. Yet when a wicked beast from the sea arose and threatened the land beneath their feet, they did not stand idle or choose peace when there was none. Three thousand years ago, Ganyu answered the call of Morax the God of Geo, aiding him in the Archon Wars. And when the war was over, she chose to stay in Liyue and help the humans build a new polity there. The first Liyue Qixing would need support, and she took this task up as a matter of course, becoming their secretary. The moment she made that decision, a Vision appeared at her hip, granting her power to resonate with the world to a degree beyond her natural abilities. Whether she would grow strong enough to no longer need it, or whether she would use it as a last resort in Liyue\'s defense... Regardless, she chose to serve as the bridge between adepti and humans. Her Vision, then, was proof and witness of her new duty.','Though many in Liyue are fascinated by life in Yujing Terrace, its day-to-day operations and rules are a mystery to them.\r\n\r\nThey are aware that the Liyue Qixing are the cream of the crop who hold the fate of the city in their hands, but the calculations and data behind the Qixing\'s every decision are far harder to grasp.\r\n\r\nThe people understand that the new policies announced each year will change the dynamics of the market, yet none can comprehend how policy is plucked from complex meeting minutes and compiled into something easier on the human eye.\r\n\r\nAs the secretary of Yuehai Pavilion, Ganyu undertakes many tasks that ordinary folk do not see. The calculations and data behind the Qixing\'s every decision in Liyue, as well as every ordinance and regulation that is announced, are all the meticulous work of Ganyu.\r\n\r\nEach daybreak she stands by the dock, enjoying her breakfast in silence. Even still, by the time the sun has fully risen, she will have returned to Yuehai Pavilion overlooking Yujing Terrace, to continue to fulfill her contract — one that she signed three thousand years ago with Rex Lapis.'),('Hu Tao','Pyro',244,9189,5,'Polearm','7/15','Papilio Charontis','This tale should begin with the funeral of Hu Tao\'s grandfather.\r\n\r\nTen days before the funeral itself, Old Hu had passed away following a bout of illness. For its 75th Director, Wangsheng Funeral Parlor held a grand funeral, in accordance with the last wishes of the old man himself, to be conducted by Hu Tao.\r\n\r\nOnly thirteen at the time, Hu Tao, who would later go on to become the Director in turn, made all the arrangements herself to the highest standard, greatly impressing the undertakers.\r\n\r\nAfter the funeral, the thirteen-year-old Hu Tao grabbed her traveler\'s bag and crept out alone in the dead of night. In her bag were only a few rations, some water, and a means to create some light. She was headed to a mysterious and seldom-seen frontier.\r\n\r\nHeading straight from Wuwang Hill, one may arrive at the border. It is the line that separates life and death, the secrets of which have been managed by Wangsheng Funeral Parlor for generations. According to legend, it is a place where the souls of past relatives and the spirits of those with unfulfilled aspirations linger. For Hu Tao, this journey was a chance to see her grandfather once more before he departed forever.\r\n\r\nFor two days she journeyed unceasingly before finally arriving at her destination, yet was unable to locate her grandfather upon arrival. Between the innumerable spirits she walked, but not one of them resembled the old man.\r\n\r\nShe stayed there the whole day before falling asleep in exhaustion, awakening to a night sky and heavy dew. Around her were gathered a few lone spirits, clapping and laughing:\r\n\r\nSilly girl, why would Old Hu be here of all places? What were you thinking, looking for your relatives here?\r\n\r\nNot one to be swayed so easily, Hu Tao continued to wait, day after day. Her rations gradually disappeared and her water supplies drained away, but her grandfather did not appear. In the end, it was a little old woman who came to her.\r\n\r\nShe laid eyes on the exhausted Hu Tao and smiled as she spoke: Look at your stubbornness, you\'re exactly like Old Hu. It\'s a shame, but none of the Wangsheng Funeral Parlor Directors would ever linger here. You come from a family of plain speakers, so let me return the favor... Go back. Go back to where you came from.\r\n\r\nThe old woman bid farewell to Hu Tao, before passing over the border and into the distance. Hu Tao watched as the figure of the mysterious woman grew smaller and disappeared, as a sense of doubt tinged with relief manifested itself.\r\n\r\nAt last she came to the conclusion: her grandfather\'s absence was due to him having passed over the border as soon as he\'d arrived, to the place where he was bound. He had been open and honest in life, leaving behind no regrets, so was it right for his departure to be framed in regretful terms?\r\n\r\nWith a smile, she set forth on the return journey.\r\n\r\nThe faraway moon had been casting a thin light on the way over but had now been replaced by the bright light of dawn. As she walked, Hu Tao thought of a saying that her grandfather had often quoted: Live in life, die in death. Follow your heart, do what you can.\r\n\r\nIt was noon when Hu Tao arrived home. She climbed over the wall into the rear courtyard, went straight to her room, and unpacked her travel bag.\r\n\r\nWith her food and water long gone, and the rest of her belongings unpacked, the bag she had taken for empty instead contained a colorful Vision. Just when had it arrived?\r\n\r\nAs one of the few living that had dared to visit the border, perhaps Hu Tao\'s actions had moved some unknown god.\r\n\r\nPerhaps this then constituted a heavenly gift... the ultimate recognition of her strength.','The 77th Director of the Wangsheng Funeral Parlor, a young lady managing the parlor\'s operations. Despite her position, she\'s an amiable person who puts on no airs.\r\n\r\nHer antics are as plentiful as the sand on Yaoguang Shoal. She never ceases to shock people with her countless bizarre ideas.\r\n\r\nHu Tao may seem like all play and no work, spending every free moment on leisure and being widely considered a laissez-faire business owner.\r\n\r\nIt is only during funeral ceremonies, when she personally leads her undertakers through lamp-lit alleys, that she shows her dignified and solemn side.'),('Jean','Anemo',239,114695,5,'Sword','3/14','Leo Minor','If one were to go by skill alone, Jean has long become one of the best swordsmen in Mondstadt. But in Jean\'s heart, she would rather be a shield that defends freedom and song than a sword that cuts through corruption and darkness.\r\n\r\nProtecting has always been tougher than destroying. Around the time when she was promoted from Captain of her squad to Master of Knights, a huge challenge stood before her.\r\n\r\nFrom without, the Fatui exerted diplomatic pressure, and from within, there were traitors — comrades of the former Inspector. Regrouping and finding a way to break through was no easy task.\r\n\r\nBut Jean was able to fend off the external pressure with one hand, and lead the Knights to smash the many plots off the Abyss Order with the other, re-establishing the authority of the Knights of Favonius.\r\n\r\nJean will never forget the moment she received her Vision. At that moment, all seemed to grow quiet as she felt the breeze flow through her hand. The world seemed to fade away, save for the time-honored motto of the house of Gunnhildr:\r\n\r\nFor Mondstadt, as always.','The Knights of Favonius are the protectors of Mondstadt, the swords and shields of the city.\r\n\r\nIn addition to keeping the city and the surrounding travel routes safe from the threat of wild monsters, the Knights\' most important responsibility is maintaining order among Mondstadt\'s inhabitants.\r\n\r\nMondstadt is the City of Freedom, but unchecked freedom without any kind of rules only invites chaos and anxiety. Jean\'s understanding of this is the reason she remains diligent at all times, holding herself to impeccable standards.\r\n\r\nHowever, she often finds that she exhausts her monthly quota of coffee within the first few days of the month as a result.'),('Kaeya','Cryo',223,11636,4,'Sword','11/30','Pavo Ocellus','It was raining heavily in Mondstadt on the night that Kaeya Alberich received his Vision.\r\n\r\nEarlier that day, Crepus Ragnvindr had wielded the power of a Delusion — only to become its victim when it backfired. To set his father free from the unbearable agony, Diluc Ragnvindr took his life.\r\n\r\nKaeya was Diluc\'s brother by adoption and was always by his side, but on this occasion, Kaeya did not partake in the final moments shared between father and son.\r\n\r\nThe torrential rain that set in on Mondstadt that night seemed to be a sign of the heavens\' grief at the passing of Master Crepus.\r\n\r\nThere was a side to Kaeya that he kept hidden from the world: In truth, he was an agent of Khaenri\'ah, placed in Mondstadt to serve their interests. His father had abandoned him in this strange and unknown land to fulfill his mission, and it was Master Crepus and the city of Mondstadt that had welcomed him with open arms when they found him.\r\n\r\nIf Khaenri\'ah and Mondstadt went to war, which side should he support? To whom should he offer his assistance: his birth father, who had ruthlessly abandoned him? Or his adoptive father, who loved him and raised him?\r\n\r\nFor the longest time, Kaeya had agonized over these impossible questions, caught between the opposing demands of loyalty and duty, faced with an impossible choice between truth and happiness.\r\n\r\nBut now, Crepus\' death upset this delicate balance. He felt liberated, but also ashamed of how selfishly he was responding.\r\n\r\nAs an adopted son, he should have saved Crepus, but he had arrived moments too late. As a brother, he should have shared in Diluc\'s grief, and yet as their father lay dying on the ground he had hung back behind his brother, that ancient plot running through his mind.\r\n\r\nConsumed by guilt, Kaeya knocked on Diluc\'s door. As the rain poured down, the shroud of secrecy was washed away, all lies were revealed. Kaeya had finally come clean.\r\n\r\nHe had anticipated Diluc\'s anger.\r\n\r\nThe brothers drew their blades, this time pointing them at each other. Kaeya felt that this was his punishment for a lifetime of lies. But as the two crossed blades, Kaeya was overcome by the sensation of great elemental power surging through him. For years, he had stayed out of the way in his brother\'s shadow. But now, for the first time ever, he was facing his brother as his true self.\r\n\r\nBitterly cold and brittle elemental energy burst forth from the tip of his sword to meet Diluc\'s searing flames head-on. The clash of crimson fire and azure ice created a sudden swirl of wind that stunned them both. This was the grim moment at which Kaeya\'s Vision appeared.\r\n\r\nSince that day, Kaeya and Diluc have gone their separate ways. But he never discusses it, just as he never discusses the origin of his Vision.\r\n\r\nThough it is a reminder of the hard-fought battle, and the prize that he earned in exchange for revealing the unadulterated truth, Kaeya sees it as a stern reminder that he must live the rest of his life under the heavy burden of lies.','Kaeya Alberich is an adopted son to the Ragnvindr Family, the renowned wine tycoons.\r\n\r\nIt has been a long time since he last called Diluc Ragnvindr brother.\r\n\r\nKaeya currently serves as the Cavalry Captain of the Knights of Favonius, and is trusted by Jean. Kaeya is often the one wrapping things up in every incident that occurs in Mondstadt\'s vicinity.'),('Keqing','Electro',323,13103,5,'Sword','11/20','Trulla Cementarii','Keqing is likely a skeptic without equal when it comes to the value of Visions.\r\n\r\nShe knows that everything she has is the result of her own hard work, but that in the eyes of others, credit has been given instead to her Vision.\r\n\r\nShe once believed that this purple crystal had stolen the pride due originally to her, and that it was both a challenge and an insult from the gods.\r\n\r\nIn fact, she has tried to destroy her Vision countless times — she\'s left it in a huge fire for three days and three nights, run over it with a minecart full of rocks, and has even hurled it from the heights of the Jade Chamber.\r\n\r\nUnfortunately, she has never been successful.\r\n\r\nWith no options left, and not wanting it to fall into the wrong hands, Keqing was forced to accept the Vision as part of her life.\r\n\r\nWith the passage of time, Keqing came to appreciate the Vision. She realized that this item did not actually have any divine will imbued within it, and indeed had numerous practical uses, and as such chose to use it.\r\n\r\nThe source of power is far less important than the character of its user.\r\n\r\nRegardless of how she may once have regarded it, Keqing\'s Vision and its powers have become a part of her.\r\n\r\nThank the Archons she hadn\'t destroyed it back then, or she\'d have regretted it for sure — oh, the hardships of being a pragmatist.','Rex Lapis has brought prosperity and plenty to Liyue Harbor, and his rule and majesty have long passed into show and song, much to the delight of the people. But for some proximity to a god, Keqing seems to lack the requisite respect the most.\r\n\r\nHmph. Let\'s be real here, but does Morax really know everything?\r\n\r\nThe Liyue Qixing deal with the day-to-day happenings in the Harbor, whether great or small, while Rex Lapis only descends once a year.\r\n\r\nWhile history has shown that following Morax\'s lead has been the right call, Keqing believes that humans should have their own pride, and that their views deserve equal importance.\r\n\r\nAs such, she often advocates different opinions from Rex Lapis, and is the first to put such views into practice.\r\n\r\nHer radical actions have seen stellar results, but they have also attracted murmurings of opprobrium among those devoted to Rex Lapis.\r\n\r\nAs Keqing sees it, such opposition are the excuses of those who have grown complacent under the aegis of their deity, and who cannot consider the future of humanity of their own accord.\r\n\r\nBut someone must walk on the front line of the epoch and create a new path with their own hands — and the Yuheng star is determined to do her part in this endeavor.'),('Klee','Pyro',311,10287,5,'Catalyst','7/27','Trifolium','Asking Klee how she obtained a Vision will probably get you nowhere — she doesn\'t know either.\r\n\r\nA natural-born pyromaniac, Klee had already been acknowledged by a Vision from a very young age.\r\n\r\nAccording to Klee herself, she had been creating a bomb that was even bigger than super big!\r\n\r\nThis was her very first solo project, but the results were far from expected —\r\n\r\nWell, she only blew her small workshop sky high, leaving a mountain of smoking ash.\r\n\r\nBut rather than being disappointed, Klee was pleasantly surprised to see a flaming Vision emerge from those ashes.\r\n\r\nHow did Klee receive this divine acknowledgment?\r\n\r\nWas it her talent and passion for explosives, the individualistic nature she got from her mother, or her shining innocence?\r\n\r\nRegardless, Klee had already obtained such a coveted item at a tender, carefree age.\r\n\r\nRegardless of what she faces as she grows up, she will never give this present up.\r\n','When asked about the strongest knight of the Knights of Favonius, three names are likely to come up from the patrons in the taverns of Mondstadt: the highly-reputable Acting Grand Master Jean, Cavalry Captain Kaeya, and the mysterious tycoon Diluc. However, some claim to have witnessed, through drunken eyes or pale moonlight, a knight in red, leveling the entire Stormbearer Mountains.\r\n\r\nIf one wants to find this mysterious knight, then they need look no further than the solitary confinement cell inside the Knights of Favonius Headquarters. If the cell is found vacant... then something explosively unfortunate is likely about to take place...\r\n\r\nKlee is well known for the danger she presents. As an official member of the Knights of Favonius, her strength in combat cannot be underestimated. But as the hyperactive child that she also is, her destructive capabilities should not be overlooked either.\r\n\r\nWhile other Mondstadt children her age are still playing with regular toys, Klee\'s favorite toys are... live explosives.'),('Lisa','Electro',232,9570,4,'Catalyst','6/9','Tempus Fugit','A Vision is a sign from the gods: a sign that you are one of those whom they have chosen to change the world.\r\n\r\nOr, maybe it\'s just one of the many hoops that one has to jump through on the path to unearthing the secrets of magecraft.\r\n\r\nAfter all, understanding the elements is essential to the study of magic, and practical experience is a far more useful means of acquiring this understanding than trying to assimilate the knowledge contained in dusty old books.\r\n\r\nHmm... I suppose I shall need a Vision, then.\r\n\r\nAnd just like that, as that thought popped into her mind, her Vision popped into her hand.\r\n\r\nWith the aid of her Vision, Lisa acquired the knowledge that she sought. But she also sensed the deep secret hidden in the shadows of that knowledge.\r\n\r\nFor whatever reasons, the gods gave humans the key to changing everything, but they did not explain the cost involved. Lisa grew fearful of the truth.\r\n\r\nThe Vision that hung from her neck became to her a bottomless pit filled with sweet delights, lingering at the back of her mind.\r\n\r\nSo, from time to time, when somebody whom she finds interesting comes along, Lisa will pass onto them her understanding on all kinds of matters.\r\n\r\nPerhaps she is secretly hoping that by doing so, one day someone will come along who has the ability to understand the ultimate truth behind Visions.','The librarian of the Knights of Favonius. In addition to her elegance and charm, Lisa is also highly educated.\r\n\r\nShe is said to have been the most talented sorceress to study at the Sumeru Academia in the last two centuries.\r\n\r\nIt is known that Lisa chose to return to Mondstadt after two years of advanced study in Sumeru, but the reason for her decision is not.'),('Mona','Hydro',287,10409,5,'Catalyst','8/31','Astrolabos','To Mona, that her Vision was sent to her from the gods doesn\'t mean a great deal.\r\n\r\nThis is not to say that possessing an external focus for elemental power is not useful.\r\n\r\nHaving power is always a good thing, but when compared to lofty truth, martial prowess is such a pathetically small concept.\r\n\r\nThe gods, too, are bound by the rules of this world. Mona seeks the final truth of the world, hidden amidst the sea of stars.\r\n\r\nAs such, she does not have any reverence for her Vision, which the people of this world consider to be a sign of divine favor and the source of all power.\r\n\r\nNonetheless, this item that serves no practical use in her hands is something that she treasures greatly.\r\n\r\nIt was gifted to her by her teacher as a teaching aid, and it is the only evidence of their time together as master and pupil.\r\n\r\nShe preserves these distant memories with great care. This exquisitely-made teaching aid thus accompanied her everywhere, like an accessory worn by any other maiden.\r\n\r\nUntil one day, when a Vision of her very own would quietly indwell this old teaching aid...','Teyvat is a place where people of all sorts go about their business. Merchants move product, knights patrol, and farmers till the land.\r\n\r\nBut if one were to ask Mona — the enigmatic and prideful astrologist — what she busies herself with, she will reply by saying that she is servicing a debt known as life.\r\n\r\nShe will, however, vigorously deny being poor, giving the following explanation:\r\n\r\nBeautiful veneers may obscure simple truths.\r\nExquisite food may mask its nutritional value.\r\nOne lives simply, all the better to expose this world\'s truths.\r\n\r\nA frugal lifestyle, therefore, is a form of training to access the truth... Or so Mona will insist.\r\n\r\nTeyvat is a place where people of all sorts go about their business, and even an enigmatic astrologist must look to hers.\r\n\r\n—That said, it seems like bards might be the exception to this rule.'),('Ningguang','Geo',212,9787,4,'Catalyst','8/26','Opus Aequilibrium','No one knows how Visions are created — they have always seemed to just appear out of thin air, leaving the countless unacknowledged in the lurch without a clue as to how to get one.\r\n\r\nAs for Visions left behind after their users die, they are masterless husks without any elemental power, nor is any method of reawakening them known, save for a tiny chance that it may resonate with another — and only one such other at a time...\r\n\r\nNingguang\'s first subconscious thought upon seeing such an object oh, look, a new business opportunity. Putting this up for sale would surely have the rich shelling out for it. And if they can\'t resonate with it, why, they\'ll just use it to keep up appearances. A sound call either way...\r\n\r\nAnd if there should be a way to collect such empty shells, could this not become a long term business?\r\n\r\nPlaying with the jewel in one hand, Ningguang began writing plans for an auction in the other, her smile widening as she thought about the riches to be had — and at that moment, the Vision shone forth its light. Ningguang\'s smile froze as the Vision activated.\r\n\r\nHer attendants, coming upon the sight of their mistress, awakened Vision in hand, began to congratulate her on having obtained a priceless treasure. Ningguang, for her part, seemed annoyed instead.\r\n\r\nWhat\'s there to be happy about? Once broken, considered sold!','The Liyue Qixing controls all of the commerce that takes place in Liyue Harbor. Its highly-revered position is also coveted by many. Their primary ruling is to play things safe and keep a low profile.\r\n\r\nThe Tianquan of the Qixing, Ningguang, is the only exception. She is seen as an excellent merchant in the eyes of her rivals, a friendly big-sister to kids, a socialite at the banquets of Yujing Terrace, and a connoisseur of desserts...\r\n\r\nNingguang is the talk of the town, and all seem to know everything about her. However, they all seem to tell a different story of Ningguang with great discrepancies between the versions.\r\n\r\nStill, if there\'s one thing all rumors about her agree on, it\'s that Ningguang is someone truly extraordinary.'),('Noelle','Geo',191,12071,4,'Claymore','3/21','Parma Cordis','Noelle did once wish to fulfill her dreams before its time.\r\n\r\nSome years ago, after failing her seventh selection test, which was really a foregone conclusion, she felt somewhat discouraged.\r\n\r\nThe etiquette, swordsmanship, the lines she had memorized... had they all gone to waste? She remembered all the strong points of every official knight, but who would remember the hard work of a failure like her?\r\n\r\nShe had never stopped aspiring to become a Knight of Favonius, but her exhausted body wouldn\'t let her get back on her feet like she normally would. She felt like someone who had spent days and nights traveling through an icy tundra.\r\n\r\nAt that moment, the main gate of the Knights Headquarters were flung upon, and out walked Acting Grand Master Jean, who had just been in charge of the selection process.\r\n\r\nWithout a thought, Noelle gave a precise knight\'s salute. Immediately, she knew that this was too abrupt a thing to do, and wondered what Jean might think of her. But just as she was wishing that there was some hole she might crawl into to flee, Jean stopped in her own tracks and returned the salute. After a moment\'s surprise, Noelle gave a strained smile, clumsy but pure.\r\n\r\nThis was a lucky day that she would always remember, for she would receive recognition from two all-important sources this day: once from Jean, and the other from the gods. Her hard work has been remembered after all.\r\n\r\nFrom that day forward, Vision in hand, Noelle reaffirmed her belief that she would one day be able to don that armor. That she would be gentle and reliable — and yes, everywhere at once too.','Noelle has much greater dreams and ambitions than other maids in the Knights of Favonius.\r\n\r\nLike anyone else in this city protected by the Knights of Favonius, she too dreams of donning the honored armor. Even if her skills are not enough to pass the rigorous selection trials, she still wishes to observe and learn from them every chance she gets. \r\n\r\nside from her training, she enjoys her current life, helping everyone in need.\r\n\r\nYou can leave absolutely anything to me!\r\n\r\nThat\'s her signature line. If there\'s anything that you need, Noelle is glad to be of help.'),('Qiqi','Cryo',287,12368,5,'Sword','3/3','Pristina Nola','Qiqi\'s Vision was given to her in the last moment of her life.\r\n\r\nShe wanted to stop the clock from turning. She wanted to live happily again.\r\n\r\nShe feared death. She wanted to live. She missed her family...\r\n\r\nThese feelings coalesced at last into ice.\r\n\r\nIf only I could freeze time... How wonderful would that be?\r\n\r\nAs she thought thus, tears fell from the moribund girl\'s eyes upon the Vision that had appeared before her.\r\n\r\nThe mighty and illuminated adepti all acknowledged that this was a legitimate form of illumination — the yearning of humanity for bygone days is, after all, a desire to protect the past.','Due to being a zombie, Qiqi lacks facial expression. She hopes that\'s okay.\r\n\r\nShe may look like a zombie, but she\'s surprisingly limber due to a strict calisthenics regimen.\r\n\r\nHer memory is poor. She forgets easily, and that is partly why she can seem cold to others.\r\n\r\nHer appearance is forever frozen at the point of her passing, so estimates of her age are unreliable.\r\n\r\nZombies require orders to act, but due to some reason or another, Qiqi is presently giving herself orders.'),('Razor','Electro',234,11962,4,'Clayore','9/9','Lupus Minor','The story of how Razor got his Vision is one of the few memories that he wishes he could forget.\r\n\r\nOne day, during a lightning storm, an Abyss Mage ambushed Razor from behind and dragged him away. The wolf pack ran to his aid and put up a fearless fight, but every last one of them was defeated by the Abyss Mage. As he looked on helplessly at his dear companions being harmed, Razor let out an almighty roar like that of a cornered animal.\r\n\r\nLupical!\r\n\r\nFueled by his almighty fury, a lightning-like power grew inside, and suddenly an overload of elemental energy was flowing within him. He was ready to protect. He was ready to avenge. He threw off his shackles and raised his weapon. The Abyss Mage was overwhelmed and defeated by wild, unfettered frenzy of Electro energy, but this time it was too late to save Razor\'s wolven companions.\r\n\r\n...\r\n\r\nThough he had obtained a Vision, Razor was still unable to manipulate Electro energy with finesse. One day many moons later, when he met the Witch of Purple Rose, Lisa, he began to study human knowledge.\r\n\r\nFriends, hurt... Never again! I will... protect them.\r\n\r\nWith each day, Razor grew more skilled in the use of his Vision. He made a silent promise to himself: I will become stronger. I will become the strongest of them all. Because the day may come when his lupical faces another threat, and this time, he will protect them.','Razor is a boy whose identity is shrouded in mystery. He lives in Wolvendom and is rarely spotted by the citizens of Mondstadt.\r\n\r\nAccording to a handful of eyewitness accounts, Razor has keen senses and is highly agile, traversing the forest at breakneck speed. He is often seen in the company of his wolf pack, while generally avoiding contact with humans.\r\n\r\nSome speculate that he was an orphan raised by the wolves, while others say he is a wolf spirit that has taken on a human form.\r\n\r\nSuch rumors only add to the mystery of the Wolf Boy, as the citizens of Mondstadt call him.\r\n\r\nMeanwhile, Razor the Wolf Boy stands all the while on the hilltops with his head held high, basking in the warm sunlight.'),('Sucrose','Anemo',170,9243,4,'Catalyst','11/26','Ampulla','It was on an afternoon just like any other that Sucrose received her Vision.\r\n\r\nReady to begin her one-hundred-and-fifty-ninth dandelion-seed simmering experiment, she poured her carefully crafted alchemical solution into the cauldron. Instantly, the cauldron hit boiling point, and the entire room was filled with steam. Sucrose rushed to the cauldron, anxious to see what new transmutation had occurred this time; in her excitement she even burned both of her hands on the lip of the cauldron.\r\n\r\nMuch to her disappointment, however, the dandelion seeds had once again burned to a crisp. But there was something new there, too: lying there amidst the black dandelion seeds was a Vision.\r\n\r\nAnd yet, rather than pouring out the liquid and taking her Vision she first thought for a moment and then lit the fire up again to continue simmering the contents of the cauldron.\r\n\r\nShe was curious to know what further reactions might occur between dandelion seeds and Visions. Sadly, the experiment ended in failure after three hours of constant simmering.\r\n\r\nStill, there was no denying that she had reaped a great reward from this experiment, for the elemental energy provided by her Vision would become her single greatest asset in her future bio-alchemical endeavors.','Sucrose may be the assistant of the genius alchemist Albedo, but they could not be more different in research direction.\r\n\r\nAs opposed to studying the essence of alchemy and the ability to create new life, she is far more interested in using alchemy to modify existing life, all the better to add variety and color to this world.\r\n\r\nDespite her youth, she has already achieved some brilliant results. For example, she has been able to increase the nectar output of Sweet Flowers by 70% by irrigating them with a special potion. She has also developed a special spray that allows Sunsettias to maintain their freshness for a whole month after being plucked from the branch.\r\n\r\nEven people who were initially suspicious of her research inclinations have come to acknowledge her exceptional talents in the field of alchemy after seeing such results.\r\n\r\nHowever, she merely considers these to be incidental steps on the path to a successful experiment, rather than the success itself. Her true aim is much more ambitious than this. It\'s a secret, and is also her little dream.'),('Tartaglia','Hydro',301,13103,5,'Bow','7/20','Monoceros Caeli','Rex Lapis has brought prosperity and plenty to Liyue Harbor, and his rule and majesty have long passed into show and song, much to the delight of the people. But for some proximity to a god, Keqing seems to lack the requisite respect the most.\r\n\r\nHmph. Let\'s be real here, but does Morax really know everything?\r\n\r\nThe Liyue Qixing deal with the day-to-day happenings in the Harbor, whether great or small, while Rex Lapis only descends once a year.\r\n\r\nWhile history has shown that following Morax\'s lead has been the right call, Keqing believes that humans should have their own pride, and that their views deserve equal importance.\r\n\r\nAs such, she often advocates different opinions from Rex Lapis, and is the first to put such views into practice.\r\n\r\nHer radical actions have seen stellar results, but they have also attracted murmurings of opprobrium among those devoted to Rex Lapis.\r\n\r\nAs Keqing sees it, such opposition are the excuses of those who have grown complacent under the aegis of their deity, and who cannot consider the future of humanity of their own accord.\r\n\r\nBut someone must walk on the front line of the epoch and create a new path with their own hands — and the Yuheng star is determined to do her part in this endeavor.','Despite holding one of the most senior positions in the Fatui as one of the Eleven Harbingers, Childe very much looks like the young adult that he still is.\r\n\r\nHe is a wolf in sheep\'s clothing, however, for under the cheerful and confident appearance lies a deadly swordsman.\r\n\r\nHe is the youngest among the Harbingers, but one of the most dangerous among their number. That said, Childe doesn\'t seem to fit in well with the others.\r\n\r\nAs a fighter first and foremost, he is quite at odds with this organization of deceit and treachery.'),('Venti','Anemo',263,10531,5,'Bow','6/16','Carmen Dei','The Seven Archons do not need Visions, for they already have great power.\r\n\r\nYet Barbatos was fond of the mortal world, and wanted to roam Mondstadt more freely as Venti. As such, he constructed a glass ornament very much like the Visions worn by those chosen by the gods.\r\n\r\nThe imitation has no special abilities, nor does Venti rely on it to channel elemental power.\r\n\r\nHowever, since Venti does not keep the Holy Lyre der Himmel by his side, and since he is too lazy to bring a normal lyre, he gave his fake Vision the ability to turn into the wooden lyre Der Fruhling.','An unknown bard that came from nowhere.\r\n\r\nHe sometimes sings outdated songs, other times he hums new ones that none have ever heard of. He likes apples and lively atmospheres, but hates cheese and anything that is slimy.\r\n\r\nWhen channeling Anemo, it appears in the form of out-stretched feathers, because he likes things that look light.'),('Xiangling','Pyro',225,10875,4,'Polearm','11/2','Trulla','You can make something super delicious out of any kind of ingredient.\r\n\r\nXiangling earned the approval of a Vision by shouldering this ideal in a wholehearted and unreserved manner. Even when she would make dishes that could be called horrifying, her desire to keep trying to match ingredients would never waver.\r\n\r\nUgh... Qingxin Fried Lizard is actually kinda bad. I think lizards should just be stone-grilled in the future.\r\n\r\nSlime fried rice is also rather ordinary. Maybe we\'ll try putting mushrooms in a slime jus next time.\r\n\r\nThough her friends fell around her during the epic battles with the taste of her dishes and advised her to turn back, Xiangling never stopped thinking about how to turn these special ingredients into delicious food.\r\n\r\nIn Xiangling\'s innocent and persistent heart, as long as they were not poisonous, there were no good or bad ingredients.\r\n\r\nHer Vision, after all, proves that even the gods approve of such thinking.','Coming, coming! Here\'s your Stir-Fried Filet! And your Mora Meat. And Fried Radish Balls, as you ordered.\r\n\r\nIn Liyue, there\'s a place called Chihu Rock, and there stands a restaurant known as Wanmin Restaurant.\r\n\r\nOnce must remain focused if they want to keep moving forward on the bustling streets of Liyue. Unsuspecting newcomers to this place are often lured away by wonderful culinary aromas or lead to peek inside stores by curious sounds.\r\n\r\nXiangling, who is both chef and waitress at the restaurant, delivers steaming delicious dishes to the tables.\r\n\r\nSit anywhere you\'d like. I can make whatever you want, even if it\'s not on the menu!\r\n\r\nThe workers at Wanmin Restaurant can recognize a regular, if not by their face, then by the first sentence out of their mouths.\r\n\r\nA customer that orders without needing a menu have been at least a few times before. However, if they ask Is Xiangling the chef today? then they\'re definitely a regular.'),('Xiao','Anemo',349,12736,5,'Polearm','4/17','Alatus Nemeseos','All adepti are known as the mighty and illuminated adepti, and this illumination refers to the light of a third eye that they possess: a Vision.\r\n\r\nBut do adepti receive their Visions as a form of acknowledgment from Celestia, like humans do?\r\n\r\nXiao no longer remembers the moment he received his Vision. To humans, this would be an unforgettable event. But for him, this was just the beginning of his endless battle.\r\n\r\nThe thing that Xiao truly cannot forget is something different.\r\n\r\nThere are a great many human festivals, and few remember the stories behind them.\r\n\r\nThe greater part of these days coincide with occasions where man-eating monsters were defeated by the adepti host. People imitated their deeds and staged exorcism rituals to remember their ancient heroism, with these practices eventually evolving into celebratory festivals.\r\n\r\nThe hatred and residual might of many of the gods defeated by Morax throughout Liyue will sometimes erupt with abnormal force amid their half-awake, half-dreaming state. Among them, the eruption that takes place during the Lantern Rite is the most extreme in scale.\r\n\r\nXiao has his mission to perform the time-honored Nuo Dance of Evil Conquering, and so he fights night and day during the Lantern Rite. Thus, he has come to hate it.\r\n\r\nNow, Xiao did not consider battle dangerous. It was due to his hard work that Liyue was kept safe. People lit their lanterns, and the blessed lights shone across the night sky and the nearshore.\r\n\r\nAt that moment, another special feeling blossomed in Xiao\'s heart. Loneliness? Peace? Or was it his fears for the future? The young-seeming adeptus searched his heart, only to find no answers.','Xiao may have the appearance of a young man, but his true age is something over two thousand years.\r\n\r\nFortunately, people do not tend to underestimate him on the basis of his appearance — one only needs to spend a short time with Xiao to clarify that he is not someone to be trifled with.\r\n\r\nXiao is a man of few words. He is highly dangerous, and has the most piercing gaze you\'ve ever seen. He enjoys a formidable reputation and high level of seniority among the adepti, but is relatively unknown in the mortal realm.\r\n\r\nThis is inevitable. Xiao is not one of those popular deities to whom people pray for wealth and protection, nor is he a mystical sage of Jueyun Karst to whom pilgrims flock in search of divine wisdom.\r\n\r\nNo... if any mortal witnesses Xiao unleashing his true power, it is certain to be under the direst of circumstances — and they will be extremely lucky if they survive the ordeal.\r\n\r\nThis is not because Xiao seeks to harm people. Rather, since Xiao wages a constant war against dark forces powerful enough to devour Liyue in its entirety, any bystanders who witness him in the heat of battle are likely to end up as collateral damage. Not that this is a secret worth going around silencing witnesses for.'),('Xingqiu','Hydro',202,10223,4,'Sword','10/9','Fabulae Textile','The martial arts school known as the Guhua Clan has been in decline for several hundred years now. In its heyday, the name of the Clan rang like steel throughout the harbor. It is said that the Clan three great secret arts — the ways of the Light Piercer for polearms, Rain Cutter for swords, and Life Ender for those who excelled in both. The three arts would be refined over the generations, and with time would reach their apex. Yet the Clan\'s strength would continue to wane, leading to them losing their influence...\r\n\r\nThe three arts became diamonds in the rough, quietly awaiting a successor.\r\n\r\nAfter many years, the Guhua Clan would finally get one in Xingqiu. It was he who successfully grasped the ancient Martial Principle after merely four years of study.\r\n\r\nThe Guhua weapon arts stress using the weapon as an extension of your body, and indeed this is a common idea amongst the various schools of martial arts in Liyue. But the way Xingqiu saw it, the basis of the polearm and sword was the use of a Vision. Martial arts were meant to see a Vision as an extension of themselves, and see their weapon as an extension of the Vision. Hence, he says that: the arts of both the polearm and the sword are just the art of the eye.\r\n\r\nHaving come to this epiphany, Xingqiu took up a quill and penned a verse on the Martial Principle. Reading it, the Guhua head was shaken with tears, declaring that it is not Xingqiu who needs the Guhua Clan, but the Guhua Clan that needs Xingqiu. Since then, this verse has been sealed up at the Clan headquarters at Wangshan Hall. Disciples are proscribed from reading it, much less outsiders.\r\n\r\nThe verse reads thus:\r\n\r\nGuhua\'s arts I have studied long, in its secrets I am trained, now its long-lost depths fall upon me like the coming of blessed rain. The beating heart of Guhua\'s sword art is as a shower of floating flowers. One amidst may seize a bloom, but those without read only doom.\r\nThe Guhua lance is a lantern\'s dance, like flames in night\'s deep glooming. Like sparks, they scatter with ease in the dark, then join like the daybreak looming.\r\nThey say the sword is as your arm — I say its glint is the beholder\'s eye, a light like the bright dawn coming.\r\nThose who wander are burdened not. Freely they cut rain, and enlightened they pierce light. Like a snaking dragon, they cannot be subdued. In their right eye the blade, and in the other the spear.\r\nThis text should have been free for all to read. The only reason why it was sealed is the dreadful penmanship.','Every merchant in Liyue Harbor knows of Xingqiu from the Feiyun Commerce Guild.\r\n\r\nAll see him as a kind and well-mannered young man who is an excellent student, a top talent in every sense.\r\n\r\nAs the second-born son of the family, Xingqiu is not required to shoulder the burden of managing the Guild\'s affairs. However, Xingqiu possesses a unique scholarly talent among his peers — that is, the offspring of Liyue\'s wealthiest merchants — and was often praised by his tutors as a young student.\r\n\r\nXingqiu\'s elder brother, while he was learning the family business from their father, firmly believed that Xingqiu would become a great asset to the business one day.\r\n\r\nHowever, little did he know that Xingqiu, after finishing the dauntingly thick volumes on commerce and philosophy, would hollow them out and sneak martial art novels into them, which he read incessantly thereafter.\r\n\r\nSometimes, Xingqiu suddenly disappears for hours at a time with no explanation. When asked why, he simply replies: A moment of solitude.'),('Xinyan','Pyro',249,11201,4,'Claymore','10/16','Fila Ignium','Xinyan was someone who never fit in in Liyue Harbor, and she only found where she belonged when she encountered rock \'n\' roll.\r\n\r\nBut because she lived in a land that had no place for rock \'n\' roll yet, she needed to be able to attract enough attention.\r\n\r\nShe immersed herself in the world of music, looking for a way to move peoples\' hearts. She broke many an instrument and played till calluses formed on both hands, but still, it was unsatisfactory.\r\n\r\nWho\'d want to listen to this racket?\r\n\r\nThe rotten-tomato reviews she received were starting to get to her. She wondered if she should quit.\r\n\r\nSitting on top of Mt. Tianheng, she looked down over Liyue Harbor. But though the lights lit the streets and alleys of the harbor, they could not light the spirit of rock \'n\' roll. She considered leaving, to go someplace where rock \'n\' roll was appreciated. But would this not be running away? Would it not be a betrayal of rock \'n\' roll\'s spirit of resistance?\r\n\r\nNo, she would not leave. She would become a flame that could light Liyue Harbor up.\r\n\r\nShe started experimenting with the use of fire to move people, adding sparks and explosions to her music.\r\n\r\nBut this was no mean feat for an ordinary person.\r\n\r\nWho knows how many times she must have burnt her fingers or blown her instrument up. But still, she continued to practice every single day on top of Mt. Tianheng.\r\n\r\nAnd perhaps it was that the gods themselves had great expectations of this new form of music that would soon grace the seven nations...\r\n\r\nBut regardless, the boiling-hot Vision would be the final stroke of perfection.\r\n\r\nXinyan dashed down the mountain and began her very first rock \'n\' roll concert in Liyue Harbor.\r\n\r\nThus did her musical journey begin, with showers of sparks and explosions keeping time.\r\n\r\n','Rock \'n\' roll originates in Fontaine and is just starting to find its feet in Liyue Harbor. Xinyan, thus, is a pioneer in this art.\r\n\r\nEvery night, she will sling on the instrument that she made herself, stand on a self-constructed stage, and play self-composed tunes to every member of the audience.\r\n\r\nAs the person is, so are her songs: bold, defiant, loud, and proud.\r\n\r\nShe is by no means a virtuoso, but her loyal fans will nonetheless lose themselves in celebrating along with her, using their voices and their bodies to shake off the stress and troubles of the day.\r\n\r\nIn the heat of the moment, the fire that leaps from Xinyan\'s Vision threatens to turn night into day.\r\n\r\nShe is a true rock \'n\' roll genius, and a greater master still at creating atmosphere, says The Steambird of her skill.\r\n\r\nLiving in Liyue is expensive, and maintaining one\'s lifestyle in there is harder still. But as Xinyan would tell those worried about such mundane matters—\r\n\r\nRock \'n\' roll is easy, really.'),('Zhongli','Geo',251,14695,5,'Polearm','12/31','Lapis Dei','Diona\'s antipathy towards alcohol is not hate per se. Instead, it can be considered a form of avarice.\r\n\r\nShe wishes for her father to always be the man that she admires, and she treasures every moment that she spends with her family, unwilling to share her happiness with the wine.\r\n\r\nThere was once a storm that lasted for three days, and for those three days, her father, who had been out hunting, did not return.\r\n\r\nThe awful weather prevented the search parties sent by the Knights of Favonius from making much headway, and soon the dread of loss began to hang over Diona like a shroud.\r\n\r\nIf she could not even stand to share, how could she bear having something utterly stolen from her?\r\n\r\nShe burst out the door and into the tempest, and the waters that stood in her path were frozen by some power she did not recognize.\r\n\r\nUsing her superlative tracking skills, she found her father under a broken gorge.\r\n\r\nWith the help of other hunters, she returned home with her father, and only once she realized that he would be fine did she finally smile again.\r\n\r\nDo you... want me to mix you a drink? It\'ll numb the pain a little...\r\n\r\nThat was probably the first time she ever mixed a drink in a normal fashion.\r\n\r\nOoh, it\'s so refreshing. It\'s wonderful! Hahaha—Ouch...\r\n\r\nGetting to drink a cocktail that his daughter had made was probably a better anesthetic by far than the alcohol itself.\r\n\r\nStill, Diona gaining power over Cryo did not help reconcile her to wine at all.','Liyue and Inazuma share a common saying: Its fins formed the ocean deep, its tail the mountains high. The fishermen learned this phrase while ashore long ago, and sang it over and over, spreading the tune far and wide till it became the oft-praised song people know today. Whenever the mists gather over the sea\'s surface, one can hear the distant song of the fishermen hidden in the white shroud: its fins formed the oceans deep, its tail the mountains high...\r\n\r\nThis was Beidou\'s childhood lullaby. The tale of Rex Lapis smiting the sea monsters had become legendary among the people of Liyue. As a child, Beidou loved such tales, and in her dreams, she thought: I too should like to see this giant fish.\r\n\r\nThis day, however, she sang this song with a different emotion in her heart. Her entire crew sang along as they sailed.\r\n\r\nHaishan was in the waters with them — at once like a dragon and a fish, it was larger than any could have imagined in their worst nightmares, and mighty as a deity, raising waves dozens of meters high with ease.\r\n\r\nThose who ply their trade on the high seas are destined to meet Haishan eventually. Beidou had longed to do so since she was nine, dreaming of slicing its head off in a single blow.\r\n\r\nMany times she had challenged the creature, and many times she had failed. But this day was different. This day she charged at Haishan with her best greatsword in hand, and crack sailors at her back.\r\n\r\nThe battle would rage fiercely for four days. With cannons and harpoons, arrows and ropes the fleet would assail Haishan, while Beidou battled the thusty tied-down creature for ten hours, well into the night.\r\n\r\nNow, nighttime was when Haishan was in its element, and in their vigilance not a single member of the fleet even dared sleep a wink. Beidou stood upon the prow, listening to the wind.\r\n\r\nOne strike. Just one strike. That was all she needed. And so she waited, unmoving, in the freezing wind.\r\n\r\nThen, at the crack of dawn, having neither eaten nor drank throughout the night, Beidou heard a change in the sound of the waves.\r\n\r\nWith one almighty strike that sounded as if it could have sliced the moon in two or ripped a mountain from the face of the world, she chopped the leviathan\'s head clean off!\r\n\r\nThe sound of thunder filled the heavens, and a single bolt of purple lightning struck the ocean right in front of Beidou, even as she bathed in the blood of her nemesis.\r\n\r\nThus descended a Vision to the slayer of the sea monster, its violet glow as stunning as lightning, and its immaculate, jeweled form a treasure more precious than dragon blood. A suitably divine gift for the hero who subdued Haishan.');
/*!40000 ALTER TABLE `gs_character` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gs_elemental_resonance`
--

DROP TABLE IF EXISTS `gs_elemental_resonance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gs_elemental_resonance` (
  `resonance_type` varchar(50) NOT NULL,
  `common_element` varchar(10) DEFAULT NULL,
  `resonance_buffs` varchar(250) NOT NULL,
  PRIMARY KEY (`resonance_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gs_elemental_resonance`
--

LOCK TABLES `gs_elemental_resonance` WRITE;
/*!40000 ALTER TABLE `gs_elemental_resonance` DISABLE KEYS */;
INSERT INTO `gs_elemental_resonance` VALUES ('Enduring Rock','Geo','Increases resistance to interruption. When protected by a shield, increases attack damage by 15%'),('Fervent Flames','Pyro','Affected by Cryo for 40% less time and increases attack by 25%'),('High Voltage','Electro','Affected by Hydro for 40% less time. Superconduct, Overloaded, and Electro-Charged have a 100% chance to generate an Electro Elemental Particle (with a five second cooldown)'),('Impetuous Winds','Anemo','Decreases Stamina consumption by 15%. Increases movement speed by 10% and shortens skill cooldown by 5%'),('Protective Canopy','','All elemental resistances and physical resistance increased by 15%'),('Shattering Ice','Cryo','Affected by Electro for 40% less time. Increases CRIT Rate against enemies that are Frozen or affected by Cryo by 15%'),('Soothing Water','Hydro','Affected by Pyro for 40% less time. Increases incoming healing by 30%');
/*!40000 ALTER TABLE `gs_elemental_resonance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gs_recommended_party`
--

DROP TABLE IF EXISTS `gs_recommended_party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gs_recommended_party` (
  `character1_name` varchar(20) NOT NULL,
  `character2_name` varchar(20) NOT NULL,
  PRIMARY KEY (`character1_name`,`character2_name`),
  KEY `character2_recommended` (`character2_name`),
  CONSTRAINT `character1_recommended` FOREIGN KEY (`character1_name`) REFERENCES `gs_character` (`character_name`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `character2_recommended` FOREIGN KEY (`character2_name`) REFERENCES `gs_character` (`character_name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gs_recommended_party`
--

LOCK TABLES `gs_recommended_party` WRITE;
/*!40000 ALTER TABLE `gs_recommended_party` DISABLE KEYS */;
INSERT INTO `gs_recommended_party` VALUES ('Chongyun','Albedo'),('Ningguang','Barbara'),('Razor','Barbara'),('Diona','Beidou'),('Qiqi','Beidou'),('Chongyun','Bennett'),('Klee','Bennett'),('Lisa','Bennett'),('Razor','Bennett'),('Xiao','Bennett'),('Noelle','Chongyun'),('Xingqiu','Chongyun'),('Diona','Diluc'),('Fischl','Diluc'),('Ganyu','Diluc'),('Venti','Diluc'),('Hu Tao','Diona'),('Jean','Diona'),('Keqing','Diona'),('Mona','Fischl'),('Tartaglia','Fischl'),('Xiao','Fischl'),('Xiangling','Ganyu'),('Xiao','Ganyu'),('Zhongli','Ganyu'),('Xiangling','Hu Tao'),('Xingqiu','Hu Tao'),('Amber','Jean'),('Mona','Jean'),('Barbara','Kaeya'),('Bennett','Kaeya'),('Keqing','Kaeya'),('Barbara','Keqing'),('Diluc','Keqing'),('Fischl','Keqing'),('Venti','Keqing'),('Xingqiu','Keqing'),('Albedo','Klee'),('Jean','Klee'),('Mona','Klee'),('Noelle','Klee'),('Sucrose','Klee'),('Tartaglia','Klee'),('Sucrose','Lisa'),('Amber','Mona'),('Beidou','Mona'),('Ganyu','Mona'),('Hu Tao','Mona'),('Venti','Mona'),('Albedo','Ningguang'),('Ningguang','Noelle'),('Chongyun','Qiqi'),('Razor','Qiqi'),('Kaeya','Razor'),('Noelle','Razor'),('Xinyan','Razor'),('Beidou','Sucrose'),('Bennett','Sucrose'),('Fischl','Sucrose'),('Hu Tao','Sucrose'),('Jean','Sucrose'),('Albedo','Tartaglia'),('Bennett','Tartaglia'),('Diluc','Tartaglia'),('Ganyu','Tartaglia'),('Kaeya','Tartaglia'),('Qiqi','Tartaglia'),('Sucrose','Tartaglia'),('Barbara','Venti'),('Klee','Venti'),('Tartaglia','Venti'),('Xiangling','Venti'),('Zhongli','Venti'),('Diluc','Xiangling'),('Ningguang','Xiangling'),('Xinyan','Xiangling'),('Beidou','Xingqiu'),('Diona','Xingqiu'),('Klee','Xingqiu'),('Lisa','Xingqiu'),('Qiqi','Xingqiu'),('Xinyan','Xingqiu'),('Kaeya','Xinyan'),('Lisa','Xinyan'),('Amber','Zhongli'),('Keqing','Zhongli');
/*!40000 ALTER TABLE `gs_recommended_party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gs_weapon`
--

DROP TABLE IF EXISTS `gs_weapon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gs_weapon` (
  `weapon_name` varchar(50) NOT NULL,
  `base_atk` int NOT NULL,
  `weapon_type` varchar(10) NOT NULL,
  `rarity` int NOT NULL,
  `forge_materials` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`weapon_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gs_weapon`
--

LOCK TABLES `gs_weapon` WRITE;
/*!40000 ALTER TABLE `gs_weapon` DISABLE KEYS */;
INSERT INTO `gs_weapon` VALUES ('Alley Hunter',41,'Bow',4,''),('Amber Catalyst',40,'Catalyst',3,''),('Amos Bow',46,'Bow',5,''),('Aquila Favonia',48,'Sword',5,''),('Black Tassel',38,'Polearm',3,''),('Blackcliff Amulet',42,'Catalyst',4,''),('Blackcliff Longsword',44,'Polearm',4,''),('Blackcliff Pole',42,'Polearm',4,''),('Blackcliff Slasher',42,'Claymore',4,''),('Blackcliff Warbow',44,'Bow',4,''),('Bloodtainted Greatsword',38,'Claymore',3,''),('Compound Bow',41,'Bow',4,'Northlander Bow Billet x1, Crystal Chunk x50, White Iron Chunk x50'),('Cool Steel',39,'Sword',3,''),('Crescent Pike',44,'Polearm',4,'Northlander Polearm Billet x1, Crystal Chunk x50, White Iron Chunk x50'),('Dark Iron Sword',40,'Sword',3,''),('Deathmatch',41,'Polearm',4,''),('Debate Club',39,'Claymore',3,''),('Dragon\'s Bane',41,'Polearm',4,''),('Dragonspine Spear',41,'Polearm',4,'Northlander Polearm Billet x1, Starsilver x50, Vitalized Dragontooth x8'),('Ebony Bow',40,'Bow',3,''),('Emerald Orb',40,'Catalyst',3,''),('Eye of Perception',41,'Catalyst',4,''),('Favonius Codex',42,'Catalyst',4,''),('Favonius Greatsword',41,'Claymore',4,''),('Favonius Lance',44,'Polearm',4,''),('Favonius Sword',41,'Sword',4,''),('Favonius Warbow',41,'Bow',4,''),('Ferrous Shadow',39,'Claymore',3,''),('Festering Desire',42,'Sword',4,''),('Fillet Blade',39,'Sword',3,''),('Frostbearer',42,'Catalyst',4,'Northlander Catalyst Billet x1, Crystal Chunk x50, Starsilver x50'),('Halberd',40,'Polearm',3,''),('Harbinger of Dawn',39,'Sword',3,''),('Iron Point',33,'Polearm',2,''),('Iron Sting',42,'Sword',4,'Northlander Sword Billet x1, Crystal Chunk x50, White Iron Chunk x50'),('Lions Roar',42,'Sword',4,''),('Lithic Blade',42,'Claymore',4,''),('Lithic Spear',44,'Polearm',4,''),('Lost Prayer to the Sacred Winds',44,'Catalyst',5,''),('Magic Guide',38,'Catalyst',3,''),('Mappa Mare',44,'Catalyst',4,'Northlander Catalyst Billet x1, Crystal Chunk x50, White Iron Chunk x50'),('Memory of Dust',46,'Catalyst',5,''),('Messenger',40,'Bow',3,''),('Old Merc\'s Pal',33,'Claymore',2,''),('Otherworldly Story',39,'Catalyst',3,''),('Pocket Grimoire',33,'Catalyst',2,''),('Primordial Jade Cutter',44,'Sword',5,''),('Primordial Jade Winged-Spear',48,'Polearm',5,''),('Prototype Archaic',44,'Claymore',4,'Northlander Claymore Billet x1, Crystal Chunk x50, White Iron Chunk x50'),('Prototype Crescent',42,'Bow',4,'Northlander Bow Billet x1, Crystal Chunk x50, White Iron Chunk x50'),('Prototype Grudge',42,'Polearm',4,'Northlander Polearm Billet x1, Crystal Chunk x50, White Iron Chunk x50'),('Prototype Malice',42,'Catalyst',4,'Northlander Catalyst Billet x1, Crystal Chunk x50, White Iron Chunk x50'),('Prototype Rancour',44,'Sword',4,'Northlander Sword Billet x1, Crystal Chunk x50, White Iron Chunk x50'),('Quartz',40,'Claymore',3,''),('Rainslasher',42,'Claymore',4,''),('Raven Bow',40,'Bow',3,''),('Recurve Bow',38,'Bow',3,''),('Royal Bow',42,'Bow',4,''),('Royal Greatsword',43,'Claymore',4,''),('Royal Grimoire',44,'Catalyst',4,''),('Royal Longsword',42,'Sword',4,''),('Royal Spear',44,'Polearm',4,''),('Rust',42,'Bow',4,''),('Sacrificial Bow',44,'Bow',4,''),('Sacrificial Fragments',41,'Catalyst',4,''),('Sacrificial Greatsword',44,'Claymore',4,''),('Sacrificial Sword',41,'Sword',4,''),('Serpent Spine',42,'Claymore',4,''),('Sharpshooter\'s Oath',39,'Bow',3,''),('Silver Sword',33,'Sword',2,''),('Skyrider Greatsword',39,'Claymore',3,''),('Skyrider Sword',38,'Sword',3,''),('Skyward Atlas',48,'Catalyst',5,''),('Skyward Blade',46,'Sword',5,''),('Skyward Harp',48,'Bow',5,''),('Skyward Pride',48,'Claymore',5,''),('Skyward Spine',48,'Polearm',5,''),('Slingshot',38,'Bow',3,''),('Snow-Tombed Starsilver',44,'Claymore',4,'Northlander Claymore Billet x1, Crystal Chunk x50, Starsilver x50'),('Solar Pearl',42,'Catalyst',4,''),('Staff of Homa',46,'Polearm',5,''),('Summit Shaper',46,'Sword',5,''),('Sword of Descension',39,'Sword',4,''),('The Alley Flash',44,'Sword',4,''),('The Bell',42,'Claymore',4,''),('The Black Sword',42,'Sword',4,''),('The Flute',42,'Sword',4,''),('The Stringless',42,'Bow',4,''),('The Unforged',46,'Claymore',5,''),('The Viridescent Hunt',42,'Bow',4,''),('The Widsith',42,'Catalyst',4,''),('Thrilling Tales of Dragon Slayers',39,'Catalyst',3,''),('Traveler\'s Handy Sword',40,'Sword',3,''),('Twin Nephrite',40,'Catalyst',3,''),('Vortex Vanquisher',46,'Polearm',5,''),('White Iron Greatsword',39,'Polearm',3,''),('White Tassel',39,'Polearm',3,''),('Whiteblind',42,'Claymore',4,'Northlander Claymore Billet x1, Crystal Chunk x50, White Iron Chunk x50'),('Wine and Song',42,'Claymore',4,''),('Wolf\'s Gravestone',46,'Claymore',5,'');
/*!40000 ALTER TABLE `gs_weapon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_resonance`
--

DROP TABLE IF EXISTS `team_resonance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_resonance` (
  `team_id` int NOT NULL,
  `resonance_type` varchar(50) NOT NULL,
  PRIMARY KEY (`team_id`,`resonance_type`),
  KEY `resonance_type` (`resonance_type`),
  CONSTRAINT `team_resonance_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `user_team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `team_resonance_ibfk_2` FOREIGN KEY (`resonance_type`) REFERENCES `gs_elemental_resonance` (`resonance_type`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_resonance`
--

LOCK TABLES `team_resonance` WRITE;
/*!40000 ALTER TABLE `team_resonance` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_resonance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_character`
--

DROP TABLE IF EXISTS `user_character`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_character` (
  `character_name` varchar(20) NOT NULL,
  `constellation_lvl` int NOT NULL,
  `talent_lvl` int NOT NULL,
  `weapon_id` int DEFAULT NULL,
  PRIMARY KEY (`character_name`),
  KEY `character_equipped` (`weapon_id`),
  CONSTRAINT `character_equipped` FOREIGN KEY (`weapon_id`) REFERENCES `user_weapon` (`weapon_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `user_gs_character` FOREIGN KEY (`character_name`) REFERENCES `gs_character` (`character_name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_character`
--

LOCK TABLES `user_character` WRITE;
/*!40000 ALTER TABLE `user_character` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_character` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_team`
--

DROP TABLE IF EXISTS `user_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_team` (
  `team_id` int NOT NULL AUTO_INCREMENT,
  `team_name` varchar(50) DEFAULT NULL,
  `character_name1` varchar(20) DEFAULT NULL,
  `character_name2` varchar(20) DEFAULT NULL,
  `character_name3` varchar(20) DEFAULT NULL,
  `character_name4` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`team_id`),
  KEY `character_name1` (`character_name1`),
  KEY `character_name2` (`character_name2`),
  KEY `character_name3` (`character_name3`),
  KEY `character_name4` (`character_name4`),
  CONSTRAINT `user_team_ibfk_1` FOREIGN KEY (`character_name1`) REFERENCES `user_character` (`character_name`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `user_team_ibfk_2` FOREIGN KEY (`character_name2`) REFERENCES `user_character` (`character_name`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `user_team_ibfk_3` FOREIGN KEY (`character_name3`) REFERENCES `user_character` (`character_name`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `user_team_ibfk_4` FOREIGN KEY (`character_name4`) REFERENCES `user_character` (`character_name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_team`
--

LOCK TABLES `user_team` WRITE;
/*!40000 ALTER TABLE `user_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_team` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `resonance_after_insert` AFTER INSERT ON `user_team` FOR EACH ROW BEGIN
INSERT INTO team_resonance(team_id, resonance_type) (
	SELECT team_id, er.resonance_type FROM gs_elemental_resonance AS er 
	JOIN (
		SELECT team_id, element, COUNT(element) AS elementNo FROM (
			SELECT * FROM user_character AS uc
			JOIN user_team AS ut
			WHERE team_id = NEW.team_id
				AND (ut.character_name1 = uc.character_name
					OR ut.character_name2 = uc.character_name
					OR ut.character_name3 = uc.character_name 
					OR ut.character_name4 = uc.character_name)
		) AS user_team_characters NATURAL JOIN gs_character
		GROUP BY element
	) AS user_team_elements ON er.common_element = user_team_elements.element
	WHERE user_team_elements.elementNo >= 2
	UNION ALL
	SELECT NEW.team_id AS team_id, "Protective Canopy" AS resonance_type
	WHERE NOT EXISTS (
		SELECT er.resonance_type FROM gs_elemental_resonance AS er 
		JOIN (
			SELECT team_id, element, COUNT(element) AS elementNo FROM (
				SELECT * FROM user_character AS uc
				JOIN user_team AS ut WHERE team_id = NEW.team_id
                   AND (ut.character_name1 = uc.character_name
					OR ut.character_name2 = uc.character_name
					OR ut.character_name3 = uc.character_name 
					OR ut.character_name4 = uc.character_name)
			) AS user_team_characters NATURAL JOIN gs_character
			GROUP BY element
		) AS user_team_elements ON er.common_element = user_team_elements.element
		WHERE user_team_elements.elementNo >= 2
	)
);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user_weapon`
--

DROP TABLE IF EXISTS `user_weapon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_weapon` (
  `weapon_id` int NOT NULL AUTO_INCREMENT,
  `weapon_name` varchar(50) NOT NULL,
  `refinement_lvl` int NOT NULL,
  PRIMARY KEY (`weapon_id`),
  KEY `user_gs_weapon` (`weapon_name`),
  CONSTRAINT `user_gs_weapon` FOREIGN KEY (`weapon_name`) REFERENCES `gs_weapon` (`weapon_name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_weapon`
--

LOCK TABLES `user_weapon` WRITE;
/*!40000 ALTER TABLE `user_weapon` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_weapon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'genshin'
--

--
-- Dumping routines for database 'genshin'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_user_character` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_user_character`(
	entered_name		VARCHAR(50),
    entered_const			INT,
    entered_talent			INT,
    entered_weapon			INT
)
BEGIN
	INSERT INTO user_character(character_name, constellation_lvl, talent_lvl, weapon_id) 
    VALUES (entered_name, entered_const, entered_talent, entered_weapon);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_user_character_null` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_user_character_null`(
	entered_name		VARCHAR(50),
    entered_const			INT,
    entered_talent			INT
)
BEGIN
	INSERT INTO user_character(character_name, constellation_lvl, talent_lvl, weapon_id) 
    VALUES (entered_name, entered_const, entered_talent, NULL);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_user_weapon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_user_weapon`(
	entered_name		VARCHAR(50),
    entered_lvl				INT
)
BEGIN
	INSERT INTO user_weapon(weapon_name, refinement_lvl) VALUES (entered_name, entered_lvl);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `del_user_character` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `del_user_character`(
	entered_name		VARCHAR(50)
)
BEGIN
	DELETE FROM user_character 
    WHERE character_name = entered_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `del_user_weapon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `del_user_weapon`(
	entered_id			INT
)
BEGIN
	DELETE FROM user_weapon 
    WHERE weapon_id = entered_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mod_user_character` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mod_user_character`(
	entered_name		VARCHAR(50),
    entered_const			INT,
    entered_talent			INT,
    entered_weapon			INT
)
BEGIN
	UPDATE user_character
	SET constellation_lvl = entered_const, talent_lvl = entered_talent, weapon_id = entered_weapon
	WHERE character_name = entered_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mod_user_character` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mod_user_character`(
	entered_name		VARCHAR(50),
    entered_const			INT,
    entered_talent			INT,
    entered_weapon			INT
)
BEGIN
	UPDATE user_character
	SET constellation_lvl = entered_const, talent_lvl = entered_talent, weapon_id = entered_weapon
	WHERE character_name = entered_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mod_user_character_null` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mod_user_character_null`(
	entered_name		VARCHAR(50),
    entered_const			INT,
    entered_talent			INT
)
BEGIN
	UPDATE user_character
	SET constellation_lvl = entered_const, talent_lvl = entered_talent, weapon_id = NULL
	WHERE character_name = entered_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mod_user_weapon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mod_user_weapon`(
	entered_id			INT,
	entered_name		VARCHAR(50),
    entered_lvl				INT
)
BEGIN
	UPDATE user_weapon
	SET weapon_name = entered_name, refinement_lvl = entered_lvl
	WHERE weapon_id = entered_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `weapons_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `weapons_list`(
	entered_name		VARCHAR(50)
)
BEGIN
SELECT weapon_id FROM user_weapon 
NATURAL JOIN gs_weapon 
WHERE weapon_type = (
	SELECT weapon_type FROM gs_character
	WHERE character_name =  entered_name);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-16 16:38:45
