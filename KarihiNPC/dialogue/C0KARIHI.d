BEGIN C0KARIHI

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0KARIHI KARIHI-BEGIN
~Why, the nerve of that podgy lout! Throw me out into the wretched cold? ME? I've half a mind to turn this ramshackle lodge into a pile of ash!~ [C0BLANK]
END
++ ~Umm... excuse me?~ + KARIHI-BEGIN-1
++ ~Somebody's in a bad mood.~ + KARIHI-BEGIN-1
++ ~I cannot stand by a allow you to do such a deed.~ + KARIHI-BEGIN-2
++ ~That'd be fun to watch. Do it!~ + KARIHI-BEGIN-1

CHAIN C0KARIHI KARIHI-BEGIN-1
~Oh. You! Go inside right now and drag that fat oaf behind the counter out here! Slap him a few times if he resists! If I am to suffer in this damnable weather, I expect him to go through the same amount of torment!~
EXTERN C0KARIHI KARIHI-BEGIN-3

CHAIN C0KARIHI KARIHI-BEGIN-2
~Well, aren't you a little too good and noble for this sad little town? Bah, forget it. The stench of the fish would be overwhelming were they to catch fire as well.~
EXTERN C0KARIHI KARIHI-BEGIN-3

CHAIN C0KARIHI KARIHI-BEGIN-3
~Brr... it must have been insanity that led me to travel to this ridiculous living hell they call the North. My kind are not meant to endure the bite of the freezing wind and sting of snow beneath my feet. These humans are truly dense to make their home here.~
END
+ ~OR(2)
CheckStatGT(LastTalkedToBy,12,INT)
CheckStatGT(LastTalkedToBy,12,WIS)~ + ~'Your kind'? You mean the genasi?~ + KARIHI-BEGIN-4
+ ~!CheckStatGT(LastTalkedToBy,12,INT)
!CheckStatGT(LastTalkedToBy,12,WIS)~ + ~Now that you mention it, what are you exactly?~ + KARIHI-BEGIN-5
++ ~Who are you anyway?~ + KARIHI-BEGIN-6

CHAIN C0KARIHI KARIHI-BEGIN-4
~Hmm, did the flaming hair and exotic brown skin give it away? You must think yourself remarkably clever. But yes, you are correct – and one of the few educated enough to know as much in this wasteland.~
EXTERN C0KARIHI KARIHI-BEGIN-6

CHAIN C0KARIHI KARIHI-BEGIN-5
~How rude! Is this the manner in which you expect a lady to introduce herself? Bah!~
EXTERN C0KARIHI KARIHI-BEGIN-6

CHAIN C0KARIHI KARIHI-BEGIN-6
~I am Ava'Kar—~
= ~—Karihi. You may know me by that name. Perhaps it is a challenge for your tongue to pronounce, but it is as good as I can give you.~
END
++ ~What are you doing in the North if you hate it so much, Karihi?~ + KARIHI-BEGIN-7
++ ~That is anything but a Northern name. Where do you hail from?~ + KARIHI-BEGIN-8
+ ~!Class(LastTalkedToBy,MAGE_ALL)~ + ~I see you are dressed in robes with staff in hand. Are you a mage of some sort?~ + KARIHI-BEGIN-9
+ ~Class(LastTalkedToBy,MAGE_ALL)~ + ~I see you are dressed in robes with staff in hand. Are you a fellow mage?~ + KARIHI-BEGIN-9

CHAIN C0KARIHI KARIHI-BEGIN-7
~Well, a worthy question at last. Indeed, were it my choice I would rather be anywhere but here. But alas, an unfortunate circumstance or two led me to this place in the end, and so I must make the best of things.~
EXTERN C0KARIHI KARIHI-BEGIN-10

CHAIN C0KARIHI KARIHI-BEGIN-8
~That knowledge will not be beneficial to you, I will not answer, and you had best not ask again—for the good of both of us. Suffice to say that if it were not for an unfortunate circumstance or two in my past, I would not be here at all.~
EXTERN C0KARIHI KARIHI-BEGIN-10

CHAIN C0KARIHI KARIHI-BEGIN-9
~Ha! I am more than a mere mage. Mages dabble in many facets of the art, but I seek to master a single element that triumphs over all others.~
EXTERN C0KARIHI KARIHI-BEGIN-11

CHAIN C0KARIHI KARIHI-BEGIN-10
~Now, regarding you... now that I've had a closer look at you, it seems you are made of a little more than these simple men that toil over nets and hooks. I shall tell you a little more of myself, then.~
EXTERN C0KARIHI KARIHI-BEGIN-11

CHAIN C0KARIHI KARIHI-BEGIN-11
~I am a pyromancer. A practitioner of the magic of the purest flame. With but a flick of my wrist, I may turn the burning wick of a candle into a mighty blaze. Perhaps it seems obvious from my heritage, but I have an affinity with the element.~
= ~Many believe studying a single element over all others is a wasted effort, leaving one vulnerable to those claiming to be more 'versatile'. My past experiences with such fools have proven them wrong every time.~
= ~If what you seek instead however are the cheap tricks of ensorcelling the mind or illusions made to frighten children, however, you may look elsewhere. I am more than a simple charlatan meant to entertain the ignorant masses – what I specialize in is the raw, unbridled power of fire, that which destroys and consumes all.~
END
++ ~If you are truly so skilled, then would you like to join me? I would have such a strong mage as an ally.~ + KARIHI-BEGIN-12
++ ~You are very confident. Some would even say arrogant.~ + KARIHI-BEGIN-13
++ ~Perhaps we may ally together one day. Unfortunately, I have no time for you right now. Farewell.~ EXIT

CHAIN C0KARIHI KARIHI-BEGIN-12
~Is that so? Well, I can hardly deny such a thing would be practical for the both of us. Better my magic see some real use rather than waste away with me in this town.~
EXTERN C0KARIHI KARIHI-BEGIN-14

CHAIN C0KARIHI KARIHI-BEGIN-13
~You are not the first to say such a thing. But my magic IS exceptional, despite what you may believe. You would be hard pressed to find another with skills such as mine, especially here in this cold region.~
= ~If you are not convinced, perhaps you would like a proper demonstration in a more practical setting? My magic is wasted in this frozen town. A short walk with a chance to show you my capabilities may help combat this ridiculous cold.~
END
++ ~I could use more allies. Join me.~ + KARIHI-BEGIN-14
++ ~Very well. Come with me and show me what you're capable of.~ + KARIHI-BEGIN-14
++ ~Not at the moment. Farewell.~ EXIT

CHAIN C0KARIHI KARIHI-BEGIN-14
~So be it, then. I shall accompany you, at least for as long as it pleases me.~
DO ~JoinParty()~ EXIT

CHAIN IF WEIGHT #-1 ~NumTimesTalkedToGT(0)~ THEN C0KARIHI KARIHI-JOIN
~Well, it's about time someone with a bit more backbone came forth. What do you want?~ [C0BLANK]
END
++ ~I would like you to join my party.~ + KARIHI-JOIN-1
++ ~Nothing right now.~ EXIT

CHAIN C0KARIHI KARIHI-JOIN-1
~Hmph. I suppose I could do with worse.~
DO ~JoinParty()~ EXIT

BEGIN C0KARIHP

CHAIN IF WEIGHT #-1 ~HappinessLT(Myself,-299)~ THEN C0KARIHP KARIHI-LEAVES-LOWREP
~What a ridiculous farce this journey has been. You'll not see me again.~ [C0BLANK]
DO ~EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("KickedOut","LOCALS",0)~ THEN C0KARIHP KARIHI-KICKEDOUT
~You are setting me aside? Think carefully before you continue talking.~ [C0BLANK]
END
++ ~You're right, letting you go would be a mistake.~ DO ~JoinParty()~ EXIT
+ ~!AreaCheck("AR1006")
!AreaCheck("AR2114")~ + ~Just wait here for now, Karihi.~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~AreaCheck("AR1006")~ + ~Just wait here for now, Karihi.~ DO ~MoveToPoint([703.428]) SmallWait(1) Face(NE) SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~AreaCheck("AR2114")~ + ~Just wait here for now, Karihi.~ DO ~MoveToPoint([262.234]) SmallWait(1) Face(NW) SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~!AreaCheck("AR1200")
!AreaCheck("AR1201")
!AreaCheck("AR1006")
!Global("AR2000_visited","GLOBAL",1)
!Global("AR2100_visited","GLOBAL",1)~ + ~I'll meet you at the Winter's Cradle Tavern.~ DO ~EscapeAreaMove("AR1006",703,428,NE) SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~OR(2)
AreaCheck("AR1200")
AreaCheck("AR1201")
!Global("AR2000_visited","GLOBAL",1)
!Global("AR2100_visited","GLOBAL",1)~ + ~Go back to Easthaven for now. I'll meet you at the Winter's Cradle Tavern.~ DO ~EscapeAreaMove("AR1006",703,428,NE) SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~!Global("Master_Quest","GLOBAL",1)
!Global("Master_Quest","GLOBAL",2)
!Global("Master_Quest","GLOBAL",3)
!Global("Master_Quest","GLOBAL",4)
!Global("Master_Quest","GLOBAL",5)
!Global("Master_Quest","GLOBAL",6)
!Global("Master_Quest","GLOBAL",7)
OR(3)
!GlobalGT("Hjollder_Quest","GLOBAL",2)
Global("HOW_COMPLETED","GLOBAL",1)
Global("Exp_Pause","GLOBAL",1)
OR(16)
AreaCheck("AR2100")
AreaCheck("AR2101")
AreaCheck("AR2102")
AreaCheck("AR2103")
AreaCheck("AR2104")
AreaCheck("AR2105")
AreaCheck("AR2106")
AreaCheck("AR2107")
AreaCheck("AR2108")
AreaCheck("AR2109")
AreaCheck("AR2110")
AreaCheck("AR2111")
AreaCheck("AR2112")
AreaCheck("AR2113")
AreaCheck("AR2115")
AreaCheck("AR2116")
Global("AR2100_visited","GLOBAL",1)~ + ~I'll meet you at the Evening Shade.~ DO ~EscapeAreaMove("AR2114",262,234,NW) SetGlobal("KickedOut","LOCALS",1)~ EXIT
+ ~!Global("Master_Quest","GLOBAL",1)
!Global("Master_Quest","GLOBAL",2)
!Global("Master_Quest","GLOBAL",3)
!Global("Master_Quest","GLOBAL",4)
!Global("Master_Quest","GLOBAL",5)
!Global("Master_Quest","GLOBAL",6)
!Global("Master_Quest","GLOBAL",7)
OR(3)
!GlobalGT("Hjollder_Quest","GLOBAL",2)
Global("HOW_COMPLETED","GLOBAL",1)
Global("Exp_Pause","GLOBAL",1)
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2103")
!AreaCheck("AR2104")
!AreaCheck("AR2105")
!AreaCheck("AR2106")
!AreaCheck("AR2107")
!AreaCheck("AR2108")
!AreaCheck("AR2109")
!AreaCheck("AR2110")
!AreaCheck("AR2111")
!AreaCheck("AR2112")
!AreaCheck("AR2113")
!AreaCheck("AR2114")
!AreaCheck("AR2115")
!AreaCheck("AR2116")
Global("AR2100_visited","GLOBAL",1)~ + ~Go back to Kuldahar for now. I'll meet you at the Evening Shade.~ DO ~EscapeAreaMove("AR2114",262,234,NW) SetGlobal("KickedOut","LOCALS",1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("KickedOut","LOCALS",1)~ THEN C0KARIHP KARIHI-REJOIN
~Well, it seems that you were sensible enough to return after all. Shall we continue our journey together once more?~ [C0BLANK]
END
++ ~Yes, join me.~ DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
++ ~No, not yet.~ EXIT
++ ~I'll be back for you later.~ EXIT

