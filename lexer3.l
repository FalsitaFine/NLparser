/*lexer file*/

%{
#include <stdio.h>

%}

letter   [A-Za-z]
digit    [0-9]

noun_prototype_0 ("we")|("rabbit")|("dog")|("planetarium")
noun_prototype_1 ("entity")|("abstraction")|("thing")|("object")|("whole")|("congener")|("organism")|("benthos")|("dwarf")|("heterotroph")|("parent")|("life")|("biont")|("cell")|("person")|("animal")
noun_prototype_2 ("plant")|("native")|("substance")|("substance")|("matter")|("food")|("nutrient")|("artifact")|("article")|("cognition")|("motivation")|("attribute")|("state")|("feeling")|("location")|("shape")
noun_prototype_3 ("time")|("space")|("event")|("process")|("act")|("group")|("relation")|("possession")|("communication")|("measure")|("phenomenon")|("thing")|("kindness")|("abdominoplasty")|("abort")|("accomplishment")
noun_prototype_4 ("agon")|("alienation")|("application")|("beachhead")|("cakewalk")|("feat")|("masterpiece")|("masterstroke")|("credit")|("action")|("course")|("interaction")|("interplay")|("contact")|("brush")|("fetch")
noun_prototype_5 ("placement")|("interchange")|("reciprocity")|("dealings")|("relation")|("playing")|("play")|("boondoggle")|("bowling")|("acquiring")|("causing")|("delivery")|("departure")|("discovery")|("disposal")|("hit")
noun_prototype_6 ("implementation")|("egress")|("equalization")|("exhumation")|("mitzvah")|("propulsion")|("rally")|("recovery")|("stunt")|("touch")|("performance")|("overachievement")|("underachievement")|("record")|("going")|("arrival")
noun_prototype_7 ("arrival")|("attainment")|("advent")|("entrance")|("incursion")|("intrusion")|("irruption")|("entree")|("entail")|("registration")|("appearance")|("apparition")|("emergence")|("reappearance")|("comeback")|("return")
noun_prototype_8 ("repatriation")|("penetration")|("interpenetration")|("anchorage")|("docking")|("landing")|("landing")|("farewell")|("valediction")|("disappearance")|("vanishing")|("withdrawal")|("effacement")|("retreat")|("retirement")|("evacuation")
noun_prototype_9 ("decampment")|("desertion")|("abscondment")|("deviationism")|("emigration")|("immigration")|("aliyah")|("pullback")|("retreat")|("standdown")|("disengagement")|("receding")|("sailing")|("debarkation")|("boarding")|("exit")
noun_prototype_10 ("elopement")|("escape")|("evasion")|("slip")|("maneuver")|("clinch")|("dodge")|("break")|("getaway")|("exodus")|("Hegira")|("skedaddle")|("surfacing")|("dispatch")|("reshipment")|("consummation")
noun_prototype_11 ("consummation")|("realization")|("orgasm")|("fulfillment")|("attainment")|("record")|("success")|("winning")|("blockbuster")|("sleeper")|("hit")|("ennoblement")|("conquest")|("coup")|("passing")|("credit")
noun_prototype_12 ("nonaccomplishment")|("failure")|("failure")|("failing")|("naught")|("cut")|("default")|("loss")|("capitulation")|("frustration")|("overturn")|("backsliding")|("recidivism")|("disappointment")|("breach")|("copout")
noun_prototype_13 ("leaning")|("motivation")|("mistake")|("footfault")|("bobble")|("error")|("blot")|("confusion")|("incursion")|("miscalculation")|("backfire")|("rounding")|("distortion")|("slip")|("offside")|("oversight")
noun_prototype_14 ("omission")|("snafu")|("spectacle")|("ballup")|("bull")|("fumble")|("fluff")|("howler")|("clanger")|("trip")|("spill")|("pratfall")|("wipeout")|("acquisition")|("obtainment")|("catching")
noun_prototype_15 ("incurring")|("moneymaking")|("annexation")|("purchase")|("redemption")|("trading")|("straddle")|("buying")|("shopping")|("marketing")|("viatication")|("acceptance")|("succession")|("assumption")|("assumption")|("position")
noun_prototype {noun_prototype_0}|{noun_prototype_1}|{noun_prototype_2}|{noun_prototype_3}|{noun_prototype_4}|{noun_prototype_5}|{noun_prototype_6}|{noun_prototype_7}|{noun_prototype_8}|{noun_prototype_9}|{noun_prototype_10}|{noun_prototype_11}|{noun_prototype_12}|{noun_prototype_13}|{noun_prototype_14}|{noun_prototype_15}


verb_prototype_0 ("am")|("are")|("is")|("jump")|("welcome")
verb_prototype_1 ("breathe")|("respire")|("respire")|("choke")|("hyperventilate")|("hyperventilate")|("aspirate")|("burp")|("hiccup")|("sigh")|("exhale")|("hold")|("exhale")|("sneeze")|("inhale")|("pant")
verb_prototype_2 ("cough")|("hack")|("expectorate")|("snort")|("wheeze")|("puff")|("blow")|("insufflate")|("yawn")|("sniff")|("blink")|("palpebrate")|("bat")|("wink")|("wink")|("squint")
verb_prototype_3 ("squint")|("wince")|("shed")|("desquamate")|("twitch")|("fibrillate")|("act")|("presume")|("vulgarize")|("optimize")|("quack")|("menace")|("make")|("swagger")|("freeze")|("wanton")
verb_prototype_4 ("romanticize")|("sentimentalise")|("bungle")|("play")|("act")|("stooge")|("shake")|("shiver")|("rest")|("sleep")|("bundle")|("snooze")|("nap")|("oversleep")|("hibernate")|("estivate")
verb_prototype_5 ("drowse")|("nod")|("nod")|("snore")|("doss")|("awaken")|("reawaken")|("affect")|("attack")|("ulcerate")|("wake")|("hypnotize")|("entrance")|("anesthetize")|("etherize")|("cocainize")
verb_prototype_6 ("chloroform")|("freeze")|("sedate")|("stimulate")|("cathect")|("faint")|("animate")|("refresh")|("freshen")|("tense")|("crick")|("relax")|("unbend")|("tense")|("relax")|("stretch")
verb_prototype_7 ("exsert")|("hyperextend")|("crane")|("invigorate")|("smile")|("dimple")|("grin")|("beam")|("smirk")|("fleer")|("bray")|("bellylaugh")|("roar")|("snicker")|("giggle")|("break")
verb_prototype_8 ("cramp")|("cramp")|("cackle")|("guffaw")|("chuckle")|("laugh")|("convulse")|("cachinnate")|("sneer")|("sneer")|("frown")|("glower")|("stare")|("look")|("scowl")|("shrug")
verb_prototype_9 ("clap")|("grimace")|("pout")|("blow")|("shower")|("foment")|("bathe")|("cleanse")|("wash")|("wash")|("scrub")|("soap")|("gargle")|("shave")|("epilate")|("razor")
verb_prototype_10 ("tonsure")|("bathe")|("douche")|("comb")|("slick")|("dress")|("bob")|("pompadour")|("marcel")|("wave")|("gauffer")|("perm")|("mousse")|("pomade")|("tease")|("groom")
verb_prototype_11 ("highlight")|("lipstick")|("rouge")|("condition")|("floss")|("shampoo")|("powder")|("talc")|("manicure")|("manicure")|("barber")|("pedicure")|("perfume")|("preen")|("prank")|("overdress")
verb_prototype_12 ("dress")|("enrobe")|("prim")|("bedizen")|("prink")|("dress")|("reduce")|("gain")|("round")|("dress")|("hat")|("bonnet")|("wear")|("wear")|("cover")|("jacket")
verb_prototype_13 ("frock")|("shirt")|("habit")|("vesture")|("overdress")|("underdress")|("corset")|("shoe")|("undress")|("wear")|("scarf")|("coat")|("costume")|("dandify")|("vest")|("vest")
verb_prototype_14 ("wear")|("inseminate")|("stratify")|("quicken")|("impregnate")|("impregnate")|("inoculate")|("pollinate")|("conceive")|("nick")|("beget")|("ejaculate")|("reproduce")|("propagate")|("vegetate")|("propagate")
verb_prototype_15 ("inoculate")|("fructify")|("breed")|("pullulate")|("spawn")|("spat")|("labor")|("twin")|("drop")|("foal")|("cub")|("kitten")|("lamb")|("litter")|("whelp")|("farrow")
verb_prototype {verb_prototype_0}|{verb_prototype_1}|{verb_prototype_2}|{verb_prototype_3}|{verb_prototype_4}|{verb_prototype_5}|{verb_prototype_6}|{verb_prototype_7}|{verb_prototype_8}|{verb_prototype_9}|{verb_prototype_10}|{verb_prototype_11}|{verb_prototype_12}|{verb_prototype_13}|{verb_prototype_14}|{verb_prototype_15}

adj_0 ("a")|("the")|("an")|("happy")
adj_1 ("able")|("unable")|("abaxial")|("adaxial")|("acroscopic")|("basiscopic")|("abducent")|("adducent")|("nascent")|("emergent")|("dissilient")|("parturient")|("dying")|("moribund")|("last")|("abridged")
adj_2 ("cut")|("potted")|("unabridged")|("absolute")|("direct")|("implicit")|("infinite")|("living")|("relative")|("relational")|("absorbent")|("absorbefacient")|("assimilating")|("hygroscopic")|("receptive")|("spongy")
adj_3 ("thirsty")|("nonabsorbent")|("repellent")|("adsorbent")|("chemisorptive")|("nonadsorbent")|("absorbable")|("adsorbable")|("abstemious")|("abstinent")|("ascetic")|("gluttonous")|("crapulous")|("crapulent")|("edacious")|("greedy")
adj_4 ("hoggish")|("overgreedy")|("abstract")|("conceptional")|("conceptual")|("ideal")|("ideological")|("concrete")|("objective")|("real")|("abundant")|("abounding")|("ample")|("copious")|("easy")|("exuberant")
adj_5 ("thick")|("long")|("overabundant")|("plentiful")|("rampant")|("rank")|("superabundant")|("teeming")|("torrential")|("verdant")|("scarce")|("rare")|("tight")|("abused")|("battered")|("unabused")
adj_6 ("acceptable")|("bankable")|("unexceptionable")|("unobjectionable")|("unacceptable")|("exceptionable")|("accessible")|("approachable")|("handy")|("inaccessible")|("pathless")|("unapproachable")|("accommodating")|("complaisant")|("unaccommodating")|("disobliging")
adj_7 ("accurate")|("close")|("surgical")|("straight")|("true")|("veracious")|("inaccurate")|("away")|("faulty")|("unfaithful")|("wide")|("accustomed")|("unaccustomed")|("new")|("unused")|("acidic")
adj_8 ("acid")|("alkaline")|("alkalescent")|("basic")|("saltlike")|("amphoteric")|("acidophilic")|("acknowledged")|("accepted")|("assumptive")|("declarable")|("given")|("unacknowledged")|("unappreciated")|("unavowed")|("unconfessed")
adj_9 ("unrecognized")|("acquisitive")|("accumulative")|("avaricious")|("possessive")|("plundering")|("predaceous")|("rapacious")|("sordid")|("unacquisitive")|("acropetal")|("basipetal")|("active")|("acrobatic")|("agile")|("hot")
adj_10 ("hyperactive")|("sporty")|("inactive")|("abeyant")|("hypoactive")|("inert")|("sedentary")|("active")|("activated")|("inactive")|("off")|("retired")|("active")|("brisk")|("bustling")|("busy")
adj_11 ("open")|("springy")|("inactive")|("dark")|("dead")|("dull")|("idle")|("strikebound")|("active")|("progressive")|("inactive")|("flat")|("indolent")|("latent")|("quiescent")|("active")
adj_12 ("activist")|("proactive")|("passive")|("resistless")|("active")|("eruptive")|("dormant")|("quiescent")|("extinct")|("dead")|("active")|("alive")|("active")|("stative")|("active")|("passive")
adj_13 ("active")|("activated")|("counteractive")|("inactive")|("quiescent")|("active")|("quiet")|("actual")|("effective")|("potential")|("latent")|("acute")|("subacute")|("chronic")|("degenerative")|("virulent")
adj_14 ("deadly")|("avirulent")|("adaptive")|("accommodative")|("adaptational")|("adjustive")|("maladaptive")|("dysfunctional")|("maladjustive")|("addicted")|("alcoholic")|("dependent")|("unaddicted")|("clean")|("addictive")|("nonaddictive")
adj_15 ("additive")|("accumulative")|("addable")|("extra")|("complemental")|("incremental")|("intercalary")|("summational")|("supplementary")|("subtractive")|("ablative")|("reductive")|("addressed")|("unaddressed")|("adequate")|("competent")
adj {adj_0}|{adj_1}|{adj_2}|{adj_3}|{adj_4}|{adj_5}|{adj_6}|{adj_7}|{adj_8}|{adj_9}|{adj_10}|{adj_11}|{adj_12}|{adj_13}|{adj_14}|{adj_15}

adv_0 ("happily")|("highly")
adv_1 ("AD")|("CE")|("BC")|("BCE")|("horseback")|("barely")|("just")|("hardly")|("anisotropically")|("annoyingly")|("basically")|("blessedly")|("boiling")|("enviably")|("pointedly")|("negatively")
adv_2 ("negatively")|("kindly")|("unkindly")|("merely")|("simply")|("plainly")|("anciently")|("arguably")|("unabashedly")|("automatically")|("alarmingly")|("vastly")|("grossly")|("largely")|("significantly")|("insignificantly")
adv_3 ("appreciably")|("ultrasonically")|("smartly")|("approximately")|("absolutely")|("partially")|("half")|("wholly")|("entirely")|("absolutely")|("clean")|("plumb")|("perfectly")|("pat")|("please")|("imperfectly")
adv_4 ("amiss")|("fully")|("only")|("only")|("only")|("well")|("ill")|("ill")|("isotropically")|("well")|("badly")|("well")|("well")|("well")|("ill")|("well")
adv_5 ("well")|("well")|("badly")|("well")|("well")|("badly")|("well")|("well")|("well")|("satisfactorily")|("okay")|("unsatisfactorily")|("prosperously")|("badly")|("badly")|("badly")
adv_6 ("badly")|("badly")|("worse")|("worst")|("even")|("even")|("even")|("even")|("rather")|("quite")|("quite")|("quite")|("quite")|("always")|("always")|("always")
adv_7 ("conjecturally")|("consecutively")|("constantly")|("constantly")|("coterminously")|("never")|("never")|("occasionally")|("sometime")|("sometimes")|("equally")|("much")|("palmately")|("paradoxically")|("parasitically")|("conformably")
adv_8 ("conventionally")|("unconventionally")|("pathogenically")|("pictorially")|("not")|("nothing")|("no")|("any")|("no")|("none")|("either")|("bloody")|("anywhere")|("nowhere")|("somewhere")|("everywhere")
adv_9 ("somehow")|("somehow")|("anyhow")|("anyhow")|("however")|("yet")|("only")|("however")|("however")|("however")|("lightly")|("besides")|("fugally")|("furthermore")|("farther")|("further")
adv_10 ("further")|("farthest")|("furthest")|("futilely")|("still")|("anymore")|("already")|("very")|("fabulously")|("mighty")|("fucking")|("much")|("henceforth")|("hereafter")|("hereafter")|("hereunder")
adv_11 ("just")|("instantaneously")|("mildly")|("anon")|("soon")|("ASAP")|("shortly")|("shortly")|("momentarily")|("soonest")|("spiritedly")|("sportively")|("stormily")|("frequently")|("oftener")|("anon")
adv_12 ("rarely")|("curiously")|("reasonably")|("unreasonably")|("slightly")|("movingly")|("extensively")|("intrinsically")|("decidedly")|("truly")|("indeed")|("indeed")|("forsooth")|("naturally")|("unnaturally")|("clearly")
adv_13 ("unclearly")|("obviously")|("apparently")|("again")|("withal")|("unexpectedly")|("specifically")|("generally")|("nonspecifically")|("fortunately")|("happily")|("sadly")|("unfortunately")|("therefore")|("ergo")|("hence")
adv_14 ("hence")|("thence")|("thence")|("therefor")|("vocationally")|("beyond")|("beyond")|("beyond")|("otherwise")|("additionally")|("extremely")|("madly")|("inordinately")|("excessively")|("besides")|("yet")
adv_15 ("ultimately")|("finally")|("presently")|("nowadays")|("now")|("now")|("now")|("now")|("now")|("aggressively")|("shrilly")|("steadily")|("happily")|("unhappily")|("no")|("firm")
adv {adv_0}|{adv_1}|{adv_2}|{adv_3}|{adv_4}|{adv_5}|{adv_6}|{adv_7}|{adv_8}|{adv_9}|{adv_10}|{adv_11}|{adv_12}|{adv_13}|{adv_14}|{adv_15}

prep ("to")|("on")|("at")|("in")

suffix_v ("s")|("ing")
suffix_n ("s")
prefix ("in")|("un")

verb_morph ({verb_prototype})({suffix_v})*
noun_morph {noun_prototype}({suffix_n})*

ws       [ \t]+
newline  "\n"
mk_lparen "("
mk_rparen ")"
mk_lbrace "{"
mk_rbrace "}"
mk_lsqbrace "["
mk_rsqbrace "]"
mk_comma  ","
mk_semicolon ";"

mk_dot  "."
error    .

%%

{ws}            ;   /* do nothing with whitespace */
{verb_prototype}		{yylval.str = strdup(yytext); return VERB;}
{noun_prototype}		{yylval.str = strdup(yytext); return NOUN;}
{verb_morph}		{yylval.str = strdup(yytext); printf("Verb %s is recognized as a morph\n",yylval.str); return VERB;}
{noun_morph}		{yylval.str = strdup(yytext); printf("Noun %s is recognized as a morph\n",yylval.str); return NOUN;}
{adj}		{yylval.str = strdup(yytext); return ADJ;}
{adv}		{yylval.str = strdup(yytext); return ADV;}
{prep}		{yylval.str = strdup(yytext); return PREP;}


{newline}       linenumber += 1;

%%

