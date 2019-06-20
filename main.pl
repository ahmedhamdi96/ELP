%determiners
det(det(the)) --> [the].
det(det(a)) --> [a].
det(det(some)) --> [some].
det(det(every)) --> [every].
det(det(many)) --> [many].
det(det(an)) --> [an].
det(det(this)) --> [this].
det(det(that)) --> [that].
det(det(these)) --> [these].
det(det(those)) --> [those].
det(det(my)) --> [my].
det(det(our)) --> [our].
det(det(your)) --> [your].
det(det(his)) --> [his].
det(det(their)) --> [their].
det(det(each)) --> [each].
det(det(any)) --> [any].
det(det(more)) --> [more].
det(det(few)) --> [few].
det(det(much)) --> [much].

%nouns
noun(noun(boy)) --> [boy].
noun(noun(box)) --> [box].
noun(noun(man)) --> [man].
noun(noun(room)) --> [room].
noun(noun(school)) --> [school].
noun(noun(woman)) --> [woman].
noun(noun(envelope)) --> [envelope].
noun(noun(shed)) --> [shed].
noun(noun(building)) --> [building].
noun(noun(tree)) --> [tree].
noun(noun(girl)) --> [girl].
noun(noun(students)) --> [students].
noun(noun(professors)) --> [professors].
noun(noun(lecturers)) --> [lecturers].
noun(noun(scientists)) --> [scientists].
noun(noun(researchers)) --> [researchers].
noun(noun(person)) --> [person].
noun(noun(people)) --> [people].
noun(noun(lady)) --> [lady].
noun(noun(apartment)) --> [apartment].

%verbs
verb(verb(pushed)) --> [pushed].
verb(verb(worked)) --> [worked].
verb(verb(stored)) --> [stored].
verb(verb(gave)) --> [gave].
verb(verb(climbed)) --> [climbed].
verb(verb(watched)) --> [watched].
verb(verb(admired)) --> [admired].
verb(verb(appreciated)) --> [appreciated].
verb(verb(saw)) --> [saw].
verb(verb(appreciated)) --> [appreciated].
verb(verb(ran)) --> [ran].
verb(verb(walked)) --> [walked].
verb(verb(studied)) --> [studied].
verb(verb(teached)) --> [teached].
verb(verb(jumped)) --> [jumped].
verb(verb(advised)) --> [advised].
verb(verb(loved)) --> [loved].
verb(verb(warned)) --> [warned].
verb(verb(missed)) --> [missed].
verb(verb(hated)) --> [hated].

%adjectives
adj_1(adj_1(young)) --> [young].
adj_1(adj_1(old)) --> [old].
adj_1(adj_1(big)) --> [big].
adj_1(adj_1(large)) --> [large].
adj_1(adj_1(empty)) --> [empty].
adj_1(adj_1(poor)) --> [poor].
adj_1(adj_1(white)) --> [white].
adj_1(adj_1(brilliant)) --> [brilliant].
adj_1(adj_1(talented)) --> [talented].
adj_1(adj_1(bright)) --> [bright].
adj_1(adj_1(smart)) --> [smart].
adj_1(adj_1(funny)) --> [funny].
adj_1(adj_1(pretty)) --> [pretty].
adj_1(adj_1(beautiful)) --> [beautiful].
adj_1(adj_1(witty)) --> [witty].
adj_1(adj_1(dedicated)) --> [dedicated].
adj_1(adj_1(passionate)) --> [passionate].
adj_1(adj_1(loyal)) --> [loyal].
adj_1(adj_1(faithful)) --> [faithful].
adj_1(adj_1(devoted)) --> [devoted].

adj(adj(ADJ_1, ADJ)) --> adj_1(ADJ_1), adj(ADJ).
adj(adj(ADJ_1)) --> adj_1(ADJ_1).
   
%adverbs
adv_1(adv_1(quickly)) --> [quickly].
adv_1(adv_1(secretly)) --> [secretly].
adv_1(adv_1(easily)) --> [easily].
adv_1(adv_1(happily)) --> [happily].
adv_1(adv_1(loudly)) --> [loudly].
adv_1(adv_1(quietly)) --> [quietly].
adv_1(adv_1(sadly)) --> [sadly].
adv_1(adv_1(silently)) --> [silently].
adv_1(adv_1(slowly)) --> [slowly].
adv_1(adv_1(reluctantly)) --> [reluctantly].

adv(adv(ADV_1, ADV)) --> adv_1(ADV_1), adv(ADV).
adv(adv(ADV_1)) --> adv_1(ADV_1).

%prepositions
prepos(prepos(after)) --> [after].
prepos(prepos(for)) --> [for].
prepos(prepos(in)) --> [in].
prepos(prepos(behind)) --> [behind].
prepos(prepos(aboard)) --> [aboard].
prepos(prepos(about)) --> [about].
prepos(prepos(above)) --> [above].
prepos(prepos(across)) --> [across].
prepos(prepos(against)) --> [against].
prepos(prepos(among)) --> [among].

%pronouns
pron(pron(who)) --> [who].

%conjunctions
conj(conj(and)) --> [and].
conj(conj(while)) --> [while].

%noun phrases
noun_phrase_1(noun_phrase_1(ADJ, NOUN, PRON_PHRASE)) --> adj(ADJ), noun(NOUN), pron_phrase(PRON_PHRASE).
noun_phrase_1(noun_phrase_1(ADJ, NOUN)) --> adj(ADJ), noun(NOUN).
noun_phrase_1(noun_phrase_1(DET, NOUN, PRON_PHRASE)) --> det(DET), noun(NOUN), pron_phrase(PRON_PHRASE).
noun_phrase_1(noun_phrase_1(DET, NOUN)) --> det(DET), noun(NOUN).
noun_phrase_1(noun_phrase_1(DET, ADJ, NOUN, PRON_PHRASE)) --> det(DET), adj(ADJ), noun(NOUN), pron_phrase(PRON_PHRASE).
noun_phrase_1(noun_phrase_1(DET, ADJ, NOUN)) --> det(DET), adj(ADJ), noun(NOUN).
noun_phrase_1(noun_phrase_1(NOUN, PRON_PHRASE)) --> noun(NOUN), pron_phrase(PRON_PHRASE).
noun_phrase_1(noun_phrase_1(NOUN)) --> noun(NOUN).

noun_phrase_2(noun_phrase_2(NOUN_PHRASE_1, CONJ, NOUN_PHRASE_2)) --> noun_phrase_1(NOUN_PHRASE_1), conj(CONJ), noun_phrase_2(NOUN_PHRASE_2).
noun_phrase_2(noun_phrase_2(NOUN_PHRASE_1)) --> noun_phrase_1(NOUN_PHRASE_1).

noun_phrase(noun_phrase(NOUN_PHRASE_2, NOUN_PHRASE)) --> noun_phrase_2(NOUN_PHRASE_2), noun_phrase(NOUN_PHRASE).
noun_phrase(noun_phrase(NOUN_PHRASE_2)) --> noun_phrase_2(NOUN_PHRASE_2).

%verb phrases
verb_phrase_1(verb_phrase_1(ADV, VERB)) --> adv(ADV), verb(VERB).
verb_phrase_1(verb_phrase_1(VERB, ADV)) --> verb(VERB), adv(ADV).
verb_phrase_1(verb_phrase_1(VERB)) --> verb(VERB).

verb_phrase(verb_phrase(VERB_PHRASE_1, CONJ, VERB_PHRASE)) --> verb_phrase_1(VERB_PHRASE_1), conj(CONJ), verb_phrase(VERB_PHRASE).
verb_phrase(verb_phrase(VERB_PHRASE_1)) --> verb_phrase_1(VERB_PHRASE_1).

%preposition phrases
prepos_phrase(prepos_phrase(PREPOS, NOUN_PHRASE, PREPOS_PHRASE)) --> prepos(PREPOS), noun_phrase(NOUN_PHRASE), prepos_phrase(PREPOS_PHRASE).
prepos_phrase(prepos_phrase(PREPOS, NOUN_PHRASE)) --> prepos(PREPOS), noun_phrase(NOUN_PHRASE).

%pronoun phrases
pron_phrase(pron_phrase(PRON, VERB_PHRASE, PREPOS_PHRASE)) --> pron(PRON), verb_phrase(VERB_PHRASE), prepos_phrase(PREPOS_PHRASE).
pron_phrase(pron_phrase(PRON, VERB_PHRASE, NOUN_PHRASE, PREPOS_PHRASE)) --> pron(PRON), verb_phrase(VERB_PHRASE), noun_phrase(NOUN_PHRASE), prepos_phrase(PREPOS_PHRASE).

pron_phrase(pron_phrase(PRON, VERB_PHRASE)) --> pron(PRON), verb_phrase(VERB_PHRASE).
pron_phrase(pron_phrase(PRON, VERB_PHRASE, NOUN_PHRASE)) --> pron(PRON), verb_phrase(VERB_PHRASE), noun_phrase(NOUN_PHRASE).

%caluses
claus1(claus1(NOUN_PHRASE, VERB_PHRASE)) --> noun_phrase(NOUN_PHRASE), verb_phrase(VERB_PHRASE).
claus1(claus1(NOUN_PHRASE, VERB_PHRASE, PREPOS_PHRASE)) --> noun_phrase(NOUN_PHRASE), verb_phrase(VERB_PHRASE), prepos_phrase(PREPOS_PHRASE).
claus1(claus1(NOUN_PHRASE, PREPOS_PHRASE, VERB_PHRASE)) --> noun_phrase(NOUN_PHRASE), prepos_phrase(PREPOS_PHRASE), verb_phrase(VERB_PHRASE).
claus1(claus1(NOUN_PHRASE1, VERB_PHRASE, NOUN_PHRASE2, PREPOS_PHRASE)) --> noun_phrase(NOUN_PHRASE1), verb_phrase(VERB_PHRASE), noun_phrase(NOUN_PHRASE2), prepos_phrase(PREPOS_PHRASE).
claus1(claus1(NOUN_PHRASE1, VERB_PHRASE, NOUN_PHRASE2)) --> noun_phrase(NOUN_PHRASE1), verb_phrase(VERB_PHRASE), noun_phrase(NOUN_PHRASE2).

claus2(claus2(VERB_PHRASE)) --> verb_phrase(VERB_PHRASE).
claus2(claus2(VERB_PHRASE, NOUN_PHRASE, PREPOS_PHRASE)) --> verb_phrase(VERB_PHRASE), noun_phrase(NOUN_PHRASE), prepos_phrase(PREPOS_PHRASE).
claus2(claus2(VERB_PHRASE, NOUN_PHRASE)) --> verb_phrase(VERB_PHRASE), noun_phrase(NOUN_PHRASE).

%sentence
s(s(CLAUS1)) --> claus1(CLAUS1).
s(s(CLAUS1, CONJ, S)) --> claus1(CLAUS1), conj(CONJ), s(S).
s(s(CLAUS1, CONJ, CLAUS2)) --> claus1(CLAUS1), conj(CONJ), claus2(CLAUS2).