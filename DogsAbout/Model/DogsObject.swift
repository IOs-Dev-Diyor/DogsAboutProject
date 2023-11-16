//
//  DogsObject.swift
//  DogsAbout
//
//  Created by Diyorbek Xikmatullayev on 14/10/23.
//

import Foundation

class DogsObject {
    static let shared = DogsObject()
    var dogsArray = [Dogs]()
    
    var aboutArray: [String] = [
        """
Loyal, curious, and famously amusing, this almost-human toy dog is fearless out of all proportion to his size. As with all great comedians, it's the Affenpinscher's apparent seriousness of purpose that makes his antics all the more amusing.
The Affen's apish look has been described many ways. They've been called 'monkey dogs' and 'ape terriers.' The French say diablotin moustachu ('mustached little devil'), and Star Wars fans argue whether they look more like Wookies or Ewoks.     Standing less than a foot tall, these sturdy terrier-like dogs approach life with great confidence. 'This isn't a breed you train, 'a professional dog handler tells us, 'He's like a human. You befriend him.' The dense, harsh coat is described as 'neat but shaggy' and comes in several colors; the gait is light and confident. They can be willful and domineering, but mostly Affens are loyal, affectionate, and always entertaining. Affen people say they love being owned by their little monkey dogs.
""",
        """
Among the most eye-catching of all dog breeds, the Afghan Hound is an aloof and dignified aristocrat of sublime beauty. Despite his regal appearance, the Afghan can exhibit an endearing streak of silliness and a profound loyalty.
Since ancient times, Afghan Hounds have been famous for their elegant beauty. But the thick, silky, flowing coat that is the breed's crowning glory isn't just for show ' it served as protection from the harsh climate in mountainous regions where Afghans originally earned their keep. Beneath the Afghan's glamorous exterior is a powerful, agile hound ' standing as high as 27 inches at the shoulder ' built for a long day's hunt. Their huge paw-pads acted as shock absorbers on their homeland's punishing terrain.  The Afghan Hound is a special breed for special people. A breed expert writes, 'It's not the breed for all would-be dog owners, but where the dog and owner combination is right, no animal can equal the Afghan Hound as a pet.'
""",
        """
His size, strength, and unflagging spirit have earned the Airedale Terrier the nickname 'The King of Terriers.' The Airedale stands among the world's most versatile dog breeds and has distinguished himself as hunter, athlete, and companion.
The Airedale Terrier is the largest of all terrier breeds. Males stand about 23 inches at the shoulder, females a little less. The dense, wiry coat is tan with black markings. Long, muscular legs give Airedales a regal lift in their bearing, and the long head'¿with its sporty beard and mustache, dark eyes, and neatly folded ears'¿conveys a keen intelligence. Airedales are the very picture of an alert and willing terrier'¿only bigger. And, like his smaller cousins in the terrier family, he can be bold, determined, and stubborn. Airedales are docile and patient with kids but won't back down when protecting hearth and home. Thanks to their famous do-it-all attitude, Airedales excel in all kinds of sports and family activities.
""",
        """
The Akita is a muscular, double-coated dog of ancient Japanese lineage famous for their dignity, courage, and loyalty. In their native land, they're venerated as family protectors and symbols of good health, happiness, and long life.
Akitas are burly, heavy-boned spitz-type dogs of imposing stature. Standing 24 to 28 inches at the shoulder, Akitas have a dense coat that comes in several colors, including white. The head is broad and massive, and is balanced in the rear by a full, curled-over tail. The erect ears and dark, shining eyes contribute to an expression of alertness, a hallmark of the breed. Akitas are quiet, fastidious dogs. Wary of strangers and often intolerant of other animals, Akitas will gladly share their silly, affectionate side with family and friends. They thrive on human companionship. The large, independent-thinking Akita is hardwired for protecting those they love. They must be well socialized from birth with people and other dogs.
""",
        """
The Alaskan Klee Kai is a small-sized companion dog that is alert, energetic, and curious, yet reserved with unfamiliar people and situations.
The Alaskan Klee Kai is a small sized companion dog with a smooth, agile, and well-balanced gait, a body that is well proportioned with a level topline and a length slightly longer than height.  The wedge-shaped head, erect triangle shaped ears, well furred double coat in three symmetrical contrasting color varieties, and a loosely curled tail reflect its arctic heritage.
""",
        """
An immensely strong, heavy-duty worker of spitz type, the Alaskan Malamute is an affectionate, loyal, and playful but dignified dog recognizable by his well-furred plumed tail carried over the back, erect ears, and substantial bone. The Alaskan Malamute stands 23 to 25 inches at the shoulder and weighs 75 to 85 pounds. Everything about Mals suggests their origin as an arctic sled dog: The heavy bone, deep chest, powerful shoulders, and dense, weatherproof coat all scream, 'I work hard for a living!' But their almond-shaped brown eyes have an affectionate sparkle, suggesting Mals enjoy snuggling with their humans when the workday is done. Mals are pack animals. And in your family 'pack,' the leader must be you. If a Mal doesn't respect you, he will wind up owning you instead of the other way around. Firm but loving training should begin in early puppyhood. That said, a well-behaved Mal is a joy to be with'¿playful, gentle, friendly, and great with kids.
""",
                """
        American Bulldogs are a well-balanced athletic dog that demonstrate great strength, endurance, agility, and a friendly attitude. Historically, they were bred to be a utility dog used for working the farm.
        The American Bulldog is a descendant of the English Bulldog. It is believed that the bulldog was in America as early as the 17th century. They came to the United States in the 1800s, with immigrants who brought their working bulldogs with them. Small farmers and ranchers used this all-around working dog for many tasks including farm guardians, stock dogs, and catch dogs. The breed largely survived, particularly in the southern states, due to its ability to bring down and catch feral pigs.
        """,
                """
        These sleek and racy, lean but muscular hounds work dusk to dawn in pursuit of the wily raccoon. The sight of the American English Coonhound tearing through the moonlit woods, all sinew and determination, bawling their lusty night music, is coon-hunter heaven. Standing as high as 26 inches at the shoulder, American English Coonhounds are deep-chested, sweet-faced athletes beloved by sportsmen for their speed and endurance. Stretched tightly across the athletic frame is a medium-length coat of various patterns, some with ticking. The head is broad with a domed skull, with soft, low-hung ears and dark-brown eyes that glow with warmth and kindness. American English Coonhounds are mellow when off duty but tenacious and stubborn in pursuit of their ring-tailed prey. Their work drive and energy, the patience it takes to train them for things other than coon hunting, and their loud, ringing bark can make the breed a bad fit as house pets for novice owners. Some passionate fans of American English Coonhounds feel that without a sporting outlet for this breed's houndy virtues, you're simply wasting a good dog.
        """,
                """
        The American Eskimo Dog combines striking good looks with a quick and clever mind in a total brains-and-beauty package. Neither shy nor aggressive, Eskies are always alert and friendly, though a bit conservative when making new friends. The American Eskimo Dog comes in three sizes'¿standard, miniature, and toy'¿standing as tall as 19 inches at the shoulder or as short as 9 inches. Distinctive traits include a dense, sparkling white coat with a lion-like ruff around the chest and shoulders; a smiling face, with black nose, lips, and eye-rims that convey a keen, intelligent expression; and a plumed tail carried over the back. Some Eskies have markings with the delicious color name 'biscuit cream.' They move with a bold and agile gait. Eskies are social animals and can develop problem behaviors when neglected or undertrained'¿they insist on being part of family life. Among the most trainable of breeds, the clever, kid-friendly Eskie practically invented the phrase 'eager to please.'
        """,
                """
        American Foxhounds are good-natured, low-maintenance hounds who get on well with kids, dogs, even cats, but come with special considerations for prospective owners. They are closely associated with Revolutionary heroes and the rolling estates of old Virginia. American Foxhounds are sleek, rangy hunters known for their speed, endurance, and work ethic. You can tell the American Foxhound apart from their British cousin the English Foxhound by length of leg'¿the American's legs are longer and more finely boned'¿and by the American's slightly arched loin (back end). American Foxhounds have large, soft eyes with an expression described as gentle and pleading. So far, so good. But Foxhounds come with special considerations. They need lots of exercise or they can get depressed and destructive. A Foxhound's single-minded prey drive must be managed. Their loud bawling is melodious to hound lovers but can be a nuisance to neighbors, and training and housebreaking these independent souls can be a steep challenge for novice owners.
        """,
                """
        The American Hairless Terrier, a Louisiana native, is a smart, inquisitive, and playful dog that comes in hairless and coated varieties. He is a fine choice for allergy sufferers who want a dog with true terrier grit and courage.
        The American Hairless Terrier stands between 12 to 16 inches at the shoulder, and comes in both coated and hairless varieties. The hairless variety might have eyebrows and whiskers, while the coated has a short, shiny coat. The skin of the hairless is smooth and warm to the touch. The broad, wedge-shaped head is a hallmark of both varieties. Erect, V-shaped ears frame the round, expressive eyes that gleam with curiosity.
        """,
                """
        Intelligence is one of the American Leopard Hound's very best attributes. The breed is loving and affectionate toward their family and they are extremely protective of children. American Leopards are one of the oldest tree dog breeds in the U.S. and have extremely strong tracking abilities, often able to track prey for miles.
        The American Leopard Hound is a medium to large size dog and comes in three patterns: Solid, Leopard and Brindle; nine different official colors; and a variety of markings, however, sixty percent of all American Leopards are solid-colored dogs. The breed is very versatile in hunting a variety of game species including, but not limited to, raccoon, bear, bobcat, cougar, squirrel, and any other tree-minded game. As an especially tough breed, they also fare exceptionally well in extreme weather, both hot and cold.
        """,
                """
        The sweet and sensitive Field Spaniel is famously docile, but vigorous and game for anything when at play or in the field. These close cousins to Cocker Spaniels and Springer Spaniels may be small in number, but their charm is enormous.
        Field Spaniels bear a family resemblance to Cocker, Springer, and Sussex spaniels. The distinctive glossy coat is either black, some shade of liver, or combinations of the two. They stand 17 or 18 inches at the shoulder and should present the picture of well-balanced, moderately proportioned hunting companions. The long, feathery ears frame a facial expression conveying a grave, gentle intelligence. Field Spaniels are sweet, sensitive souls with just enough independence to make life interesting. They are trustworthy with kids, tolerant of their fellow mammals, and responsive to training. The U.S. breed standard calls these tranquil house dogs 'unusually docile,' but they are nonetheless playful and enjoy a good backyard romp.
        """,
                """
        The weatherproof Finnish Lapphund is a tough and substantial reindeer herder from north of the Arctic Circle. This remarkably empathetic breed is among the friendliest of all dogs'¿once he's satisfied that you aren't a reindeer rustler. Finnish Lapphunds, with their luscious coat, sweet spitz-like face, and profusely coated tail that curves over the back, are instantly recognizable as Nordic dogs. Lappies stand about 20 inches at the shoulder and are surprisingly muscular and substantial for their inches. Quick and agile, they move effortlessly and can go from a trot to a full gallop in a second flat. Lappies are friendly and submissive companions, though a bit wary of strangers. They crave companionship and will be miserable when neglected. A distinctive breed trait is a strong 'startle reflex,' the result of centuries spent ducking the antlers of ornery reindeer. Despite their propensity for shedding and barking, Lappies are popular pets in their homeland.
        """,
                """
        The lively Finnish Spitz, the flame-colored, foxy-faced breed from the 'Land of 60,000 Lakes,' is a small but fearless hunting dog whose unique style of tracking and indicating quarry has earned him the nickname the 'Barking Bird Dog.' The balanced, squarely symmetrical Finnish Spitz will stand not more than 20 inches at the shoulder and are easily recognized by their foxy face and prick ears projecting a lively expression, and a curving plumed tail. Their dense coat of glorious golden-red which is never monochromatic gives them the Finnish Spitz 'Glow.' Finkies or Finns, as they are nicknamed, move with a bold and brisk gait. Finkies make excellent alertdogs, wary but not shy with strangers. This is a vocal breed '¿ in Finland, owners hold contests to crown a 'King Barker' '¿ and true Finn lovers are more delighted than annoyed by their breed's yodeling and range of vocalization. Finkies are eager canine athletes and eye-catching show dogs known to be smart, sensitive, and captivating companions.


        """,
                """
        The Peter Pan of the Sporting Group, the forever-young Flat-Coated Retriever is a gundog of relatively recent origin. Happy, self-assured, and willing to please, a good Flat-Coat will retrieve a duck or a show ribbon with equal aplomb. The Flat-Coated Retriever's eponymous flat-lying coat comes in lustrous black or liver, with feathering at the legs and tail. A distinctive breed hallmark is the long head'¿unique among retrievers'¿which projects a smart and kindly expression. A Flat-Coat will stand as tall as a Labrador Retriever, but in silhouette they present a leaner, more elegant look. Dogdom's champion tail-waggers, Flat-Coats are among the happiest of all breeds. They mature slowly; some owners say that they never grow up at all, retaining a puppyish taste for rambunctious mischief into old age. This can be either delightful or exasperating, depending on your tolerance for such monkeyshines. This highly energetic breed requires lots of outdoorsy exercise.
        """,
                """
        The one-of-a-kind French Bulldog, with his large bat ears and even disposition, is one of the world's most popular small-dog breeds, especially among city dwellers. The Frenchie is playful, alert, adaptable, and completely irresistible. The French Bulldog resembles a Bulldog in miniature, except for the large, erect 'bat ears' that are the breed's trademark feature. The head is large and square, with heavy wrinkles rolled above the extremely short nose. The body beneath the smooth, brilliant coat is compact and muscular. The bright, affectionate Frenchie is a charmer. Dogs of few words, Frenchies don't bark much'¿but their alertness makes them excellent watchdogs. They happily adapt to life with singles, couples, or families, and do not require a lot of outdoor exercise. They get on well with other animals and enjoy making new friends of the human variety. It is no wonder that city folk from Paris to Peoria swear by this vastly amusing and companionable breed.
        """,
                """
        The French Spaniel is balanced, frank, gentle, calm and docile. He is an enthusiastic hunter, sociable with other dogs and an ideal companion in all circumstances. An excellent pointing dog, he also has a talent for retrieving. The French Spaniel is the Epagneul FranÃ§ais in his native country of France. A medium-sized dog, he is elegant, muscled and of medium proportions. His balanced construction provides the energy and toughness essential for his utilization. Highly intelligent in nature, his enthusiasm and willingness to work hard are his heritage. He is very easy to train.
        """,
                """
        The Old English Sheepdog is the archetypical shaggy dog, famous for his profuse coat and peak-a-boo hairdo, a distinctive bear-like gait, and a mellow, agreeable nature. The OES is a big, agile dog who enjoys exploring and a good romp.
        Beneath the Old English Sheepdog's profuse double coat is a muscular and compact drover, with plenty of bone and a big rump, standing 21 or 22 inches at the shoulder. Their eyes (when you can see them) are dark brown, or blue, or one of each. The OES breed standard says the skull is 'capacious and rather squarely formed, giving plenty of room for brain power.' OES move with a bear-like shuffle but are famous for their nimbleness afoot. Regular exercise is required for these strong, able-bodied workers. Equally famed are their many fine housedog qualities: watchfulness, courage, kindliness, and intelligence. Great with children, OES make patient, protective playmates. They are sensible watchdogs known for a loud, ringing bark.
        """,
                """
        Big, boisterous, and affectionate, the Otterhound was bred in medieval England for the now-outlawed activity of otter hunting. This scarce breed is known for his dense shaggy coat, webbed feet, acute sense of smell, and affinity for swimming. These big, bouncy hounds were ideally suited for otter hunting. OHs are built to be expert swimmers, from the top of their rough, waterproof coat to the bottom of their big webbed feet. A broad chest and powerful shoulders allow them to swim all day without tiring. Their large black nose is amazingly sensitive and could follow an otter's underwater scent trail over great distances. And the OH's size and strength enabled them to take on a sharp-toothed, razor-clawed otter that might weigh 20 pounds.
        """,
                """
        The Saint Bernard does not rank very high in AKC registrations, but the genial giant of the Swiss Alps is nonetheless among the world's most famous and beloved breeds. Saints are famously watchful and patient companions with a fondness for children.
        Not ranked particularly high in AKC registrations, this genial giant is nonetheless among the world's most famous and beloved breeds. The Saint's written standard abounds with phrases like "very powerful," "extraordinarily muscular," "imposing," and "massive." A male stands a minimum 27.5 inches at the shoulder; females will be smaller and more delicately built. The huge head features a wrinkled brow, a short muzzle, and dark eyes, combining to give Saints the intelligent, friendly expression that was such a welcome sight to stranded Alpine travelers.
        """,
                """
        Among the world's oldest breeds, the slim but rugged Saluki was the hunting hound of kings for thousands of years. Salukis are swift and agile sprinters who love a good chase. They make gentle, dignified, and independent but loyal pets. The beauty of Salukis has been a thing of wonder for thousands of years. They're slim and leggy, but very strong and perfectly balanced, like a great athlete or dancer. Males can stand between 23 and 28 inches at the shoulder; females can be much shorter. They come in a many colors and patterns. Their large, oval-shaped eyes are warm and intelligent. Salukis are highly adaptable, able to live and work in any climate. They're magnificent animals, but owning them comes with many special challenges.
        """,
                """
        The Samoyed is a substantial but graceful dog standing anywhere from 19 to a bit over 23 inches at the shoulder. Powerful, tireless, with a thick all-white coat impervious to cold, Sammies are perfectly beautiful but highly functional. Even their most delightful feature, a perpetual smile, has a practical function: The upturned corners of the mouth keep Sammies from drooling, preventing icicles from forming on the face.   A Sammy sentenced to solitary confinement in the yard is a miserable and destructive creature. These are smart, social, mischievous dogs who demand love and attention. Sammies need structure in training. Teach them what's expected of them early, and practice it with them often.
        """,
                """
        This shaggy sheepdog of Holland is also known as the Dutch Sheep Dog. Schapendoes are cheerful, funny, clever and brave and are very good family pets. They also have a strong desire to please.
        The Schapendoes were everywhere in the Netherlands during the late 19th and early 20th centuries, but their numbers dwindled drastically when Border Collies were imported. When the breed club for Nederlandse Schapendoes was founded in 1947, the Schapendoes breed was resuscitated. The Schapendoes is a lightly-built, long-coated, medium-sized dog. His movements are effortless and springy and his astounding ability to jump makes him excel at agility and other dog sports. With an attentive and courageous character, he is intelligent, watchful, lively, friendly and high-spirited. Towards people familiar to him, he develops great affection and loyalty.
        """,
                """
        The Schipperke, Belgium's "little captain," is the traditional barge dog of the Low Countries. Curious, lively, and intense but mischievous, this little black dog is a robust, long-lived companion for whom there is never a dull moment. Standing no higher than 13 inches, Schipperkes are small dogs built for hard work. Schips were created as ratters and watchdogs. Their powerful jaws, necks, and forequarters'¿coupled with a stealthy, catlike hunting style'¿make them ideal rat-catching machines. The black coat is profuse around the neck, shoulders, and legs, giving the breed a silhouette that accentuates a thick, substantial body. The foxy face completes the unique look of a unique breed. If you can't tell a Schipperke from an ordinary dog, you simply haven't been paying attention.
        """,
                """
        The crisply coated Scottish Deerhound, 'Royal Dog of Scotland,' is a majestically large coursing hound struck from the ancient Greyhound template. Among the tallest of dog breeds, the Deerhound was bred to stalk the giant wild red deer.
        Stand back: You need a little distance to fully appreciate the majesty of this ancient beast. In silhouette we see a noble coursing hound struck from the classic Greyhound template. Deerhounds are, though, much larger and more substantial than Greyhounds, a good-size male can stand 32 inches at the shoulder and weigh 110 pounds. The crisp coat is seen in several colors; breed aficionados prefer the dark blue-gray coat. The tapered head and long neck add extra lift to an already stately hound.
        """,
                """
        A solidly compact dog of vivid personality, the Scottish Terrier is an independent, confident companion of high spirits. Scotties have a dignified, almost-human character. Their terrier persistence has earned the breed the nickname 'the Diehard.' The well-known Scottie silhouette is that of a short-legged but substantial terrier with distinctive furnishings at the beard, legs, and lower body. The wiry topcoat and soft, dense undercoat coat can be black, wheaten yellow, or a brindle-stripe pattern. Bright, piercing eyes, and erect ears and tail, convey keen alertness'¿a hallmark of Britain's terrier breeds. The Scottie working style has been described as efficient and businesslike, and their aloofness toward strangers makes them excellent watchdogs. Their hunting instinct remains strong, which can complicate life for the neighbor's cat, and Scotties are known to be cantankerous around other dogs. This bold and clever Scotsman enjoys brisk walks and upbeat play.
        """,
                """
        The Sealyham Terrier is brave and spirited, but not as spiky as smaller terriers. These sturdy, outgoing companions are recognized by their 'fall,' the mass of hair covering the forehead. Sealy fans enjoy their dog's sly sense of humor. Standing less than 11 inches at the shoulder and weighing about 24 pounds, Sealys are not big enough to be considered medium-sized dogs, but they stand among the strongest and most substantial of what we think of as small dogs. A typical Sealy is well-muscled, built low to ground, and moves easily with long, determined strides. The weatherproof coat is predominantly white, and a long, broad head is furnished with lavish facial hair. Despite their rep as the bruiser among short-legged terriers, Sealys are cute, funny, affectionate, outgoing, and trainable, if a bit stubborn. Their alertness and a big-dog bark make Sealys excellent watchdogs. Blessed with an adaptable nature, Sealys are amenable to city dwelling or country life.
        """,
                """
        The Segugio Italiano is a loyal and personable breed of great stamina, great heart, and impeccable intelligence.
        Fleet of foot and possessed of elegance, the Segugio Italiano is a tenacious hunter with superlative stamina. Its willing nature, intelligence, gentle and docile demeanor make it ideal as a companion, and well suited for people of all ages. It works diligently as an eager pet to conform to the needs of its owner.  Such character, coupled with its unwavering loyalty, has made it the darling of Italy.  Well-mannered and vigilant, the Segugio Italiano makes an excellent watch dog, watching both property and owner. You will find it neither aggressive nor shy, but courageous, with a cautious nature.  The Segugio Italiano is not a bold breed. It is adapt to any living situation provided it has enough mental and physical exercise. The dog comes in two coat types, the Pelo Raso (short-hair) and Pelo Forte (wire-hair). Within those coat types you will find the Segit to be either fawn or black & tan with very little white visible on the coat. Both coat varieties shed, but minimally.
        """,
        """
The Shetland Sheepdog, also known as the Sheltie, is an extremely intelligent, quick, and obedient herder from Scotland's remote and rugged Shetland Islands. Shelties bear a strong family resemblance to their bigger cousin, the Collie. The Shetland Sheepdog is a small, active, and agile herding dog standing between 13 and 16 inches at the shoulder. The long coat is harsh and straight, with a dense undercoat, and comes in black, blue merle, and sable, with white markings. The coat, along with a long, wedge-shaped head; small, three-quarter erect ears; and deep-chested, level-backed torso, give Shelties the look of a rough-coated Collie in miniature. Bright and eager Shelties are easy trainers and world-class competitors in obedience, agility, and herding trials. They are sensitive and affectionate family dogs, highly in tune with the mood of the household. They like to bark and tend to be reserved toward strangers'¿two qualifications of an excellent watchdog.
"""
    ]
    
    init() {
        dogsArray = [
        Dogs(image: "1", name: "Affenpinscher", character: "confident / famously funny / fearless", height: "9-11.5", with: "7-10", lifeExpectancy: "12-15"),
        Dogs(image: "2", name: "Afghan Hound", character: "independent / sweet", height: "25-27", with: "50-60", lifeExpectancy: "12-18"),
        Dogs(image: "3", name: "Airedale Terrier", character: "friendly / courageous / clever", height: "23", with: "50-70", lifeExpectancy: "11-14"),
        Dogs(image: "4", name: "Akita", character: "dignified / courageous / profoundly loyal", height: "24-26", with: "70-100", lifeExpectancy: "10-14"),
        Dogs(image: "5", name: "Alaskan Klee Kai", character: "loyal / intelligent / vigilant", height: "12-17", with: "45-65", lifeExpectancy: "13-16"),
        Dogs(image: "6", name: "Alaskan Malamute", character: "loyal / playful / affectionate", height: "23-26", with: "75-85", lifeExpectancy: "10-14"),
        Dogs(image: "7", name: "American Bulldog", character: "loyal / self-confident", height: "22-25", with: "75-100", lifeExpectancy: "10-12"),
        Dogs(image: "8", name: "American English Coonhound", character: "sociable / sweet / mellow", height: "24-26", with: "45-65", lifeExpectancy: "11-12"),
        Dogs(image: "9", name: "American Eskimo Dog", character: "Loyal / Smart / Versatile", height: "12-15", with: "10-20", lifeExpectancy: "13-15"),
        Dogs(image: "10", name: "American Foxhound", character: "independent / easy-going / sweet-tempered", height: "22-25", with: "65-70", lifeExpectancy: "11-13"),
        Dogs(image: "11", name: "American Hairless Terrier", character: "alert / curious / energetic", height: "12-16", with: "12-28", lifeExpectancy: "14-16"),
        Dogs(image: "12", name: "American Leopard Hound", character: "intelligent / sociable / energetic", height: "22 - 27", with: "45-75", lifeExpectancy: "12-15"),
        Dogs(image: "13", name: "Field Spaniel", character: "sweet / fun-loving / sensitive", height: "17-18", with: "35-50", lifeExpectancy: "12-13"),
        Dogs(image: "14", name: "Finnish Lapphund", character: "alert / friendly / agile", height: "16-19", with: "33-53", lifeExpectancy: "12-15"),
        Dogs(image: "15", name: "Finnish Spitz", character: "good-natured / friendly / lively", height: "15.6-18", with: "20-28", lifeExpectancy: "13-15"),
        Dogs(image: "16", name: "Flat-Coated Retriever", character: "cheerful / optimistic / good-humored", height: "22-23.5", with: "60-70", lifeExpectancy: "8-10"),
        Dogs(image: "17", name: "French Bulldog", character: "playful / smart / adaptable", height: "11-13", with: "28", lifeExpectancy: "10-12"),
        Dogs(image: "18", name: "French Spaniel", character: "intelligent / sociable / gentle", height: "21.5-24", with: "50-60", lifeExpectancy: "10-12"),
        Dogs(image: "19", name: "Old English Sheepdog", character: "smart / gentle / adaptable", height: "21-22", with: "60-100", lifeExpectancy: "10-12"),
        Dogs(image: "20", name: "Otterhound", character: "even-tempered / amiable / boisterous", height: "24-27", with: "80-115", lifeExpectancy: "10-13"),
        Dogs(image: "21", name: "Saint Bernard", character: "playful / charming / inquisitive", height: "26-28 ", with: "120-180", lifeExpectancy: "8-10"),
        Dogs(image: "22", name: "Saluki", character: "dignified / gentle / independent-minded", height: "23-28", with: "40-65", lifeExpectancy: "10-17"),
        Dogs(image: "23", name: "Samoyed", character: "friendly / gentle / adaptable", height: "19-21", with: "35-40", lifeExpectancy: "12-14"),
        Dogs(image: "24", name: "Schapendoes", character: "friendly / watchful / lively", height: "16-20", with: "26-55", lifeExpectancy: "12-15"),
        Dogs(image: "25", name: "Schipperke", character: "alert / curious / confident", height: "10-12", with: "10-16", lifeExpectancy: "12-16"),
        Dogs(image: "26", name: "Scottish Deerhound", character: "dignified / gentle / polite", height: "30-32", with: "85-110", lifeExpectancy: "8-11"),
        Dogs(image: "27", name: "Scottish Terrier", character: "independent / confident / spirited", height: "10", with: "19-22 ", lifeExpectancy: "12"),
        Dogs(image: "28", name: "Sealyham Terrier", character: "alert / outgoing / sense of humor", height: "10.5", with: "23-24", lifeExpectancy: "12-14"),
        Dogs(image: "29", name: "Segugio Italiano", character: "intelligent / friendly / eager to please", height: "19 - 24", with: "39-62", lifeExpectancy: "11-13"),
        Dogs(image: "30", name: "Shetland Sheepdog", character: "playful / energetic / bright", height: "13-16", with: "15-25", lifeExpectancy: "12-14")
        ]
    }
    
}