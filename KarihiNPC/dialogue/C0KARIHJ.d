BEGIN C0KARIHJ
BEGIN C0KSERV

// SERVANT

CHAIN IF WEIGHT #-1 ~Global("C0KarihiEncounter","GLOBAL",0)~ THEN C0KSERV KARIHI-SERVANT
~*munch munch* Grgh... *swallow*~ [C0BLANK]
END
IF ~InParty("C0Karihi")
See("C0Karihi")~ EXTERN C0KSERV KARIHI-SERVANT-1
IF ~OR(2)
!InParty("C0Karihi")
!See("C0Karihi")~ EXTERN C0KSERV KARIHI-SERVANT-X

CHAIN C0KSERV KARIHI-SERVANT-X
~*gulp* What?! Who are you? I know nothing of anything that happens here! Leave me alone!~
EXIT

CHAIN C0KSERV KARIHI-SERVANT-1
~*gulp* What?! Who are y—gack!~
DO ~IncrementGlobal("C0KarihiEncounter","GLOBAL",1)~
== C0KARIHJ ~Roth...?~
== C0KSERV ~L... lady Ava'Kari?! Impossible! How did you find me?~
== C0KARIHJ ~Find you-?! The more appropriate question here is why you, slave, are here. Not only alive, but in the company of these wretched mercenaries!~
== C0KSERV ~To... to survive... after the fall of the great House Dilvaalhi, and those affiliated slaughtered to a man... there was no place left for me within the Old Empires! I had no choice but to flee, and follow the only power who could accept me, no matter how unsavory!~
== C0KARIHJ ~I see... to protect your own worthless hide, as always. You have been a cowardly and impertinent slave, Roth, who never deserved my father's mercy. Were it not for my sister...~
END
++ ~Who is this person, Karihi?~ EXTERN C0KARIHJ KARIHI-SERVANT-2
++ ~'Slave'?~ EXTERN C0KARIHJ KARIHI-SERVANT-2

CHAIN C0KARIHJ KARIHI-SERVANT-2
~This... pathetic creature was once the indentured servant of... my late family. His name is Roth Val'tharen, the third son of my father's brother... my uncle. In other words, he is my cousin, though I bear him no love for it.~
== C0KARIHJ ~My father and my uncle were powerful nobility of Unther, one of the Old Empires. Despite their shared blood—or perhaps, because of it—they were bitter rivals... enough that my father was willing to arrange for the assassination of my uncle and his entire family.~
== C0KARIHJ ~Roth was the only one of my uncle's scion who inherited the gift, and so was spared. He became a slave under my sister's command at the mere age of six.~
END
++ ~That's a cruel story. But then, why do you hold him in such contempt?~ + KARIHI-SERVANT-3
++ ~He doesn't look too far from you in age. Did you grow up together?~ + KARIHI-SERVANT-4
++ ~Unther? The Old Empires? That's where you're from?~ + KARIHI-SERVANT-5
++ ~You used to keep *slaves*?!~ + KARIHI-SERVANT-5

CHAIN C0KARIHJ KARIHI-SERVANT-3
~He is a sycophantic, opportunistic rogue. I recall the day my father brought me and Azra to the ruins of House Val'tharen... amidst all the bodies, this one boy... with his own father's corpse in the same room... did nothing but beg for his own life.~
== C0KSERV ~I... I served the house of Dilvaalhi with utmost loyalty, slaved away for you and your sister, kin of my father's murderer, for years... and yet... you still treat me with such contempt... *lady* Ava'Kari. Your sister was always the one with-~
== C0KARIHJ ~Save your words. Azra may have felt the slightest sympathy for you, enough to allow you more luxuries than any slave could, even to teach you magery... but I always knew your loyalty was only ever to yourself. She gave you far more than you ever deserved!~
== C0KSERV ~And... and what of you?! Was it not your folly that brought upon your house's downfall... your family's death?! Are you to claim you were worthy of her sacrifice?!~
== C0KARIHJ ~You... you *knew* of her sacrifice?~
== C0KSERV ~I-*ggrh*!~
== C0KARIHJ ~Answer me, Roth, or I will kill you slowly... what part did you play in the destruction of my house? My father's poisoning... the assassins who intercepted us as we escaped through the hidden passageway... it all pointed to a traitor in our midst. It was you, was it not?! ANSWER ME!~
== C0KSERV ~I-I only did... as I was... told! It was... *gnrk!* my life... at stake...!~
== C0KARIHJ ~I should have known... it was all your doing. A pitiful rat that was beneath notice... how foolish I was not to see it all along. You were there... you watched as my sister died to save me, and followed me to the North, seeking... what? Protection, sympathy, safety? You shall get none from me!~
== C0KSERV ~It was... not I who... *ngh!*... was to blame for the foes YOU made!~
== C0KARIHJ ~Perhaps. But it is too late to rescind the consequences. I can only offer the souls of my family some measure of satisfaction by killing you!~
== C0KSERV ~No! You... you have... no right! What would have happened to me–~
== C0KARIHJ ~–would have been a mercy compared to the death you shall receive at my hand. BURN, AND BECOME DUST!~
END
+ ~GlobalGT("C0KarihiKnowsFamilyStory","GLOBAL",0)~ + ~Karihi, no!~ EXTERN C0KARIHJ KARIHI-SERVANT-6A
+ ~!GlobalGT("C0KarihiKnowsFamilyStory","GLOBAL",0)~ + ~Karihi, no!~ EXTERN C0KARIHJ KARIHI-SERVANT-6B
++ ~(Do nothing.)~ EXTERN C0KSERV KARIHI-SERVANT-7

CHAIN C0KARIHJ KARIHI-SERVANT-4
~That would imply that I feel any form of familial attachment to this man. I do not. On the contrary, I feel nothing more than scorn for him.~
EXTERN C0KARIHJ KARIHI-SERVANT-3

CHAIN C0KARIHJ KARIHI-SERVANT-5
~It is irrelevant. You would likely never have known, if fate had not somehow brought this wretch before us. The very sight of him sickens me.~
EXTERN C0KARIHJ KARIHI-SERVANT-3

CHAIN C0KARIHJ KARIHI-SERVANT-6A
~"No"?~
== C0KARIHJ ~You would stop me, <PLAYER1>? I lost my family, my sister, and lived on, haunted by their memories, all because of this insect's cowardice...~
== C0KARIHJ ~Tell me, <PLAYER1>. If you are stopping my hand, then you owe me the explanation... what right does this one have to live?!~
END
+ ~CheckStatGT(Player1,15,CHR)~ + ~None at all. But doing this won't bring you peace.~ EXTERN C0KARIHJ KARIHI-SERVANT-8
+ ~CheckStatGT(Player1,15,WIS)~ + ~Because I know you blame yourself for your family's death, not him. You can't unburden yourself of guilt this way.~ EXTERN C0KARIHJ KARIHI-SERVANT-8
++ ~He's just a coward. Not even worth killing.~ EXTERN C0KARIHJ KARIHI-SERVANT-9
++ ~You're right. I shouldn't stop you.~ EXTERN C0KSERV KARIHI-SERVANT-7

CHAIN C0KARIHJ KARIHI-SERVANT-6B
~Do not interfere, <PLAYER1>. You know nothing of me, nor of how much I have lost. He deserves to die!~
EXTERN C0KSERV KARIHI-SERVANT-7

CHAIN C0KSERV KARIHI-SERVANT-7
~No... please, NOOOO!~
DO ~ClearAllActions()
ActionOverride("C0KARIHI",StartCutSceneMode())
ActionOverride("C0KARIHI",CutSceneId(Player1))
ActionOverride("C0KARIHI",Wait(1))
ActionOverride("C0KARIHI",ForceSpellRES("C0PY009","C0KSERV"))
ActionOverride("C0KARIHI",DisplayStringHead("C0KSERV",43481))
ActionOverride("C0KARIHI",Wait(1))
ActionOverride("C0KARIHI",Kill("C0KSERV"))
ActionOverride("C0KARIHI",Wait(4))
ActionOverride("C0KARIHI",EndCutSceneMode())
ActionOverride("C0KARIHI",StartDialogNoSet(Player1))~ EXIT

CHAIN C0KARIHJ KARIHI-SERVANT-8
~Tch...~
DO ~IncrementGlobal("C0KarihiEncounter","GLOBAL",1)~
== C0KARIHJ ~Count yourself lucky, Roth. You get to keep your life today... for what little it is worth. But you had best pray to Firelord that I never see you again.~
== C0KSERV ~*cough* *gngh!* Agh...~
== C0KSERV ~I-I will leave the North this instant...~
== C0KARIHJ ~Wait.~
== C0KSERV ~M–my lady?~
== C0KARIHJ ~Leave behind everything you took from my family. You will gain nothing more from House Dilvaalhi's ruin.~
== C0KSERV ~B—but... I have nothing else-~
== C0KARIHJ ~If you dare to try and hide so much as a coin, you will wish I had killed you quickly.~
== C0KSERV ~A–as you command... I... I thank you for your mercy. You will... not see me again.~
== C0KARIHJ ~Just get out of my sight.~
DO ~ActionOverride("C0KSERV",DropInventory())
ActionOverride("C0KSERV",EscapeArea())~ EXIT

CHAIN C0KARIHJ KARIHI-SERVANT-9
~The ghosts of my family disagree with you.~
EXTERN C0KSERV KARIHI-SERVANT-7

CHAIN IF WEIGHT #-1 ~Global("C0KarihiEncounter","GLOBAL",1)~ THEN C0KARIHJ KARIHI-SERVANT2
~Hmph.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiEncounter","GLOBAL",1)~
= ~And... it is over, like that. Quick, painful... and unsatisfying.~
END
++ ~That was brutal.~ + KARIHI-SERVANT2-1
++ ~You shouldn't have done it.~ + KARIHI-SERVANT2-1
++ ~What did you expect?~ + KARIHI-SERVANT2-1

CHAIN C0KARIHJ KARIHI-SERVANT2-1
~I should not have expected that to relieve me of my guilt. But I hoped that, at least I would feel some form of... hmm?~
= ~Strange... there is something on his body. Something powerful enough to have resisted my magic...?~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KarihiRobeBlackFlame","GLOBAL",1)~ THEN C0KARIHJ KARIHI-SERVANT-ROBE
~This robe belonged to my sister... Roth must have been there, then. He watched my sister be consumed with flames to defeat the assassins, then took away the robe... with her ashes still clinging onto the fabric.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiRobeBlackFlame","GLOBAL",1)~
== C0KARIHJ ~I never did have her talent... not in magic, nor in the politics of Unther. And that suited me just as well... I have never considered myself as anything more than a scholar.~
END
IF ~!Dead("C0KSERV")~ EXTERN C0KARIHJ KARIHI-SERVANT-ROBE-1
IF ~Dead("C0KSERV")~ EXTERN C0KARIHJ KARIHI-SERVANT-ROBE-2

CHAIN C0KARIHJ KARIHI-SERVANT-ROBE-1
~I would ask if you are satisfied that I spared that cowardly rat of a servant, but in truth, I don't think it matters.~
= ~You were right, <PLAYER1>. *sigh* You may gloat if you want. Killing Roth would not have soothed my pain. I doubt the momentary instant of satisfaction would have even lasted for long.~
= ~I truly am a vile person to have even considered it.~
END
++ ~No, you're not.~ EXTERN C0KARIHJ KARIHI-SERVANT-ROBE-3
++ ~To be honest, I didn't particularly care what you did to him.~ EXTERN C0KARIHJ KARIHI-SERVANT-ROBE-4

CHAIN C0KARIHJ KARIHI-SERVANT-ROBE-2
~I... do not want to speak of this any further, <PLAYER1>. Now, or ever. I have done the only thing I can to avenge my family... for good or ill.~
EXIT

CHAIN C0KARIHJ KARIHI-SERVANT-ROBE-3
~Am I not? I was so consumed with guilt, the wish to set things right, that I was willing to unleash my rage on the first person I could blame...~
== C0KARIHJ ~...why did you stop me, <PLAYER1>? This was not your affair, and you know he deserved to die... even now, after sparing him, I still believe that. I refuse to accept that you did it for his sake.~
END
++ ~I didn't. I just don't want you to be haunted by another ghost.~ + KARIHI-SERVANT-ROBE-3-A
++ ~You were consumed by anger. If you had killed him, you would have regretted it later.~ + KARIHI-SERVANT-ROBE-3-A
++ ~No reason in particular.~ EXTERN C0KARIHJ KARIHI-SERVANT-ROBE-4

CHAIN C0KARIHJ KARIHI-SERVANT-ROBE-3-A
~That is true. Roth... betrayed my family. But it was my mistake that led to my family's deaths. If I had killed him, I would have still had to face that truth. I would not have felt the satisfaction of vengeance.~
= ~And... in truth, avenging my family no longer even appeals to me. I cared for them all—father, mother, Azra—but I cannot admit they were good people. I knew that... even as I sought their approval and love with my every action.~
= ~But am I truly any better, I wonder? Every misfortune I have ever suffered was borne of my selfishness, pride and lack of self-control. And it is far, far too late for regrets.~
END
++ ~You can still change.~ + KARIHI-SERVANT-ROBE-3-B
++ ~I don't think it is.~ + KARIHI-SERVANT-ROBE-3-B
++ ~Maybe it is. I'm not the best person to judge.~ + KARIHI-SERVANT-ROBE-4

CHAIN C0KARIHJ KARIHI-SERVANT-ROBE-3-B
~Perhaps... I would like to believe it is so, in any case.~
= ~I... will think on it, <PLAYER1>. There may be truth to your words... I may be able to change after all.~
DO ~ChangeAlignment(Myself,CHAOTIC_GOOD)~ EXIT

CHAIN C0KARIHJ KARIHI-SERVANT-ROBE-4
~Hmph. I doubt I will ever understand you, <PLAYER1>.~
= ~And here I believed you genuinely thought I was capable of being better. But perhaps I truly cannot change my nature.~
EXIT

// AR1201 - ORC CAVERNS

CHAIN IF WEIGHT #-1 ~Global("C0KarihiTalkAR1201","AR1201",1)~ THEN C0KARIHJ KARIHI-AR1201
~Pfeh! The vile stench that permeates this place is sickening. How typical of orcs to live in such conditions.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiTalkAR1201","AR1201",1)~
END
++ ~I'm sorry this place doesn't match up to your high standards.~ + KARIHI-AR1201-1
++ ~Must you act so haughtily in every situation?~ + KARIHI-AR1201-2
++ ~It is rather disgusting in here, I agree.~ + KARIHI-AR1201-3
+ ~!Global("Caravan_Quest","GLOBAL",1)~ + ~Stop complaining. We won't be here long.~ + KARIHI-AR1201-0
+ ~Global("Caravan_Quest","GLOBAL",1)~ + ~Stop complaining. We need to find that caravan.~ + KARIHI-AR1201-0

CHAIN C0KARIHJ KARIHI-AR1201-X
~Very well. Lead on.~
EXIT

CHAIN C0KARIHJ KARIHI-AR1201-0
~Tch. Mind your tone. I may have agreed to accompany you, but that may not necessarily last. And you will find that my magic is not so easily replaceable.~
EXIT

CHAIN C0KARIHJ KARIHI-AR1201-1
~My standards are entirely reasonable. Beauty, wealth, power... one may not have need of them, but who would refuse them if it were within their grasp?~
END
++ ~The North doesn't seem like the first place one would go to find all three.~ + KARIHI-AR1201-4
++ ~What of family, or love? Do you care about those?~ + KARIHI-AR1201-5
++ ~I can agree with you on that. I, too, came seeking my fortune.~ + KARIHI-AR1201-6
++ ~We can continue this talk later. Let's finish exploring this cave first.~ + KARIHI-AR1201-X

CHAIN C0KARIHJ KARIHI-AR1201-2
~*snort* Is that even a question?~
EXTERN C0KARIHJ KARIHI-AR1201-1

CHAIN C0KARIHJ KARIHI-AR1201-3
~Perhaps if these creatures appreciated the finer things in life, they would not have become such a menace to the civilized.~
EXTERN C0KARIHJ KARIHI-AR1201-1

CHAIN C0KARIHJ KARIHI-AR1201-4
~It certainly is not. It is desolate, sparse, rugged... and worst of all, *cold*. This was not my ideal choice for seeking my fortune.~
EXTERN C0KARIHJ KARIHI-AR1201-7

CHAIN C0KARIHJ KARIHI-AR1201-5
~Of course... had I any of either worth mentioning, I would be with them, and not here battling the bitter cold.~
EXTERN C0KARIHJ KARIHI-AR1201-7

CHAIN C0KARIHJ KARIHI-AR1201-6
~Hmm. Then we are two of a kind in that respect. Though for me, it was not a choice.~
EXTERN C0KARIHJ KARIHI-AR1201-7

CHAIN C0KARIHJ KARIHI-AR1201-7
~That being said, fate has brought me here, and it has led you to me. I see no choice but to follow where you lead us for now.~
END
+ ~Global("C0KarihiMatch","GLOBAL",1)~ + ~I can certainly appreciate the company of a powerful... and beautiful mage.~ DO ~IncrementGlobal("C0KarihiFlirt","GLOBAL",1)~ + KARIHI-AR1201-ROM
++ ~You truly have no home to return to?~ + KARIHI-AR1201-8
++ ~Don't worry. There'll be plenty of wealth and power for the both of us.~ + KARIHI-AR1201-9
++ ~I don't particularly care why you're here. As long as you're useful, you may stay.~ + KARIHI-AR1201-10
++ ~Let's leave this talk for another time.~ + KARIHI-AR1201-X

CHAIN C0KARIHJ KARIHI-AR1201-ROM
~Hmm. Quite a charmer's tongue you have. I may come to enjoy this journey after all.~
EXTERN C0KARIHJ KARIHI-AR1201-11

CHAIN C0KARIHJ KARIHI-AR1201-8
~That is... something I would rather not divulge. Perhaps I will share a tidbit of my secrets another time, should you impress me.~
EXTERN C0KARIHJ KARIHI-AR1201-11

CHAIN C0KARIHJ KARIHI-AR1201-9
~That remains to be seen. Regardless, I will aid you with my knowledge and magic, so long as you prove yourself a competent leader.~
EXTERN C0KARIHJ KARIHI-AR1201-11

CHAIN C0KARIHJ KARIHI-AR1201-10
~You will come to understand that my power is far more than simply useful. Whether you are worthy of it is another question altogether.~
EXTERN C0KARIHJ KARIHI-AR1201-11

CHAIN C0KARIHJ KARIHI-AR1201-11
~Enough for now. We have a nest of orcs to exterminate.~
EXIT

// AR2000 - AFTER AVALANCHE

CHAIN IF WEIGHT #-1 ~Global("C0KarihiTalkAR2000","AR2000",1)~ THEN C0KARIHJ KARIHI-AR2000
~*grumble* Mystra's patience, accursed... bah! Damn this snow! I thought it merely an annoyance at first, but we were just damn near killed by it!~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiTalkAR2000","AR2000",1)~
END
++ ~We survived. The others weren't so lucky.~ + KARIHI-AR2000-1
++ ~Calm down. We're alright now.~ + KARIHI-AR2000-1
++ ~Can you stop complaining for just one second?~ + KARIHI-AR2000-2
++ ~Whatever...~ EXIT

CHAIN C0KARIHJ KARIHI-AR2000-1
~True enough. But I have little interest in talking so closely to where we were nearly crushed by a mountain. We may as well continue to Kuldahar and hope the place can provide us some measure of relief.~
EXIT

CHAIN C0KARIHJ KARIHI-AR2000-2
~Hmph! I have little interest in talking here regardless. The path that was behind us came close to becoming our tomb. Lead us to Kuldahar. Hopefully it will be more pleasant than this place.~
EXIT

// AR2100 - AFTER TALKING TO ARUNDEL

CHAIN IF WEIGHT #-1 ~Global("C0KarihiTalkAR2100","AR2100",1)~ THEN C0KARIHJ KARIHI-AR2100
~Well, a right mess we've gotten ourselves involved with mere moments after stepping into this miraculous village. Trouble seems to be drawn to you like flies, for I've seen no shortage of it within the scant time that I've known you.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiTalkAR2100","AR2100",1)~
END
++ ~I hope you're not thinking of backing out now.~ + KARIHI-AR2100-1
++ ~What can I say? Barely escaped death by snow and already on my way to meet the living dead. I must be cursed.~ + KARIHI-AR2100-2
++ ~I take it you're fond of Kuldahar, then?~ + KARIHI-AR2100-3
++ ~Your scathing remarks towards me are the last thing I want to hear right now.~ + KARIHI-AR2100-4
++ ~I'm sorry, Karihi, but I'm not interested in making small talk at the moment.~ + KARIHI-AR2100-X

CHAIN C0KARIHJ KARIHI-AR2100-X
~A pity. Just when I had started to find you interesting.~
END
IF ~!Global("C0KarihiMatch","GLOBAL",1)~ EXIT
IF ~Global("C0KarihiMatch","GLOBAL",1)~ DO ~SetGlobal("C0KarihiMatch","GLOBAL",0)~ EXIT

CHAIN C0KARIHJ KARIHI-AR2100-1
~Do not underestimate me, <PLAYER1>. It will take more than a bit of bad weather and threats of danger to deter me from whatever path I choose to walk.~
EXTERN C0KARIHJ KARIHI-AR2100-5

CHAIN C0KARIHJ KARIHI-AR2100-2
~Perhaps. But there are legends of those whose fates landed on the coin's edge. I was once told to be one such fated one, and your fortune may be similarly two-sided. After all... we are both still alive.~
EXTERN C0KARIHJ KARIHI-AR2100-5

CHAIN C0KARIHJ KARIHI-AR2100-3
~It is infinitely more tolerable than the rest of the Ten Towns, but that is hardly saying much. That said... I have underestimated the power of druidic magic. To allow for a place such as this to exist is... impressive.~
EXTERN C0KARIHJ KARIHI-AR2100-5

CHAIN C0KARIHJ KARIHI-AR2100-4
~Hmph. My remarks were not intended to be scathing, but if you are inclined to take them as such, perhaps I should have said nothing after all.~
= ~In truth, I only spoke because I found you fascinating during our short time together up to now. Yet I suppose I may have misjudged you.~
END
++ ~No, I'm sorry. I shouldn't have snapped at you like that. What were you going to say?~ + KARIHI-AR2100-5
++ ~Just leave me alone, woman.~ + KARIHI-AR2100-X

CHAIN C0KARIHJ KARIHI-AR2100-5
~But I wish to talk about you, not me. If we are to face danger—and I foresee much of it in our future—then perhaps we should build a modicum of trust.~
= ~We are to travel to the Vale, of course—but I am certain there is time to spare for a little respite from our ordeal. This village must have some establishment for serving our needs, don't you agree?~
END
+ ~Global("C0KarihiMatch","GLOBAL",1)~ + ~I would never turn down an invitation from a lady.~ DO ~IncrementGlobal("C0KarihiFlirt","GLOBAL",1)~ + KARIHI-AR2100-ROM
++ ~That sounds like a great idea. Shall we share stories over wine?~ + KARIHI-AR2100-6
++ ~Maybe. I'll think about it.~ + KARIHI-AR2100-7
++ ~We'll have time for that eventually. Let's go to the Vale first.~ + KARIHI-AR2100-7
++ ~I have little interest in divulging anything of myself to you.~ + KARIHI-AR2100-X

CHAIN C0KARIHJ KARIHI-AR2100-ROM
~Ah, how I've missed being treated with such courtesy. You may be even more than I suspected.~
EXTERN C0KARIHJ KARIHI-AR2100-6

CHAIN C0KARIHJ KARIHI-AR2100-6
~I would kill for even a sip of Berduskan Dark, but I could settle for less. We shall see.~
DO ~SetGlobal("C0KarihiFriendTalk1","GLOBAL",1)~ EXIT

CHAIN C0KARIHJ KARIHI-AR2100-7
~You may lead as you wish. This was merely a suggestion.~
DO ~SetGlobal("C0KarihiFriendTalk1","GLOBAL",1)~ EXIT

// Friendship Talk 1

CHAIN IF WEIGHT #-1 ~Global("C0KarihiFriendTalk1","GLOBAL",2)~ THEN C0KARIHJ KARIHI-FRIEND
~Hmph. So this is what Kuldahar has to offer a pair of weary, thirsty travellers, I take it.~  [C0BLANK]
DO ~IncrementGlobal("C0KarihiFriendTalk1","GLOBAL",1)~
= ~This is hardly comparable to the festhalls of Waterdeep or Cormyr, but it will serve.~
END
++ ~Shall we find a seat?~ + KARIHI-FRIEND1-1
++ ~You've been all around Faerûn, from the sounds of it.~ + KARIHI-FRIEND1-2
++ ~As long as this establishment has wine, I'm willing to make do.~ + KARIHI-FRIEND1-3
++ ~I don't think this is a good time to be relaxing.~ + KARIHI-FRIEND1-X

CHAIN C0KARIHJ KARIHI-FRIEND1-1
~Yes. Preferably at that table in the corner. It seems quieter there.~
EXTERN C0KARIHJ KARIHI-FRIEND1-4

CHAIN C0KARIHJ KARIHI-FRIEND1-2
~If you refer the parts of Faerûn that matter.~
EXTERN C0KARIHJ KARIHI-FRIEND1-4

CHAIN C0KARIHJ KARIHI-FRIEND1-3
~Well said.~
EXTERN C0KARIHJ KARIHI-FRIEND1-4

CHAIN C0KARIHJ KARIHI-FRIEND1-4
~And it appears that they do not have Berduskan Dusk after all. Disappointing, but expected. I shall have to settle for this... 'Kuldahar Tree Sap'. I hope the name is merely symbolic.~
END
++ ~I suppose we'll soon find out. A toast to you.~ + KARIHI-FRIEND1-5
++ ~I don't drink, but I'll keep you company... if you'll allow it.~ + KARIHI-FRIEND1-6
++ ~That's enough. We're wasting our time sitting here.~ + KARIHI-FRIEND1-X

CHAIN C0KARIHJ KARIHI-FRIEND1-5
~Indeed. To our mutual health and success, and all that.~
EXTERN C0KARIHJ KARIHI-FRIEND1-7

CHAIN C0KARIHJ KARIHI-FRIEND1-6
~Fair enough. I graciously accept your company.~
EXTERN C0KARIHJ KARIHI-FRIEND1-7

CHAIN C0KARIHJ KARIHI-FRIEND1-7
~I see I am already drawing attention from the local peasantry. I should not be surprised, though. I doubt there is even anyone within their distant lineage who has ever beheld a fire genasi in their collective lifetimes.~
END
+ ~Global("C0KarihiMatch","GLOBAL",1)
Global("C0KarihiFlirt","GLOBAL",0)~ + ~It may be more than that. You *are* quite striking in more ways than one.~ DO ~IncrementGlobal("C0KarihiFlirt","GLOBAL",1)~ + KARIHI-FRIEND1-ROM1
+ ~Global("C0KarihiMatch","GLOBAL",1)
GlobalGT("C0KarihiFlirt","GLOBAL",0)~ + ~It may be more than that. You *are* quite striking in more ways than one.~ DO ~IncrementGlobal("C0KarihiFlirt","GLOBAL",1)~ + KARIHI-FRIEND1-ROM2
++ ~I've never met one until you, either. Are your kind common wherever you hail from?~ + KARIHI-FRIEND1-8
++ ~They may be curious of what you are, but I'm more interested in the person. Would you tell me more about yourself?~ + KARIHI-FRIEND1-9
++ ~I have encountered genasi before. None were like you, though.~ + KARIHI-FRIEND1-10
++ ~Enough talk. We've wasted enough time sitting here.~ + KARIHI-FRIEND1-X

CHAIN C0KARIHJ KARIHI-FRIEND1-ROM1
~Perhaps. Though even if it does not apply to these plain folk, at least you have a good eye.~
EXTERN C0KARIHJ KARIHI-FRIEND1-11

CHAIN C0KARIHJ KARIHI-FRIEND1-ROM2
~You are insistent on being a flatterer, I see. Is this how you ordinarily speak to women, or do you save it exclusively for the finest? Well, regardless, do continue.~
EXTERN C0KARIHJ KARIHI-FRIEND1-11

CHAIN C0KARIHJ KARIHI-FRIEND1-8
~My kind? *snort* Hmph, I know you do not mean to offend. But I would suggest thinking through your use of phrases once in a while.~
EXTERN C0KARIHJ KARIHI-FRIEND1-11

CHAIN C0KARIHJ KARIHI-FRIEND1-9
~Well, since you have managed to say it so tactfully, I suppose I may indulge you a little.~
EXTERN C0KARIHJ KARIHI-FRIEND1-11

CHAIN C0KARIHJ KARIHI-FRIEND1-10
~Of course. The gift of flame is one of birth, but my personage is far more than the blessing of my blood.~
EXTERN C0KARIHJ KARIHI-FRIEND1-11

CHAIN C0KARIHJ KARIHI-FRIEND1-11
~There is much you wish to know of me, I suspect. Much of my history is obvious enough. I am a noble, born in an empire in eastern Faerûn.~
= ~I, along with my four siblings, were all blessed with the gift of flame-touched blood. My natural talent in the powers of my heritage were discovered at a young age, and thus to nurture them, I was trained as a mage specializing in the art of pyromancy.~
= ~My life was one of comfort, but little excitement. Though many of my family are trained in the arcane arts, many chose to focus more upon politics than magery. I enjoyed the privileges of being a socialite for a time, but I held a deeper interest in knowledge of magic and history, and so I took to travelling to great institutes of knowledge, using my family's influence to support the life of a scholar.~
= ~I spent many years studying at Veltalar, the capital of Aglarond, before ultimately returning home to use my talents to serve my family.~
END
+ ~Global("C0KarihiFriendTalk1Past","GLOBAL",0)~ + ~You speak as though this was all in the past. Is there some reason you cannot return home?~ DO ~SetGlobal("C0KarihiFriendTalk1Past","GLOBAL",1)~ + KARIHI-FRIEND1-12
+ ~Global("C0KarihiFriendTalk1Past","GLOBAL",0)~ + ~It sounds like you had quite a pleasant upbringing. Why did you choose to come to the North?~ DO ~SetGlobal("C0KarihiFriendTalk1Past","GLOBAL",1)~ + KARIHI-FRIEND1-12
+ ~Global("C0KarihiFriendTalk1Siblings","GLOBAL",0)~ + ~Are all of your family genasi?~ DO ~SetGlobal("C0KarihiFriendTalk1Siblings","GLOBAL",1)~ + KARIHI-FRIEND1-13
+ ~Global("C0KarihiFriendTalk1Aglarond","GLOBAL",0)~ + ~Aglarond is on the far eastern side of Faerûn. Is it close to your homeland?~ DO ~SetGlobal("C0KarihiFriendTalk1Aglarond","GLOBAL",1)~ + KARIHI-FRIEND1-AGLAROND
++ ~I don't care. To be honest, I don't know why I even ended up listening.~ + KARIHI-FRIEND1-X

CHAIN C0KARIHJ KARIHI-FRIEND1-12
~That is... a complicated tale, and one I wish to keep to myself. It is not that interesting, regardless. Suffice to say that the power and luxury I once may have had no longer exists.~
= ~Perhaps one day I will tell you more. For now, live with the knowledge that you have learned more about me than anyone else I have met within the years since I left my homeland.~
END
++ ~How long have you been travelling for?~ + KARIHI-FRIEND1-12-1
+ ~Global("C0KarihiFriendTalk1Siblings","GLOBAL",0)~ + ~Are all of your family genasi?~ DO ~SetGlobal("C0KarihiFriendTalk1Siblings","GLOBAL",1)~ + KARIHI-FRIEND1-13
+ ~Global("C0KarihiFriendTalk1Aglarond","GLOBAL",0)~ + ~You mentioned studying in Aglarond—that's on the far eastern side of Faerûn. Is it close to your homeland?~ DO ~SetGlobal("C0KarihiFriendTalk1Aglarond","GLOBAL",1)~ + KARIHI-FRIEND1-AGLAROND
+ ~Global("C0KarihiFriendTalk1Past","GLOBAL",1)
Global("C0KarihiFriendTalk1Siblings","GLOBAL",1)
Global("C0KarihiFriendTalk1Aglarond","GLOBAL",1)~ + ~That's all I wanted to know about you.~ + KARIHI-FRIEND1-14
++ ~This is all very boring. I think I've heard enough.~ + KARIHI-FRIEND1-X

CHAIN C0KARIHJ KARIHI-FRIEND1-12-1
~Almost a year now... perhaps longer. I have lost track. It has both felt as though a long time and almost no time at all during different moments. Though I still long for the life I once lived, it... does no good to linger.~
= ~I have seen much more of the world within the last few years even compared to my time as a travelling scholar. And I have learned enough to survive, despite everything.~
END
+ ~Global("C0KarihiFriendTalk1Siblings","GLOBAL",0)~ + ~Are all of your family genasi?~ DO ~SetGlobal("C0KarihiFriendTalk1Siblings","GLOBAL",1)~ + KARIHI-FRIEND1-13
+ ~Global("C0KarihiFriendTalk1Aglarond","GLOBAL",0)~ + ~You mentioned studying in Aglarond—that's on the far eastern side of Faerûn. Is it close to your homeland?~ DO ~SetGlobal("C0KarihiFriendTalk1Aglarond","GLOBAL",1)~ + KARIHI-FRIEND1-AGLAROND
+ ~Global("C0KarihiFriendTalk1Past","GLOBAL",1)
Global("C0KarihiFriendTalk1Siblings","GLOBAL",1)
Global("C0KarihiFriendTalk1Aglarond","GLOBAL",1)~ + ~That's all I wanted to know about you.~ + KARIHI-FRIEND1-14
++ ~This is all very boring. I think I've heard enough.~ + KARIHI-FRIEND1-X

CHAIN C0KARIHJ KARIHI-FRIEND1-AGLAROND
~Perhaps. Aglarond was not my birthplace, but I spent long enough there that it was a second home to me, of sorts. In many aspects, I preferred life there over my own home. It is a place where any competent mage will find themselves welcome, and those with keen minds willing to learn find themselves leaving all the richer.~
= ~If it were not for my family, perhaps I would have remained there, living in comfort with a wealth of knowledge and power at my disposal. But I was a proud member of my house, and I chose my resposibilities over my own desires. Sometimes I wonder how different things would have been had I stayed.~
END
+ ~Global("C0KarihiFriendTalk1Past","GLOBAL",0)~ + ~You speak as though this was all in the past. Is there some reason you cannot return home?~ DO ~SetGlobal("C0KarihiFriendTalk1Past","GLOBAL",1)~ + KARIHI-FRIEND1-12
+ ~Global("C0KarihiFriendTalk1Past","GLOBAL",0)~ + ~It sounds like you had quite a pleasant upbringing. Why did you choose to come to the North?~ DO ~SetGlobal("C0KarihiFriendTalk1Past","GLOBAL",1)~ + KARIHI-FRIEND1-12
+ ~Global("C0KarihiFriendTalk1Siblings","GLOBAL",0)~ + ~Are all of your family genasi?~ DO ~SetGlobal("C0KarihiFriendTalk1Siblings","GLOBAL",1)~ + KARIHI-FRIEND1-13
+ ~Global("C0KarihiFriendTalk1Past","GLOBAL",1)
Global("C0KarihiFriendTalk1Siblings","GLOBAL",1)
Global("C0KarihiFriendTalk1Aglarond","GLOBAL",1)~ + ~That's all I wanted to know about you.~ + KARIHI-FRIEND1-14
++ ~This is all very boring. I think I've heard enough.~ + KARIHI-FRIEND1-X

CHAIN C0KARIHJ KARIHI-FRIEND1-13
~No. My siblings share my gift, as does my father. But not all are fortunate enough to inherit the blood, and among those that do, the power is stronger within some compared to others.~
= ~Though it is not always the case, the strength of my generation's blood followed our seniority. My elder sister was born with the strongest signs of the gift, followed by myself, and my three brothers—all close in age—shared the same weak traces.~
= ~In truth, though my family has worked for centuries to maintain the gift in our bloodline, there were fewer born with it than otherwise. From that, you may be able to deduce that I was very privileged... as well as burdened with expectations.~
END
+ ~Global("C0KarihiFriendTalk1Past","GLOBAL",0)~ + ~You speak as though this was all in the past. Is there some reason you cannot return home?~ DO ~SetGlobal("C0KarihiFriendTalk1Past","GLOBAL",1)~ + KARIHI-FRIEND1-12
+ ~Global("C0KarihiFriendTalk1Past","GLOBAL",0)~ + ~It sounds like you had quite a pleasant upbringing. Why did you choose to come to the North?~ DO ~SetGlobal("C0KarihiFriendTalk1Past","GLOBAL",1)~ + KARIHI-FRIEND1-12
+ ~Global("C0KarihiFriendTalk1Aglarond","GLOBAL",0)~ + ~You mentioned studying in Aglarond—that's on the far eastern side of Faerûn. Is it close to your homeland?~ DO ~SetGlobal("C0KarihiFriendTalk1Aglarond","GLOBAL",1)~ + KARIHI-FRIEND1-AGLAROND
+ ~Global("C0KarihiFriendTalk1Past","GLOBAL",1)
Global("C0KarihiFriendTalk1Siblings","GLOBAL",1)
Global("C0KarihiFriendTalk1Aglarond","GLOBAL",1)~ + ~That's all I wanted to know about you.~ + KARIHI-FRIEND1-14
++ ~This is all very boring. I think I've heard enough.~ + KARIHI-FRIEND1-X

CHAIN C0KARIHJ KARIHI-FRIEND1-14
~It is just as well. But before this bottle of surprisingly passable wine runs dry... I think I would know something of you in exchange. It seems only fair.~
= ~What of your family, and your heritage? Tell me something of yourself, <PLAYER1>.~
END 
++ ~In truth, I am of noble birth as well.~ + KARIHI-FRIEND1-15
++ ~I do not know my family, sadly. I am an orphan.~ + KARIHI-FRIEND1-16
++ ~I was born a commoner. I sought my fortunes as an adventurer.~ + KARIHI-FRIEND1-17
+ ~Class(Player1,MAGE_ALL)~ + ~I am part of a long lineage of mages. Magic has been part of my life since birth.~ + KARIHI-FRIEND1-MAGE
+ ~OR(2)
Class(Player1,CLERIC_ALL)
Class(Player1,PALADIN_ALL)~ + ~My family is very pious. It seemed only natural for me to become a servant of faith.~ DO ~SetGlobal("C0KarihiPIDMystra","GLOBAL",1)~ + KARIHI-FRIEND1-PRIEST
+ ~OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,RANGER_ALL)~ + ~You may not believe it, but I was a wild child. The beasts of the wilderness were my family.~ + KARIHI-FRIEND1-WILD
+ ~Kit(Player1,BARBARIAN)~ + ~I was raised in a barbarian tribe in southern lands. The North may not be my home, but it is close to it.~ + KARIHI-FRIEND1-WILD
++ ~I grew up in the slums of a city far from here. It has been a difficult life, but I have survived well enough with experience.~ + KARIHI-FRIEND1-16
++ ~My parents were mercenaries. My life has began on the road.~ + KARIHI-FRIEND1-18
++ ~There is nothing I wish to speak of.~ + KARIHI-FRIEND1-19

CHAIN C0KARIHJ KARIHI-FRIEND1-MAGE
~I suspected as much, given that your talent with the Weave matches my own. I could come to regard you as an worthy rival.~
EXTERN C0KARIHJ KARIHI-FRIEND1-21

CHAIN C0KARIHJ KARIHI-FRIEND1-PRIEST
~I see. My family, owing to our blood, have always revered Kossuth the Firelord. I however, as a devotee of the arcane arts, chose to follow the teachings of Mystra.~
~It... is not a choice my father approved of, and it caused conflict in the past. Was your faith entirely one of your own choosing?~
EXTERN C0KARIHJ KARIHI-FRIEND1-20

CHAIN C0KARIHJ KARIHI-FRIEND1-WILD
~Yet you bear a grace and nobility that belies your upbringing. I would not have believed such a person existed if I had not met you. How did you come to develop such a respectable character?~
EXTERN C0KARIHJ KARIHI-FRIEND1-20

CHAIN C0KARIHJ KARIHI-FRIEND1-15
~And yet, here you are in the life of an adventurer. Was it by choice, or do we have even more in common than I suspected?~
EXTERN C0KARIHJ KARIHI-FRIEND1-20

CHAIN C0KARIHJ KARIHI-FRIEND1-16
~Ah... I sympathize. Your life must have been more difficult than most. Though I am also impressed that you seem to have managed to make much of yourself, despite such an origin.~
EXTERN C0KARIHJ KARIHI-FRIEND1-21

CHAIN C0KARIHJ KARIHI-FRIEND1-17
~Countless men with lives that began like yours no doubt have dreamt of achieving the same as you aspire to. Though I see more potential in you than anyone else I have known.~
EXTERN C0KARIHJ KARIHI-FRIEND1-21

CHAIN C0KARIHJ KARIHI-FRIEND1-18
~'Tis little wonder that you seem so accustomed to this difficult journey we have embarked on, then. But do you ever tire of it, I wonder?~
EXTERN C0KARIHJ KARIHI-FRIEND1-20

CHAIN C0KARIHJ KARIHI-FRIEND1-19
~Well, that is disappointing. Though I can respect your desire for silence.~
EXTERN C0KARIHJ KARIHI-FRIEND1-21

CHAIN C0KARIHJ KARIHI-FRIEND1-20
~Well, there is no need for you to answer that—not now, at least. I am satisfied with what little I have heard—for now.~
EXTERN C0KARIHJ KARIHI-FRIEND1-21

CHAIN C0KARIHJ KARIHI-FRIEND1-21
~It seems that we are different in many ways, yet similar in some. I can begin to see how fate saw it appropriate to lead our paths to cross. It was a fortunate stroke of luck for the both of us—moreso for you, of course. *chuckle*~
= ~But we have finally emptied our cups for the last time, and so we should think of returning to our journey—wherever it may lead us.~
END
+ ~Global("C0KarihiMatch","GLOBAL",1)~ + ~I, for one, am happy to have met you.~ + KARIHI-FRIEND1-ROM3
++ ~I enjoyed this. We should come back some time.~ + KARIHI-FRIEND1-22
++ ~This was a huge waste of time. Don't expect us to do this again.~ + KARIHI-FRIEND1-X

CHAIN C0KARIHJ KARIHI-FRIEND1-ROM3
~Am I to respond to such a statement with, "Likewise"? It does not come easily to me, I'm afraid. But I do appreciate the sentiment.~
EXTERN C0KARIHJ KARIHI-FRIEND1-23

CHAIN C0KARIHJ KARIHI-FRIEND1-22
~That sounds... acceptable. Perhaps I will take you up on that offer.~
EXTERN C0KARIHJ KARIHI-FRIEND1-23

CHAIN C0KARIHJ KARIHI-FRIEND1-23
~My thirst—for knowledge, and for wine—has been quenched, and so now we must return to our life of dangers and secrets.~
= ~To the road then, <PLAYER1>—and I will follow your lead.~
EXIT

CHAIN C0KARIHJ KARIHI-FRIEND1-X
~How disappointing.~
END
IF ~!Global("C0KarihiMatch","GLOBAL",1)~ EXIT
IF ~Global("C0KarihiMatch","GLOBAL",1)~ DO ~SetGlobal("C0KarihiMatch","GLOBAL",0)~ EXIT

// Friendship Talk 2 - Return from Forgotten Temple

CHAIN IF WEIGHT #-1 ~Global("C0KarihiFriendTalk2","GLOBAL",1)~ THEN C0KARIHJ KARIHI-F2START
~Ugh! A tiresome trek that was, and ultimately for little gain. It seems our journey is fated to be as difficult as possible.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiFriendTalk2","GLOBAL",1)~
= ~We are to speak with the old druid once more, of course, but you would not object to satiating my thirst before we are inevitably sent to another walk along the treacherous mountains, would you?~
END
++ ~Not at all. I think we could both do with some rest.~ + KARIHI-F2START-1
++ ~If you want, we can go after we report to Arundel.~ + KARIHI-F2START-2
++ ~Stop acting so spoiled. We're not here for leisure.~ + KARIHI-F2START-3

CHAIN C0KARIHJ KARIHI-F2START-1
~Good. I would not disagree for a chance to rinse this dust and grime from my robes, but one step at a time, hmm?~
EXIT

CHAIN C0KARIHJ KARIHI-F2START-2
~Oh, very well. But make it quick. My aching legs and parched throat demand a respite.~
EXIT

CHAIN C0KARIHJ KARIHI-F2START-3
~Spoiled, am I? Hmph. If that is what you think of me, then perhaps I will have to simply resign myself to suffering in silence.~
END
IF ~!Global("C0KarihiMatch","GLOBAL",1)~ EXIT
IF ~Global("C0KarihiMatch","GLOBAL",1)~ DO ~SetGlobal("C0KarihiMatch","GLOBAL",0)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KarihiFriendTalk2","GLOBAL",3)~ THEN C0KARIHJ KARIHI-F2
~Ah... the scent of wooden barrels and spirits. I could grow used to this.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiFriendTalk2","GLOBAL",1)~
= ~Come, sit with me while we sample this wine. Some conversation would greatly lighten my mood.~
END
++ ~How could I possibly refuse?~ + KARIHI-F2-1
++ ~As you wish.~ + KARIHI-F2-2
++ ~I'll stick with water, thank you.~ + KARIHI-F2-3
++ ~I don't think so. We're wasting time here.~ + KARIHI-F2-X

CHAIN C0KARIHJ KARIHI-F2-X
~Is that so? Well then, I agree that things *have* indeed been a waste of time–though what we speak of may be entirely different.~
END
IF ~!Global("C0KarihiMatch","GLOBAL",1)~ EXIT
IF ~Global("C0KarihiMatch","GLOBAL",1)~ DO ~SetGlobal("C0KarihiMatch","GLOBAL",0)~ EXIT

CHAIN C0KARIHJ KARIHI-F2-1
~I doubt you could. Though you are welcome to try.~
EXTERN C0KARIHJ KARIHI-F2-2

CHAIN C0KARIHJ KARIHI-F2-2
~We mentioned our pasts when last we spoke, did we not? Such different origins, yet we have much in common... and here we are, drinking together in this village under a mystical tree.~
= ~Such would never have occurred in the life I once knew. Powerful, refined, sheltered... and so terribly boring at times. I cannot deny I miss it sometimes, of course, but I intend to one day make my mark on history, not waste away under a layer of polish like some lifeless ornament.~
= ~What of you, <PLAYER1>? Do you ever hold fond feelings towards your home, wherever that may be?~
END
++ ~I have a wonderful home. One day I will return, and live out the rest of my days in peace.~ + KARIHI-F2-4
++ ~No. I fled from my home, for reasons likely similar to your own.~ + KARIHI-F2-5
++ ~There is nothing worth mentioning in my past. No home to return to, nor people to welcome me.~ + KARIHI-F2-6
++ ~I have a home. But I can never go back.~ + KARIHI-F2-6
++ ~My homeland is a treacherous, vile place. I was lucky to have escaped.~ + KARIHI-F2-6
++ ~My home is wherever I choose to lay my ground next.~ + KARIHI-F2-7
++ ~I'd rather not divulge that with you.~ + KARIHI-F2-8

CHAIN C0KARIHJ KARIHI-F2-3
~*snort*~
EXTERN C0KARIHJ KARIHI-F2-2

CHAIN C0KARIHJ KARIHI-F2-4
~We should all be so fortunate.~
EXTERN C0KARIHJ KARIHI-F2-9

CHAIN C0KARIHJ KARIHI-F2-5
~...~
= ~You know not of what you speak, <PLAYER1>. But I will not fault your ignorance, for it has been my decision to keep my past a secret so far.~
EXTERN C0KARIHJ KARIHI-F2-9

CHAIN C0KARIHJ KARIHI-F2-6
~I see. A difficult life you must have led, then. Perhaps this may even be the most peace you have ever had?~
EXTERN C0KARIHJ KARIHI-F2-9

CHAIN C0KARIHJ KARIHI-F2-7
~Hmm, a born wanderer, then. How impressive.~
EXTERN C0KARIHJ KARIHI-F2-9

CHAIN C0KARIHJ KARIHI-F2-8
~As you wish.~
EXTERN C0KARIHJ KARIHI-F2-9

CHAIN C0KARIHJ KARIHI-F2-9
~'Tis strange, <PLAYER1>. This was never the life I expected to live, and yet I have adapted to it at a surprising pace. Another in my shoes may have perished long ago. My magic is to thank, I suppose.~
= ~But my magic was never meant to be used in such way. It was... I do not know what I originally intended with my power, in truth.~
= ~It was not a choice at first. I was simply expected to train in magic and pyromancy since I learned how to conjure embers through force of will. But I grew to love power, became intoxicated by it... the search for knowledge and power became the crux of my life.~
= ~Now... now I merely wish to survive. And the power I have has served me thus far.~
END
++ ~It feels better when power is given a purpose, doesn't it?~ + KARIHI-F2-10
++ ~Power is dangerous. If it does not destroy you, it may yet turn you into a monster.~ + KARIHI-F2-11
++ ~I understand the lure of power as well.~ + KARIHI-F2-12
++ ~I think it's best if we stop here. You're starting to creep me out.~ + KARIHI-F2-X2

CHAIN C0KARIHJ KARIHI-F2-10
~Yes, it does.~
EXTERN C0KARIHJ KARIHI-F2-13

CHAIN C0KARIHJ KARIHI-F2-11
~Oh, I know all too well.~
EXTERN C0KARIHJ KARIHI-F2-13

CHAIN C0KARIHJ KARIHI-F2-12
~Then you know of its virtues... as well as its dangers.~
EXTERN C0KARIHJ KARIHI-F2-13

CHAIN C0KARIHJ KARIHI-F2-13
~Look at the candle before us, <PLAYER1>. I doubt its pitiful flame would even outlast our conversation.~
= ~...~
= ~..."Esah. Pahrezar. Flarea. Esah."~
= ~(She twirls her hand in a magical gesture. Before your very eyes, the tiny flame of the candle extends and things, turning to a tiny serpent that dances in a hypnotic, wave-like movement. Suddenly, the serpent-shaped flame grows, and sprouts wings that resemble those of a dragon.)~
= ~(Despite the size of the flaming creature, so small, so pitiful that you feel you could extinguish it with a touch, it radiates a strange power, a powerful presence... like that of a white-hot flame, yet nothing burns... the winged serpent flies towards you, brushing dangerously close against your flesh, yet... you feel no sudden stab of pain, nor a rush of heat... only a slight warmth.)~
= ~(At her command, the serpent perches upon the candle's wick, the flame shrinking back into its ordinary, familiar shape.)~
= ~A simple parlor trick, nothing else. But that spell alone required far more discipline than throwing a fireball ever will.~
END
+ ~Class(Player1,MAGE_ALL)~ + ~A trick, perhaps. But one that requires a great measure of control, nonetheless. That sort of mastery takes years of practice.~ + KARIHI-F2-14
+ ~!Class(Player1,MAGE_ALL)
CheckStatGT(Player1,15,WIS)~ + ~That is an astonishing display of control. Most spellcasters would struggle with such a 'trick'.~ + KARIHI-F2-14
++ ~Impressive.~ + KARIHI-F2-15
++ ~What was the point of that?~ + KARIHI-F2-15

CHAIN C0KARIHJ KARIHI-F2-14
~Yes.~
EXTERN C0KARIHJ KARIHI-F2-15

CHAIN C0KARIHJ KARIHI-F2-15
~Each pyromancer in my family is demanded to master that particular spell. The first time I attempted it, I lost control and burned my manor's tapestries to a cinder. I was punished heavily–not for the destruction, but for the failure.~
= ~You may believe that given my... temperament, that mastery over the element of fire would come naturally to me. But in truth, my tutors have likened me to a wildfire... dangerous, uncontrollable... a walking disaster in the making.~
= ~Once, I failed to see the purpose behind learning such a simple trick. Now, I practice it every night. I learned, though the harshest lessons, that power without restraint only serves to destroy oneself and everything one holds dear.~
END
++ ~What did you do to learn that?~ + KARIHI-F2-16
++ ~I see.~ + KARIHI-F2-17
++ ~This isn't anything I needed to hear. I already knew you were dangerous.~ + KARIHI-F2-18

CHAIN C0KARIHJ KARIHI-F2-16
~I will... tell you another time, <PLAYER1>. If you still care to know more about me.~
EXTERN C0KARIHJ KARIHI-F2-17

CHAIN C0KARIHJ KARIHI-F2-17
~I think I have said enough for now, however. This has been a pleasant enough rest for us both, and I would not like to ruin it with any darker thoughts. We have enough troubles to think on as it is.~
= ~Although I am grateful for your willingness to listen. That is a courtesy I have not been shown for some time.~
END
IF ~Global("C0KarihiMatch","GLOBAL",0)~ + KARIHI-F2-19
IF ~GlobalGT("C0KarihiMatch","GLOBAL",0)~ + KARIHI-F2-ROM

CHAIN C0KARIHJ KARIHI-F2-18
~Is that so? I am dangerous, and that is all you think of me?~
EXTERN C0KARIHJ KARIHI-F2-X2

CHAIN C0KARIHJ KARIHI-F2-19
~Let us return to the cold and desolate road we are so resolutely set upon, then.~
EXIT

CHAIN C0KARIHJ KARIHI-F2-ROM
~Before we go, however... there is one more thing I wish to ask.~
== C0KARIHJ IF ~GlobalGT("C0KarihiFlirt","GLOBAL",0)~ THEN ~In the short time we have travelled together, I have noticed your occasional... flirtations during our talks. It was unexpected, and perhaps not always at the most appropriate times, but... it was not unwelcome.~
== C0KARIHJ IF ~!GlobalGT("C0KarihiFlirt","GLOBAL",0)~ THEN ~We have only travelled together for a short time, too short for us to truly understand each other. Yet, at times, I find myself thinking... cautiously weighing my words, hoping to not sour your opinion on me.~
== C0KARIHJ ~Knowing a little more of me now than you did before... what do you think of me, <PLAYER1>? Whatever I may appear to be on the surface, I know I am as turbulent as an uncontrolled flame... does that not unnerve you?~
END
++ ~I think you also represent the other side of fire. The side that is warm, comforting... and beautiful.~ + KARIHI-F2-ROM-1
++ ~You are powerful, but that doesn't mean you're dangerous. Not in my eyes.~ + KARIHI-F2-ROM-1
++ ~Maybe, but I've always enjoyed playing with fire.~ + KARIHI-F2-ROM-1
+ ~GlobalGT("C0KarihiFlirt","GLOBAL",0)~ + ~I am your friend, Karihi, but I do not hold affection towards you. I was only flirting for fun.~ + KARIHI-F2-ROM-2
+ ~!GlobalGT("C0KarihiFlirt","GLOBAL",0)~ + ~I am your friend, Karihi, but I do not hold affection towards you.~ + KARIHI-F2-ROM-2
++ ~I have no interest in someone so volatile and dangerous.~ + KARIHI-F2-18

CHAIN C0KARIHJ KARIHI-F2-ROM-1
~I see. Then you would not do so much as flinch if I were to do this?~
= ~(She closes her eyes, then, after a moment's hesitation... she raises a hand wreathed in flame and slowly raises it towards your face.)~
END
++ ~(Take her hand and hold it in your own.)~ + KARIHI-F2-ROM-3
++ ~(Do not move.)~ + KARIHI-F2-ROM-4
++ ~(Recoil away from her hand.)~ + KARIHI-F2-ROM-5

CHAIN C0KARIHJ KARIHI-F2-ROM-2
~Disappointing, I suppose, but not unreasonable. I appreciate that you are honest.~
DO ~SetGlobal("C0KarihiRomanceActive","GLOBAL",3)~ EXTERN C0KARIHJ KARIHI-F2-19

CHAIN C0KARIHJ KARIHI-F2-ROM-3
~(She weakly struggles for a moment, attempting to free her hand from yours, but relents.)~
= ~(Thin wisps of flame dance from between your fingers, yet you only feel a tender warmth... for a moment, your instinct believes it to be an illusion, but you know it is real... you look up, trying to meet her eyes, but they are focused entirely on your hands, clasped around her own.~
EXTERN C0KARIHJ KARIHI-F2-ROM-6

CHAIN C0KARIHJ KARIHI-F2-ROM-4
~(Her hand brushes against your cheeks, the flames hungrily licking against your skin, but you feel only a tender warmth... for a moment, your instinct believes it to be an illusion, but you know it is real... her hand slides from your cheek to your chin, caressing softly, admiring your jawline.)~
EXTERN C0KARIHJ KARIHI-F2-ROM-6

CHAIN C0KARIHJ KARIHI-F2-ROM-5
~(You see a momentary flash of anger in her eyes, but it seems only instinctive... and it quickly fades into something resembling resentment, disappointment... even sadness. She quickly regains her composure, but her gaze has changed.)~
= ~You do not trust me after all.~
EXTERN C0KARIHJ KARIHI-F2-X2

CHAIN C0KARIHJ KARIHI-F2-ROM-6
~(When she finally withdraws her hand, the flames have nearly died, leaving only slight embers leaping onto the table. It is subtle, but you notice she is smiling—genuinely, a sight you have not seen before now.)~
= ~Most would consider it foolish to willingly embrace an open flame, <PLAYER1>.~
END
++ ~Then I suppose I am a willing fool.~ + KARIHI-F2-ROM-7
++ ~I trust you.~ + KARIHI-F2-ROM-8
++ ~That was nice, but I'd be happier if I had something more.~ + KARIHI-F2-ROM-9

CHAIN C0KARIHJ KARIHI-F2-ROM-7
~*chuckle* Ah, a rare type of fool. But certainly my favorite.~
EXTERN C0KARIHJ KARIHI-F2-ROM-10

CHAIN C0KARIHJ KARIHI-F2-ROM-8
~You may be an even greater fool for that. Even I do not always trust myself. Still... this pleases me.~
EXTERN C0KARIHJ KARIHI-F2-ROM-10

CHAIN C0KARIHJ KARIHI-F2-ROM-9
~If you continue acting this way, <PLAYER1>, then perhaps you may eventually get your wish. *sigh* But I fear you shall have to be patient.~
EXTERN C0KARIHJ KARIHI-F2-ROM-10

CHAIN C0KARIHJ KARIHI-F2-ROM-10
~I... thank you for your company, <PLAYER1>, and I eagerly look forward to our next... moment together.~
= ~For now, let these feelings fester, while we bear the chill of the road that lies ahead of us both.~
DO ~SetGlobal("C0KarihiRomanceActive","GLOBAL",1)~ EXIT

CHAIN C0KARIHJ KARIHI-F2-X2
~...Hmph.~
= ~You disappoint me, <PLAYER1>.~
END
IF ~!Global("C0KarihiMatch","GLOBAL",1)~ EXIT
IF ~Global("C0KarihiMatch","GLOBAL",1)~ DO ~SetGlobal("C0KarihiMatch","GLOBAL",0)~ EXIT

// Friendship Talk 3 - After Arundel's Death

CHAIN IF WEIGHT #-1 ~Global("C0KarihiFriendTalk3","GLOBAL",1)~ THEN C0KARIHJ KARIHI-F3START
~Tch. Once again, it was all for naught. We have been played like fools.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiFriendTalk3","GLOBAL",1)~
= ~I had thought slaying that marilith would spell a victory for us at last, but the archdruid is now dead, and our last hope lies in the hands of an elven mage living in a distant ruin.~
END
++ ~It's not much to go on, I admit.~ + KARIHI-F3START-1
++ ~We'll make it. Just hold on to hope.~ + KARIHI-F3START-2
++ ~Are you alright?~ + KARIHI-F3START-3
++ ~I can't believe Arundel is dead.~ + KARIHI-F3START-4
++ ~The last thing I want to hear is your whining.~ + KARIHI-F3START-0

CHAIN C0KARIHJ KARIHI-F3START-0
~What? Am I at fault for being under the false assumption that we had something resembling friendship? Forgive me, then. I will not make that mistake again.~
END
IF ~!Global("C0KarihiRomanceActive","GLOBAL",1)~ EXIT
IF ~Global("C0KarihiRomanceActive","GLOBAL",1)~ DO ~SetGlobal("C0KarihiRomanceActive","GLOBAL",0)~ EXIT

CHAIN C0KARIHJ KARIHI-F3START-1
~And yet we must follow the path Arundel laid for us once more... for the last time. What choice do we have?~
EXTERN C0KARIHJ KARIHI-F3START-5

CHAIN C0KARIHJ KARIHI-F3START-2
~I have been, <PLAYER1>. There is not much else to cling to.~
EXTERN C0KARIHJ KARIHI-F3START-5

CHAIN C0KARIHJ KARIHI-F3START-3
~I am not, but there is little that can be done to alleviate that now.~
EXTERN C0KARIHJ KARIHI-F3START-5

CHAIN C0KARIHJ KARIHI-F3START-4
~It was shocking to me as well. And for his killer to take his form and mock us... I will take pleasure in sending our newest, cowardly adversary to the fires of the Nine Hells.~
EXTERN C0KARIHJ KARIHI-F3START-5

CHAIN C0KARIHJ KARIHI-F3START-5
~The final words of that imposter is what truly concerns me. "Thank you for destroying my ancient enemy." To consider a demon of the Abyss an ancient enemy...~
= ~And his ridiculous claim towards his identity—"a priest spreading the gospel of suffering to the masses." Pretentious words, yet his tone... they were clearly spoken as a mockery.~
= ~I believed with the Heartstone Gem, we would soon find the root of whatever evil is present, yet even after all we have done, we still know nothing.~
END
++ ~You sound weary. Shall we go and share a drink together?~ + KARIHI-F3START-6
++ ~I know. It frustrates me as well, but we will discover the truth.~ + KARIHI-F3START-7
++ ~If you don't have anything to say that I don't already know, then just keep quiet.~ + KARIHI-F3START-0

CHAIN C0KARIHJ KARIHI-F3START-6
~It is tempting... but, no. After the ordeals we have been through, I should not allow myself to indulge.~
EXTERN C0KARIHJ KARIHI-F3START-8

CHAIN C0KARIHJ KARIHI-F3START-7
~If only it could be so simple.~
EXTERN C0KARIHJ KARIHI-F3START-8

CHAIN C0KARIHJ KARIHI-F3START-8
~*sigh* Do not mind me, <PLAYER1>. I am merely fatigued. Perhaps some well-deserved rest at the Evening Shade before we make the long journey to the Severed Hand will clear my mind of these irritating thoughts.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KarihiFriendTalk3","GLOBAL",3)~ THEN C0KARIHJ KARIHI-F3
~Are you not tired yet, <PLAYER1>? If not, I would welcome the company. The fire is comforting, yet hardly good for conversation.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiFriendTalk3","GLOBAL",1)~
END
++ ~Certainly.~ + KARIHI-F3-1
++ ~You should rest. It's going to be a long journey to the Severed Hand.~ + KARIHI-F3-2
++ ~Thank you, but I'm going to bed.~ + KARIHI-F3-X

CHAIN C0KARIHJ KARIHI-F3-X
~Hmph, of course. Go, and rest well.~
DO ~RestParty()~ EXIT

CHAIN C0KARIHJ KARIHI-F3-1
~*sigh* I blame you, <PLAYER1>. There was once a time where I would not have deigned to settle for such mundane comforts. After these days I have spent with you, I have eased disturbingly well into this... base lifestyle.~
END
++ ~I've noticed the difference. Didn't you get thrown out of an Snowdrift Inn when we met?~ + KARIHI-F3-3
++ ~It's not so bad once you get used to it, right?~ + KARIHI-F3-4
++ ~Be grateful for still getting a roof over our heads.~ + KARIHI-F3-5
++ ~If all you're going to do is complain, then I'm going to bed.~ + KARIHI-F3-X

CHAIN C0KARIHJ KARIHI-F3-2
~Yes, I am well aware. But I doubt we shall have a chance for such reliefs for a long while once we depart.~
END
++ ~You have a point. In that case, I'll sit with you for a bit.~ + KARIHI-F3-1
++ ~Still, I would much prefer to be well-rested for the road.~ + KARIHI-F3-X

CHAIN C0KARIHJ KARIHI-F3-3
~Through no fault of my own! Would you have settled for lodgings where rodents and woodlice ran rampant?~
EXTERN C0KARIHJ KARIHI-F3-6

CHAIN C0KARIHJ KARIHI-F3-4
~No, it certainly is not. Though it could always be better. We could do with less dust and cobwebs.~
EXTERN C0KARIHJ KARIHI-F3-6

CHAIN C0KARIHJ KARIHI-F3-5
~*snort* Yes, very grateful. We should all be so fortunate.~
EXTERN C0KARIHJ KARIHI-F3-6

CHAIN C0KARIHJ KARIHI-F3-6
~In truth, I... hmph. I do not mean to sound so self-centered, but it is merely that I... well, I am beginning to envision that this is perhaps the life I shall live in the future.~
END
++ ~What do you mean by that?~ + KARIHI-F3-7
++ ~There's nothing wrong with the adventuring life.~ + KARIHI-F3-8
++ ~Do you miss your days as a noble that badly?~ + KARIHI-F3-9
++ ~I've heard enough. Good night, Karihi.~ + KARIHI-F3-X

CHAIN C0KARIHJ KARIHI-F3-7
~I am no longer a noble, <PLAYER1>. And however much I wish I still had some connection to my former life, sooner or later, I must learn to accept what I am now.~
EXTERN C0KARIHJ KARIHI-F3-10

CHAIN C0KARIHJ KARIHI-F3-8
~No, but it was not a life I chose, and I felt some resentment for that... yet it is slowly fading away, despite a childish desire to hold onto it.~
EXTERN C0KARIHJ KARIHI-F3-10

CHAIN C0KARIHJ KARIHI-F3-9
~What I miss does not matter. Only what I can gain now.~
EXTERN C0KARIHJ KARIHI-F3-10

CHAIN C0KARIHJ KARIHI-F3-10
~I had originally envisioned our quest a simple one—and, once we had approached its end, that I would reap the rewards and seek my fortune elsewhere.~
= ~After the archdruid's death, however, I have become truly aware that this is no simple adventure any longer. What we face is a far greater threat, one I did not intend to battle, and yet I choose to stay nonetheless. Why is that, <PLAYER1>?~
END
+ ~Global("C0KarihiRomanceActive","GLOBAL",1)~ + ~Because you have grown to care about me?~ + KARIHI-F3-11
++ ~Because you truly have nowhere else to go?~ + KARIHI-F3-12
++ ~Because you believe there is still wealth and power to be gained?~ + KARIHI-F3-13
++ ~Because under exterior, you're a better person than you appear?~ + KARIHI-F3-14
++ ~I'm too tired to figure you out, Karihi. Good night.~ + KARIHI-F3-X

CHAIN C0KARIHJ KARIHI-F3-11
~Hmph. Bold, <PLAYER1>, very bold of you to assume so... enough so that it would seem cruel to break your hopes by denying it.~
EXTERN C0KARIHJ KARIHI-F3-15

CHAIN C0KARIHJ KARIHI-F3-12
~That is what I believe as well... for good or ill, I chose to join you because I had nothing else, and for that same reason, I remain.~
EXTERN C0KARIHJ KARIHI-F3-15

CHAIN C0KARIHJ KARIHI-F3-13
~No. Wealth and power mean little to me now compared the security of a home... and the resolve that only comes from finding a purpose.~
EXTERN C0KARIHJ KARIHI-F3-15

CHAIN C0KARIHJ KARIHI-F3-14
~*snort* If only... I would be giving myself far too much credit, much as I wish I could be so benign... but no, I am not, and cannot ever call myself a good person.~
EXTERN C0KARIHJ KARIHI-F3-15

CHAIN C0KARIHJ KARIHI-F3-15
~In some ways, I suppose I am not unsatisfied that this journey has not reached its close so quickly. I am not satisfied by merely being another simple mercenary, to collect my earnings then be forgotten and move on.~
= ~If this journey truly proves to be one in which our deeds are rememembered... then I will eagerly face whatever is to come.~
END
++ ~It isn't all about the glory. Innocent people have died.~ + KARIHI-F3-16
++ ~I'll be glad to have you on my side.~ + KARIHI-F3-17
++ ~As long as we get rewarded for our trouble.~ + KARIHI-F3-18

CHAIN C0KARIHJ KARIHI-F3-16
~I do not need to be reminded of that, <PLAYER1>. But I have seen many innocents die from evils both banal and otherwise. That is not new to me.~
EXTERN C0KARIHJ KARIHI-F3-19

CHAIN C0KARIHJ KARIHI-F3-17
~And well you should be. Though that is not to say that I do not depend on your leadership as well.~
EXTERN C0KARIHJ KARIHI-F3-19

CHAIN C0KARIHJ KARIHI-F3-18
~I have no doubt that the true reward shall come from what we take from the hands of our enemies.~
EXTERN C0KARIHJ KARIHI-F3-19

CHAIN C0KARIHJ KARIHI-F3-19
~The road before us shall lead to glory, but we shall have to earn it with our power. To that end, I am glad I have you as a companion.~
END
IF ~Global("C0KarihiRomanceActive","GLOBAL",1)~ + KARIHI-F3-20
IF ~!Global("C0KarihiRomanceActive","GLOBAL",1)~ + KARIHI-F3-21

CHAIN C0KARIHJ KARIHI-F3-20
~The hour is late, and we should rest... unless there is anything you wish to say, <PLAYER1>?~
END
++ ~Only that I'm happy you're here.~ + KARIHI-F3-22
++ ~No... there is nothing.~ + KARIHI-F3-23

CHAIN C0KARIHJ KARIHI-F3-21
~I think I have taken enough of your time, <PLAYER1>. We should rest, and be prepared for the next day.~
DO ~RestParty()~ EXIT

CHAIN C0KARIHJ KARIHI-F3-22
~Yes, the feeling is... mutual. I did not expect to have met someone who I could connect to so easily in this land, so far from my own.~
= ~To think that I, who came to these lands without a meaningful cause, would meet one such as you... I would not have believed it. If nothing else, I would remain simply to ensure you succeed.~
END
++ ~Thank you.~ + KARIHI-F3-24
++ ~I didn't think you cared that much.~ + KARIHI-F3-25
++ ~That's enough, Karihi. We should rest.~ + KARIHI-F3-23

CHAIN C0KARIHJ KARIHI-F3-24
~*sigh* If only we had met under different circumstances... though I doubt it would have been possible, had I not left my homeland.~
= ~Still, I wish these moments we share were not so brief, so rare in the midst of our endless battles. It is most aggrevating.~
END
++ ~That just means we have to make the most out of them, wouldn't you agree?~ + KARIHI-F3-26
++ ~I don't mind. I enjoy our time together, no matter how short.~ + KARIHI-F3-26
++ ~I'm sorry to have to cut this one short, but I really am tired.~ + KARIHI-F3-23

CHAIN C0KARIHJ KARIHI-F3-25
~I did not think myself capable anymore, but I suppose I missed such bonds more than I thought.~
EXTERN C0KARIHJ KARIHI-F3-24

CHAIN C0KARIHJ KARIHI-F3-26
~Is that so? Then perhaps I should take the opportunity for this...~
= ~(She kisses you, slightly nervously, and you feel an intense, passionate warmth, as her fire touches yours.)~
END
++ ~(Respond to her.)~ + KARIHI-F3-27
++ ~(Pull away.)~ + KARIHI-F3-28

CHAIN C0KARIHJ KARIHI-F3-27
~(When she finally breaks apart, her eyes meet yours, full of desire.)~
= ~Far more pleasing than a simple touch of hands, wouldn't you agree?~
END
++ ~Very much so.~ + KARIHI-F3-29
++ ~I liked that, but I've grown tired. Good night, Karihi.~ + KARIHI-F3-23

CHAIN C0KARIHJ KARIHI-F3-28
~...Ah. So I was mistaken as to your intent.~
= ~Never mind. Go, <PLAYER1>. It shall be as though this never happened.~
DO ~SetGlobal("C0KarihiRomanceActive","GLOBAL",3)~ EXIT

CHAIN C0KARIHJ KARIHI-F3-29
~While we still have the opportunity, <PLAYER1>... the hour is not so late. I plan to retire to my room... but perhaps you would be willing to join me?~
END
++ ~I'd like nothing more.~ + KARIHI-F3-30
++ ~No... I'm not ready for that yet.~ + KARIHI-F3-23

CHAIN C0KARIHJ KARIHI-F3-30
~Come, then...~
DO ~SetGlobal("C0KarihiSlept","GLOBAL",1)~ EXIT

CHAIN C0KARIHJ KARIHI-F3-23
~As you wish. Sleep well.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KarihiSlept","GLOBAL",1)~ THEN C0KARIHJ KARIHI-F3-SLEPT
~...Azra, Azra, don't...~ [C0BLANK]
= ~Nnngh... no, no... NO!~
DO ~IncrementGlobal("C0KarihiSlept","GLOBAL",1)~
END
++ ~Karihi?! Are you alright?~ + KARIHI-F3-SLEPT-1
++ ~Hey, watch out! You almost set the bedding on fire!~ + KARIHI-F3-SLEPT-1

CHAIN C0KARIHJ KARIHI-F3-SLEPT-1
~Mmh—?! This is... no, no... they're gone.~
= ~It was all my fault...~
END
++ ~What's your fault?~ + KARIHI-F3-SLEPT-2
++ ~"They're gone"? You don't mean...~ + KARIHI-F3-SLEPT-2
++ ~You were just having a nightmare. Don't let it affect you.~ + KARIHI-F3-SLEPT-2

CHAIN C0KARIHJ KARIHI-F3-SLEPT-2
~<PLAYER1>...?~
= ~I should not have, I—damn you. This was a terrible mistake. I must have angered them by doing this... by allowing myself to...~
END
++ ~What—~ + KARIHI-F3-SLEPT-3
++ ~But I—~ + KARIHI-F3-SLEPT-3
++ ~Tell me—~ + KARIHI-F3-SLEPT-3

CHAIN C0KARIHJ KARIHI-F3-SLEPT-3
~No. Do not ask me anything! Consider yourself fortunate I did not unwittingly incinerate you while we slept!~
= ~...Bi'ssala! Damn it all. Damn everything! I... I...~
= ~Take your clothes and leave me, <PLAYER1>. I will join you outside once I am prepared. Do not... do not speak with me for a while.~
EXIT

// FRIENDSHIP/ROMANCE 4 - AFTER LARREL'S STORY

CHAIN IF WEIGHT #-1 ~Global("C0KarihiFriendTalk4","GLOBAL",1)~ THEN C0KARIHJ KARIHI-F4
~An eternity of torment as punishment for the misuse of one's magic, the destruction of all that one holds dear.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiFriendTalk4","GLOBAL",1)~
= ~It must be torturous, to exist in such a state, surrounded by the reminders of what failure wrought.~
END
++ ~Are you talking about Larrel?~ + KARIHI-F4-1
++ ~I would not have expected you, of all people, to show sympathy.~ + KARIHI-F4-2
++ ~The fool got what he deserved.~ + KARIHI-F4-3
++ ~This isn't a topic I wish to speak of right now.~ + KARIHI-F4-X

CHAIN C0KARIHJ KARIHI-F4-1
~There is no one else who fits such a description. Not even myself.~
EXTERN C0KARIHJ KARIHI-F4-4

CHAIN C0KARIHJ KARIHI-F4-2
~It is surprising, I know. But his pain is one that I know all too well.~
EXTERN C0KARIHJ KARIHI-F4-4

CHAIN C0KARIHJ KARIHI-F4-3
~He did. But it is a pitiable fate nonetheless.~
EXTERN C0KARIHJ KARIHI-F4-4

CHAIN C0KARIHJ KARIHI-F4-4
~Seeing Larrel, the shadow of what he once was—powerful, learned, prideful—has brought me perspective I never believed I could see.~
= ~In some ways, I am... fortunate, I suppose, not to have been condemned to the same fate of seeing the consequences of my pride. That, or I am simply a coward. Yes... that might be it.~
END
+ ~Global("C0KarihiSlept","GLOBAL",2)~ + ~Tell me the truth, Karihi. What happened to your family?~ DO ~SetGlobal("C0KarihiSlept","GLOBAL",3)~ + KARIHI-F4-5A
+ ~!Global("C0KarihiSlept","GLOBAL",2)~ + ~Tell me the truth, Karihi. What happened to your family?~ + KARIHI-F4-5B
++ ~Keep your musings to yourself. I have no interest in them.~ + KARIHI-F4-X

CHAIN C0KARIHJ KARIHI-F4-5A
~*sigh* I suppose I cannot disguise my shame with anger towards you forever. Sooner or later... you will come to despise me if I do not tell you everything.~
= ~Though... I may turn out to disgust you after all, once you know.~
EXTERN C0KARIHJ KARIHI-F4-6

CHAIN C0KARIHJ KARIHI-F4-5B
~It is not—~
= ~No. You are deserving of trust, and you should know.~
EXTERN C0KARIHJ KARIHI-F4-6

CHAIN C0KARIHJ KARIHI-F4-6
~As you have no doubt already suspected, my family is dead—my bloodline, all but extinct. And it was by my hand.~
END
++ ~What?~ DO ~SetGlobal("C0KarihiKnowsFamilyStory","GLOBAL",1)~ + KARIHI-F4-7
++ ~How did that happen?~ DO ~SetGlobal("C0KarihiKnowsFamilyStory","GLOBAL",1)~ + KARIHI-F4-7
++ ~I didn't think you were the type.~ DO ~SetGlobal("C0KarihiKnowsFamilyStory","GLOBAL",1)~ + KARIHI-F4-7

CHAIN C0KARIHJ KARIHI-F4-7
~Perhaps I am describing it in too direct terms. I did not personally kill them, but I am responsible nonetheless. The guilt lies entirely on me.~
= ~I have told you I hail from noble origins from a distant land. What you do not know is that my homeland is... primitive, in simple terms. It is an ancient, theocratic empire, with all such a place entails. Slavery, corruption and treachery... at least, that is how I knew my homeland.~
= ~To survive in such a land, even as one of the nobility... one cannot trust beyond their own blood, and sometimes even less than that. I did not care for it, and my scholarly ventures to other societies only convinced me further that our way was hopelessly flawed, and I distanced myself as much as was possible.~
= ~My elder sister, Azra, on the other hand, as my parents' most valued child, was frequently used as a pawn in their games of politics. I despised how she was manipulated, but she did not care... she even enjoyed it, in her own way, as she was clever in a way I never was.~
= ~That is, until she was arranged to be wed to a powerful noble of a rival house. He was, as politer terms cannot serve to describe it, a treacherous, self-serving piece of scum, who would only have viewed Azra as property. My sister, as well as my father... they both knew it well.~
= ~It was not her desire, but she was willing to do it for the family's sake... but I refused to allow her. In my arrogance and rage, I defied my parents on the day my sister was to be taken and challenged her suitor to a magical duel to release her from her bond. I was a talented mage, all too confident in my ability. Though I knew I lacked the status for such a demand, I was fortunate enough that the man was as prideful as I am... and agreed.~
END
++ ~I would not call you arrogant. You did what you thought best.~ + KARIHI-F4-8
++ ~What happened next?~ + KARIHI-F4-9

CHAIN C0KARIHJ KARIHI-F4-8
~I wonder if you would still claim that, if you knew the rest of the story.~
EXTERN C0KARIHJ KARIHI-F4-9

CHAIN C0KARIHJ KARIHI-F4-9
~To my dismay as we stood on opposite sides of the hall and traded arcane fire, he was not merely boastful, but a talented mage... perhaps more than I was. Worse still, he taunted me with every breath that was not spent on incantations, of how pitiful I was, how I was nothing compared to my sister, that all my efforts would only serve to be my disgrace...~
= ~It was too much. My heart was filled with rage at every word he spoke, and before I knew it, I... lost control of my magic, for the first time since my earliest years of training... and struck with the most powerful flames I had ever conjured... and it was over in an instant.~
= ~The entire crowd there, who jeered and mocked me as we fought... they were all silent. My parents, my own sister... they all looked at me with expressions of horror. I knew immediately what a terrible mistake I had made—the duel was not to the death, yet I had killed my opponent. Though we could not be punished at the moment, I knew my actions would have consequences... but I never would have expected what happened in the end.~
END
++ ~Were your family executed?~ + KARIHI-F4-10
++ ~Did the opposing house murder your family?~ + KARIHI-F4-11
++ ~What happened next?~ + KARIHI-F4-11

CHAIN C0KARIHJ KARIHI-F4-10
~The laws of my homeland held no power over my family over my actions... though I had broken the terms of the duel, I could not be justly punished. But I had exposed myself as a danger to the other powerful nobility, and so they... not only turned a blind eye to what would inevitably happened, but doubtlessly supported our enemies from the shadows.~
EXTERN C0KARIHJ KARIHI-F4-11

CHAIN C0KARIHJ KARIHI-F4-11
~Three nights afterwards, my house fell. My father was poisoned in his own study. Assassins slaughtered my household to the last man, even the slaves... it was so sudden, so hopeless... it was as though they had prepared to do such a thing from the beginning, and my actions were only the excuse.~
= ~Azra and I managed to evade the first two assassins sent after us, and despite my protests, she slaughtered two slaves and transmuted them to take our forms. We made our escape in a secret passageway in my sister's bedroom, which only the two of us knew, as it was often used for her private escapades... and yet, somehow our enemies found us there still, perhaps through magic... I knew it would be impossible for us both to survive the night.~
END
++ ~Did your sister save you?~ + KARIHI-F4-12
++ ~You tried to save your sister, didn't you?~ + KARIHI-F4-12
++ ~How did you survive?~ + KARIHI-F4-12

CHAIN C0KARIHJ KARIHI-F4-12
~We knew the only hope was for one of us to stay and aid in the other's escape. I demanded Azra to allow me to stay, as even then I knew it were my actions had led to this... in my mind, she must have despised me for my actions, and would have been all too happy to let me die.~
= ~Instead, she stopped me. Before I could do anything, she wreathed herself in flames and lept towards the mages who stood in our way, and unleashed a firestorm using her own body as a catalyst... and when the flames dispersed, only ashes remained.~
= ~My sister, despite everything I had done, still considered my life worth more than hers. I could not understand it, and, not knowing what to do, I... ran. I ran as far as my legs could carry me, and fled on a northbound ship using what items of value I carried as payment for passage.~
= ~And so, in the span of one night, I had lost everything. All that happened afterwards was meaningless... until I found my way to the Dales, where I believed even my enemies would never find me, and I met you in Easthaven. That is the entirety of my pathetic tale.~
END
+ ~Global("C0KarihiSlept","GLOBAL",3)~ + ~I... understand why you are so haunted now.~ + KARIHI-F4-13
++ ~What a horrible tale. I can't believe you've endured such tragedies.~ + KARIHI-F4-14
++ ~You were right. You are a coward.~ + KARIHI-F4-15

CHAIN C0KARIHJ KARIHI-F4-13
~Not a single day goes by that I do not have nightmares of that day, and the souls of everyone who died because of my actions... my father, my mother, Azra, my cousins, even the slaves who my sister disguised as us... their faces judging me, cursing me.~
= ~Do you think me a pathetic wretch, <PLAYER1>, knowing what you do now? Do you see me as I do, a walking tragedy who has ruined all I hold dear with my foolishness and pride?~
END
++ ~I don't see you that way. And... neither should you, I believe.~ + KARIHI-F4-16
++ ~I think you're a coward.~ + KARIHI-F4-15

CHAIN C0KARIHJ KARIHI-F4-14
~I do not consider it endurance. I only live from the sacrifices of others... sacrifices I did not deserve.~
EXTERN C0KARIHJ KARIHI-F4-13

CHAIN C0KARIHJ KARIHI-F4-16
~Do you believe that? Even as the ghosts of my family condemn me for my failures each night, as I continue to live this stolen life? What reason do I have to forgive myself?~
END
++ ~Those aren't the ghosts of your family you see. They're just manifestations of your guilt.~ + KARIHI-F4-17
++ ~Your sister sacrificed herself for you... she would have wanted you to live, not continue to punish yourself.~ + KARIHI-F4-18
++ ~I don't believe you're at fault. You're just as much a victim as those who died.~ + KARIHI-F4-19
++ ~I can't answer that for you. I'm sorry.~ + KARIHI-F4-20

CHAIN C0KARIHJ KARIHI-F4-17
~Do I not deserve to feel guilt, after all I have done? With no way to make amends, should I not be punished?~
EXTERN C0KARIHJ KARIHI-F4-20

CHAIN C0KARIHJ KARIHI-F4-18
~And I wished for her to have lived instead. Am I wrong to do so?~
EXTERN C0KARIHJ KARIHI-F4-20

CHAIN C0KARIHJ KARIHI-F4-19
~I am both the victim, and the murderer? *laugh* Such a sad irony.~
EXTERN C0KARIHJ KARIHI-F4-20

CHAIN C0KARIHJ KARIHI-F4-20
~I do not expect an answer from you, <PLAYER1>. You can do no more for me than you can for Larrel, who holds an eternal vigil over the Hand for the mistakes he made in life.~
= ~Now, enough of this. You have bigger concerns than my personal burdens. But... I thank you for being willing to listen. I had not expected such kindness after learning the truth.~
END
IF ~!Global("C0KarihiRomanceActive","GLOBAL",1)~ EXTERN C0KARIHJ KARIHI-F4-21
IF ~Global("C0KarihiRomanceActive","GLOBAL",1)~ EXTERN C0KARIHJ KARIHI-F4-22

CHAIN C0KARIHJ KARIHI-F4-21
~If nothing else, I am glad to have found you after losing everything I once had.~
EXIT

CHAIN C0KARIHJ KARIHI-F4-22
~Even despite lashing out at you after spending our night together, and treating you harshly through no fault of yours... you would still try to comfort me. Am I truly worth so much to you?~
END
++ ~Yes, you are.~ + KARIHI-F4-23
++ ~I want to help you, Karihi.~ + KARIHI-F4-24
++ ~I'm sorry, Karihi. My feelings for you have faded.~ + KARIHI-F4-25

CHAIN C0KARIHJ KARIHI-F4-23
~I do not deserve such kindness, <PLAYER1>.~
EXTERN C0KARIHJ KARIHI-F4-26

CHAIN C0KARIHJ KARIHI-F4-24
~I cannot see how, <PLAYER1>. The damage is done, and there is nothing left to mend.~
EXTERN C0KARIHJ KARIHI-F4-26

CHAIN C0KARIHJ KARIHI-F4-25
~I... see. It is painful, but I do not blame you.~
= ~Let us move past this. I hope... we will keep our trust in each others as companions, at least.~
DO ~SetGlobal("C0KarihiRomanceActive","GLOBAL",3)~ EXIT

CHAIN C0KARIHJ KARIHI-F4-26
~Still... thank you. And truly... I am sorry.~
EXIT

CHAIN C0KARIHJ KARIHI-F4-15
~Yes, I am a coward. A coward who is of no worth to anyone, even those to whom I have shared bread and shared my deepest thoughts with.~
= ~I would say I regret speaking any of this to you, but... I am too tired for your opinion to even be worth anything as of now. I have spoken enough.~
END
IF ~!Global("C0KarihiRomanceActive","GLOBAL",1)~ EXIT
IF ~Global("C0KarihiRomanceActive","GLOBAL",1)~ DO ~SetGlobal("C0KarihiRomanceActive","GLOBAL",3)~ EXIT

CHAIN C0KARIHJ KARIHI-F4-X
~Then I will simply hold my peace.~
END
IF ~!Global("C0KarihiRomanceActive","GLOBAL",1)~ EXIT
IF ~Global("C0KarihiRomanceActive","GLOBAL",1)~ DO ~SetGlobal("C0KarihiRomanceActive","GLOBAL",3)~ EXIT

// FRIENDSHIP/ROMANCE 5

CHAIN IF WEIGHT #-1 ~Global("C0KarihiFriendTalk5","GLOBAL",1)~ THEN C0KARIHJ KARIHI-F5
~This has been a most tedious, wearying journey. I can only hope it approaches its end soon.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiFriendTalk5","GLOBAL",1)~
END
++ ~I have no doubt the end is not far ahead of us.~ + KARIHI-F5-1
++ ~As do I.~ + KARIHI-F5-2
++ ~Not me. I've been enjoying this adventure.~ + KARIHI-F5-3
++ ~Will you never stop complaining?~ + KARIHI-F5-X

CHAIN C0KARIHJ KARIHI-F5-1
~If it is, then we are no doubt soon to face the strongest our foes have to offer. The journey up till now has hardly been more than a nuisance.~
EXTERN C0KARIHJ KARIHI-F5-2

CHAIN C0KARIHJ KARIHI-F5-2
~Though perhaps I should not complain. After all, supposing we defeat our foe and go out separate ways... where can I go? Would I truly be satisfied to see the ending of this tale?~
= ~I do not know. I think, perhaps, I am deluding myself. Even this conversation feels, to me, as though I am merely dragging my feet.~
END
+ ~Global("C0KarihiRomanceActive","GLOBAL",1)~ + ~You know I wouldn't abandon you once the journey's over.~ + KARIHI-F5-4
++ ~I don't mind. In truth, I enjoy talking to you.~ + KARIHI-F5-5
++ ~You're tired of the journey, but are afraid for it to end?~ + KARIHI-F5-6
++ ~I'm glad you're self aware. I wish you'd stop talking for the sake of it.~ + KARIHI-F5-X

CHAIN C0KARIHJ KARIHI-F5-3
~You were born for such a life, and sometimes, I envy you for that.~
EXTERN C0KARIHJ KARIHI-F5-2

CHAIN C0KARIHJ KARIHI-F5-4
~*sigh* My optimistic side, as stunted as it is, wishes to believe you... yet, anything could happen. It may be that neither us could survive this, and should only one of us make it, I would not wish to leave any burdens.~
EXTERN C0KARIHJ KARIHI-F5-7

CHAIN C0KARIHJ KARIHI-F5-5
~Do you? I sometimes find it bothersome to listen to myself, if I am to be entirely honest. How is it that you can be so inhumanly tolerant?~
EXTERN C0KARIHJ KARIHI-F5-7

CHAIN C0KARIHJ KARIHI-F5-6
~Simply put, yes.~
EXTERN C0KARIHJ KARIHI-F5-7

CHAIN C0KARIHJ KARIHI-F5-7
~...*laugh* I must seem pathetic to you, <PLAYER1>, to gripe about how weary I am of the journey, yet also be fearful of its end. And I would not blame you for believing so.~
= ~But is it not the end of the journey I fear... merely the parting. I no longer have a family—here, with you, I feel the closest to a replacement. But I should not be treating you as such. It is unfair to both you and my lost kin.~
= ~Instead, simply know that I consider you... a valuable friend, and perhaps my only support in this cold, unwelcoming place.~
END
+ ~Global("C0KarihiRomanceActive","GLOBAL",1)~ + ~I'm glad to know I mean that much to you.~ + KARIHI-F5-8
++ ~You'll always have a place here, if you need it.~ + KARIHI-F5-9
++ ~You're stronger than you think.~ + KARIHI-F5-10
++ ~Don't become dependent on me. I can't stand it.~ + KARIHI-F5-11

CHAIN C0KARIHJ KARIHI-F5-8
~I... would have told you sooner, had I not been held back by pride.~
EXTERN C0KARIHJ KARIHI-F5-12

CHAIN C0KARIHJ KARIHI-F5-9
~I could not ask for more.~
EXTERN C0KARIHJ KARIHI-F5-12

CHAIN C0KARIHJ KARIHI-F5-10
~I do not believe I am, <PLAYER1>, not yet. Though perhaps in time, with your influence, I will be.~
EXTERN C0KARIHJ KARIHI-F5-12

CHAIN C0KARIHJ KARIHI-F5-11
~I did not mean to imply as such. Though... your tone suggests my sentiments are unappreciated. Very well, then.~
END
IF ~!Global("C0KarihiRomanceActive","GLOBAL",1)~ EXIT
IF ~Global("C0KarihiRomanceActive","GLOBAL",1)~ DO ~SetGlobal("C0KarihiRomanceActive","GLOBAL",3)~ EXIT

CHAIN C0KARIHJ KARIHI-F5-12
~That is all I wished to say, <PLAYER1>. For however much longer you need me, I will be here, with my magic at your command.~
EXIT

CHAIN C0KARIHJ KARIHI-F5-X
~Why, have you not grown used to it by now? So be it, I will hold my tongue.~
END
IF ~!Global("C0KarihiRomanceActive","GLOBAL",1)~ EXIT
IF ~Global("C0KarihiRomanceActive","GLOBAL",1)~ DO ~SetGlobal("C0KarihiRomanceActive","GLOBAL",3)~ EXIT

// FRIENDSHIP/ROMANCE 6

CHAIN IF WEIGHT #-1 ~Global("C0KarihiFriendTalk6","GLOBAL",1)~ THEN C0KARIHJ KARIHI-F6
~<PLAYER1>? I wish to... no, 'twould be more tactful for me to implore for a moment of your time, if it is not too much to ask.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiFriendTalk6","GLOBAL",1)~
END
+ ~Global("C0KarihiRomanceActive","GLOBAL",1)~ + ~You know I always have time for you.~ + KARIHI-F6-ROM
++ ~Of course.~ + KARIHI-F6-1
++ ~You're not acting like yourself. What's wrong?~ + KARIHI-F6-2
++ ~I don't have time for you right now.~ + KARIHI-F6-X

CHAIN C0KARIHJ KARIHI-F6-ROM
~I am aware. And I am appreciative of your attention, as well as your patience, despite my... improper behavior at times.~
EXTERN C0KARIHJ KARIHI-F6-3

CHAIN C0KARIHJ KARIHI-F6-1
~I... thank you, <PLAYER1>.~
EXTERN C0KARIHJ KARIHI-F6-3

CHAIN C0KARIHJ KARIHI-F6-2
~I do not feel entirely myself today. But perhaps that is for the better.~
EXTERN C0KARIHJ KARIHI-F6-3

CHAIN C0KARIHJ KARIHI-F6-3
~There are many thoughts on my mind, but I doubt many will have much importance to you. But some are meant for you, and I wish to say them in confidence.~
== C0KARIHJ ~You know of my past, the mistakes that drove me to this frigid land. Fate saw fit to not only cross our paths, but put us unto this journey together.~
== C0KARIHJ IF ~Alignment(Myself,MASK_GOOD)~ THEN ~Were I still the person I was before meeting you, my pride would not ever allow me to admit it, but I wish to... thank you. Both for your company, and your wisdom. Your influence has allowed me to put some of my past to rest, and give me hope for the future.~
== C0KARIHJ IF ~!Alignment(Myself,MASK_GOOD)~ THEN ~For all the ridiculous ventures, close brushes with death, and relentless bite of the cold northern wind that I have suffered, I... do not regret my decision to join you. I thought you should know that.~
== C0KARIHJ ~Moreover, I feel I should... apologize. I know I have not been the most agreeable of companions, and I am not proud of it. You are a worthy leader, and a friend... and you are deserving of respect.~
END
++ ~You give yourself too little credit. I value your company as much as your skills.~ + KARIHI-F6-4
++ ~After knowing your history, I do not blame you.~ + KARIHI-F6-4
+ ~Alignment(Myself,MASK_GOOD)~ + ~Does this mean you're willing to change?~ + KARIHI-F6-5A
+ ~!Alignment(Myself,MASK_GOOD)~ + ~Does this mean you're willing to change?~ + KARIHI-F6-5B
++ ~Good that you know now. If it weren't for your magic, I would not have been so tolerant.~ + KARIHI-F6-6

CHAIN C0KARIHJ KARIHI-F6-4
~Is that so? That is reassuring, assuming you are not saying so merely to make me feel better.~
EXTERN C0KARIHJ KARIHI-F6-7

CHAIN C0KARIHJ KARIHI-F6-5A
~I—yes, I have been considering it. Perhaps, indeed, it is time for me to lay down my burdens and examine myself for who I am... and who I would rather be.~
EXTERN C0KARIHJ KARIHI-F6-7

CHAIN C0KARIHJ KARIHI-F6-5B
~Perhaps. There is still much that is uncertain, regarding where my path lies and what I should do... but at the very least, I would not wish to hold onto my bitterness forever.~
EXTERN C0KARIHJ KARIHI-F6-7

CHAIN C0KARIHJ KARIHI-F6-6
~*snort* There was once a time where I would not have let you off so lightly for such a remark. That said... I cannot disagree with you.~
EXTERN C0KARIHJ KARIHI-F6-7

CHAIN C0KARIHJ KARIHI-F6-7
~I have wandered for too long, thinking to escape my past, yet it is only now that I feel I have managed to release myself from it. Now, it is time to ponder where my future leads.~
= ~Once, I was a youth full of ambitions for power and comfort. The destruction of my family had all but crushed such dreams... but I am stronger now, and I admit the thought of carving my own place in the world, free of any troubles, is an appealing one.~
END
IF ~!Global("C0KarihiRomanceActive","GLOBAL",1)~ EXTERN C0KARIHJ KARIHI-F6-8
IF ~Global("C0KarihiRomanceActive","GLOBAL",1)~ EXTERN C0KARIHJ KARIHI-F6-9

CHAIN C0KARIHJ KARIHI-F6-8
~But such plans will have to wait, for the immediate crisis before us is of far greater import. And I shall assist you with all my power to bring it to an end.~
EXIT

CHAIN C0KARIHJ KARIHI-F6-9
~And... before we move on, there is one more thing I wish to confess to you.~
= ~For all of my experiences, there is nothing I have valued more than the time we have spent together. Even at my worst, you have been patient and kind, more than I deserve. I would not exchange you for all the power in the world.~
= ~I have not felt such strong feelings towards another, beyond that of friends and family... perhaps ever. And it is difficult for me to speak plainly, much as I wish to...~
END
++ ~You don't have to say more, Karihi. I love you.~ + KARIHI-F6-10
++ ~Please, stop. I do not wish to hurt you, but... I do not feel the same.~ + KARIHI-F6-11

CHAIN C0KARIHJ KARIHI-F6-10
~...ah.~
= ~You are much stronger than I am after all, <PLAYER1>. But that is no surprise... I would not have so easily fallen for anyone else.~
= ~(She leans forward and kisses you, and as she parts, the warmth on your lips linger.)~
= ~Thank you.~
DO ~SetGlobal("C0KarihiRomanceActive","GLOBAL",2)~ EXIT

CHAIN C0KARIHJ KARIHI-F6-11
~I see.~
= ~That is disappointing... but do not concern yourself over me, <PLAYER1>. I at least feel better for having spoken my mind.~
DO ~SetGlobal("C0KarihiRomanceActive","GLOBAL",3)~ EXIT

CHAIN C0KARIHJ KARIHI-F6-X
~...Hmph.~
= ~So be it. I apologize for distracting you with my insignificant thoughts.~
END
IF ~!Global("C0KarihiRomanceActive","GLOBAL",1)~ EXIT
IF ~Global("C0KarihiRomanceActive","GLOBAL",1)~ DO ~SetGlobal("C0KarihiRomanceActive","GLOBAL",3)~ EXIT

// AR2101 - ORRICK'S TOWER

CHAIN IF WEIGHT #-1 ~Global("C0KarihiTalkAR2101","AR2101",1)~ THEN C0KARIHJ KARIHI-AR2101
~My, the people here in Kuldahar are trusting, aren't they? Allowing a wizard's tower to exist so close to their homes. It's a far cry from the attitudes I've seen towards mages in the southern lands.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiTalkAR2101","AR2101",1)~
EXIT

// AR2111 - AFTER TALKING TO LYSAN

CHAIN IF WEIGHT #-1 ~Global("C0KarihiTalkLysan","AR2111",2)~ THEN C0KARIHJ KARIHI-AR2111
~...Curious.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiTalkLysan","AR2111",1)~
END
++ ~What's wrong?~ + KARIHI-AR2111-1
++ ~I didn't think you'd be fascinated by frigid Northern women, Karihi.~ + KARIHI-AR2111-2
++ ~Keep whatever thoughts you're holding to yourself.~ EXIT

CHAIN C0KARIHJ KARIHI-AR2111-1
~It may be nothing. I doubt you noticed the look of contempt that woman aimed in my direction as she was leaving anyway.~
EXTERN C0KARIHJ KARIHI-AR2111-3

CHAIN C0KARIHJ KARIHI-AR2111-2
~I am not. You would consider yourself foolish to have even thought it, if you had seen the look of contempt that woman aimed in my direction.~
EXTERN C0KARIHJ KARIHI-AR2111-3

CHAIN C0KARIHJ KARIHI-AR2111-3
~Perhaps she did it instinctively, or she believed I would not notice from how brief it was, but I am well-conditioned to notice such things.~
= ~My presence inspires many immediate reactions, but rarely contempt. You would do well to be wary of that one—that cold look in her eyes was enough to even send a chill down my spine.~
EXIT

// AR3001 - AFTER KILLING LYSAN

CHAIN IF WEIGHT #-1 ~Global("C0KarihiTalkLysanKill","AR3001",1)~ THEN C0KARIHJ KARIHI-AR3001
~And so, fire triumphs. As it was meant to.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiTalkLysanKill","AR3001",1)~
EXIT

// AR3502 - BLACK WOLF'S TOMB

CHAIN IF WEIGHT #-1 ~Global("C0KarihiTalkBlackWolf","AR3502",1)~ THEN C0KARIHJ KARIHI-BLACK-WOLF
~Ack! *cough!* The dust here is... *ugh!* even thicker than all the rest of these tombs. We must be the first living beings to set foot here in eons!~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiTalkBlackWolf","AR3502",1)~
END
++ ~This tomb must have been built centuries ago. Perhaps even millenia.~ + KARIHI-BLACK-WOLF-1
++ ~Perhaps, but it's not abandoned. I feel like someone's watching us.~ + KARIHI-BLACK-WOLF-2
++ ~Nothing a good old duster and some elbow grease wouldn't solve.~ + KARIHI-BLACK-WOLF-3
++ ~Be quiet. We don't know what could be ahead of us.~ EXIT

CHAIN C0KARIHJ KARIHI-BLACK-WOLF-1
~Wonderful. So it is not merely an evil we seek, but an ancient evil. I can only pray that you are not leading us to our doom.~
EXIT

CHAIN C0KARIHJ KARIHI-BLACK-WOLF-2
~Yes... I suspect the same. I highly doubt these undead guardians are acting without the guidance of some unseen master. We shall see soon enough.~
EXIT

CHAIN C0KARIHJ KARIHI-BLACK-WOLF-3
~*snort* Certainly, so long as I am not the one doing the cleaning.~
EXIT

// AR3600 - TEMPLE OF THE FORGOTTEN GOD

CHAIN IF WEIGHT #-1 ~Global("C0KarihiTalkAR3602","AR3602",1)~ THEN C0KARIHJ KARIHI-AR3602
~Well, this is all very, very... forboding. Who knows what could lie ahead of those doors.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiTalkAR3602","AR3602",1)~
END
++ ~We'll just have to find out.~ + KARIHI-AR3602-1
++ ~I need you focused, Karihi.~ + KARIHI-AR3602-2
++ ~Let's go.~ EXIT

CHAIN C0KARIHJ KARIHI-AR3602-1
~At best, we run into the same nuisances that have plagued us throughout the rest of this mountain. At worst, we find nothing at all. Somehow, I am more inclined to believe in the latter.~
EXIT

CHAIN C0KARIHJ KARIHI-AR3602-2
~I am *always* focused, <PLAYER1>. I am merely speculating as to what awaits us.~
EXTERN C0KARIHJ KARIHI-AR3602-1

CHAIN IF WEIGHT #-1 ~Global("C0KarihiTalkAR3603","AR3603",1)~ THEN C0KARIHJ KARIHI-AR3603
~*snort* There's absolutely nothing here. What a surprise.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiTalkAR3603","AR3603",1)~
END
++ ~Well, this is unfortunate.~ + KARIHI-AR3603-1
++ ~Looks like your hunch was right.~ + KARIHI-AR3603-2
++ ~Damn.~ + KARIHI-AR3603-1

CHAIN C0KARIHJ KARIHI-AR3603-1
~We are returning to Kuldahar, I presume. And no doubt, from there, to another hunt grounded firmly on chance. This appears to be a frequent occurrence within our journey.~
EXIT

CHAIN C0KARIHJ KARIHI-AR3603-2
~There are those few times in which I regret being right.~
EXTERN C0KARIHJ KARIHI-AR3603-1

// AR2100 - KULDAHAR ATTACKED

CHAIN IF WEIGHT #-1 ~Global("C0KarihiTalkKuldaharAttacked","AR2100",1)~ THEN C0KARIHJ KARIHI-KULDAHAR-ATTACKED
~Ah, of course. The unexpected, unpleasant, and highly unwanted, homecoming parade. What else did I expect from this ridiculous journey?~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiTalkKuldaharAttacked","AR2100",1)~
= ~I hardly think I need to explain our first course of action. We need to bring the Gem to Arundel. Now.~
EXIT

// AR5000 - OUTSIDE THE SEVERED HAND

CHAIN IF WEIGHT #-1 ~Global("C0KarihiTalkAR5000","AR5000",1)~ THEN C0KARIHJ KARIHI-SEVERED
~The remnants of insanity at work. Now I truly have seen everything.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiTalkAR5000","AR5000",1)~
END
++ ~Was that Larrel?~ + KARIHI-SEVERED-1
++ ~This seems promising.~ + KARIHI-SEVERED-2

CHAIN C0KARIHJ KARIHI-SEVERED-1
~If it was, then he is looking the worse for wear.~
EXTERN C0KARIHJ KARIHI-SEVERED-2

CHAIN C0KARIHJ KARIHI-SEVERED-2
~It appears that the former Hand of the Seldarine met quite a grim fate indeed. I suspect little more than shadows call this place home now.~
END
IF ~!Global("C0KarihiSlept","GLOBAL",2)~ EXIT
IF ~Global("C0KarihiSlept","GLOBAL",2)~ + KARIHI-SEVERED-3

CHAIN C0KARIHJ KARIHI-SEVERED-3
~Nonetheless, we should make the climb and be done with it... why are you looking at me like that, <PLAYER1>?~
END
++ ~I'm worried about you.~ + KARIHI-SEVERED-4
++ ~Don't you want to talk about...?~ + KARIHI-SEVERED-4
++ ~Nothing... you're right. We should go.~ EXIT

CHAIN C0KARIHJ KARIHI-SEVERED-4
~Bah! I think you have other things to be concerned over. Just leave me be.~
EXIT

// AR6005 - LICH

CHAIN IF WEIGHT #-1 ~Global("C0KarihiTalkAR6005","AR6005",1)~ THEN C0KARIHJ KARIHI-AR6005
~Don't get complacent. We're not done with that thing yet.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiTalkAR6005","AR6005",1)~
END
+ ~OR(2)
CheckStatGT(Player1,12,INT)
Class(Player1,MAGE_ALL)~ + ~I know. We need to find the phylactery, quickly.~ + KARIHI-AR6005-1
+ ~!CheckStatGT(Player1,12,INT)
!Class(Player1,MAGE_ALL)~ + ~What do you mean?~ + KARIHI-AR6005-2
++ ~I don't need you to tell me what to do.~ EXIT

CHAIN C0KARIHJ KARIHI-AR6005-1
~What tiresome creatures liches are. Not to mention utterly hideous and devoid of style. Ugh.~
EXIT

CHAIN C0KARIHJ KARIHI-AR6005-2
~*sigh* Must I explain everything down to the last detail? A lich's essence is stored within their phylactery. So long as the phylactery remains, the lich will reform in due time.~
= ~We had best find the phylactery quickly before the creature rises to hound us again.~
EXIT

// AR6013 - FORGE RELIT

CHAIN IF WEIGHT #-1 ~Global("C0KarihiTalkAR6013","AR6013",1)~ THEN C0KARIHJ KARIHI-FORGE-RELIT
~Ah! Now this is a far more pleasing locale compared to the cold chill I have been forced to endure.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiTalkAR6013","AR6013",1)~
EXIT

// AR1100 - Easthaven Attacked

CHAIN IF WEIGHT #-1 ~Global("C0KarihiBackToEasthaven","AR1100",1)~ THEN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED
~So... we are back where it all began. And... appropriately, here is where it shall end.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiBackToEasthaven","AR1100",1)~
= ~I do not often feel sentiment, but... looking at what remains of this place, compared to what it once was... it makes me envy the time when the worst I had to face was a rat scurrying across the floor of an inn.~
= ~The same inn that once stood before us. I still recall, clear as day, myself standing by the door... shivering from the cold that barely fazes me now. What a childish person I was.~
END
+ ~Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~I'm glad I met you, regardless.~ + KARIHI-EASTHAVEN-ATTACKED-ROM
++ ~Those were simpler days.~ + KARIHI-EASTHAVEN-ATTACKED-1
+ ~Alignment(Myself,MASK_GOOD)~ + ~Perhaps, but you've changed since then.~ + KARIHI-EASTHAVEN-ATTACKED-2
+ ~!Alignment(Myself,MASK_GOOD)~ + ~You're not so different from when I met you.~ + KARIHI-EASTHAVEN-ATTACKED-3
++ ~Do you regret being part of this journey?~ + KARIHI-EASTHAVEN-ATTACKED-4
++ ~We've all become stronger and wiser since then.~ + KARIHI-EASTHAVEN-ATTACKED-5
++ ~This is no time for self-reflection. Let's get going.~ + KARIHI-EASTHAVEN-ATTACKED-X

CHAIN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED-X
~Hmph. So be it.~
EXIT

CHAIN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED-ROM
~And I you... meeting you is, perhaps, the sole blessing I have received thus far in the North.~
EXTERN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED-6

CHAIN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED-1
~Were they truly? I was but a fallen noble, fleeing from the cinders of my past, without the power to affect my fate, only be carried by it. Now, those troubles seem simple, and distant... but only because of the power I now wield.~
EXTERN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED-6

CHAIN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED-2
~Only due to your blighted influence, <PLAYER1>. Were it not for you, I may have built myself a small empire in the Silver Marches by now... and I would not have been happier for it.~
EXTERN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED-6

CHAIN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED-3
~Perhaps—if there is one thing I have learned after all this time, it is that I cannot change my nature.~
EXTERN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED-6

CHAIN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED-4
~What a preposterous suggestion. Have I found it entirely pleasing throughout? No. But I do not regret what I have gained.~
EXTERN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED-6

CHAIN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED-5
~Yes. The cost was great, yet I would not exchange what I have now for the blissful ignorance of the past.~
EXTERN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED-6

CHAIN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED-6
~We have fought so many battles, undergone so many hardships... under normal circumstances, I would have considered all of this a horrible nightmare. But strangely, it t'were truly a dream, I would not be in such a hurry for it to end.~
== C0KARIHJ IF ~NumInPartyGT(2)~ THEN ~I lost the family I knew. Yet here, I find myself among those as close to me as any friend, any sibling... and if this journey is to end, I would not like for our companionship to do the same.~
== C0KARIHJ IF ~!NumInPartyGT(2)~ THEN ~I lost the family I knew. Yet here, I find myself among one as close to me as any friend, any sibling... and if this journey is to end, I would not like for our companionship to do the same.~
== C0KARIHJ ~Were this all in my hands, I would not care for my fate. There is no past for me, and no clear future. But here, with you... I wish for nothing more than victory. Not only for my sake, but for those that I now hold dear.~
END
+ ~Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~We'll make it through together. And after that... I hope we'll be able to spend some time together.~ + KARIHI-EASTHAVEN-ATTACKED-ROM-1
+ ~Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~There will be a future for us, my love. I promise you.~ + KARIHI-EASTHAVEN-ATTACKED-ROM-1
+ ~!Global("C0KarihiRomanceActive","GLOBAL",2) NumInPartyGT(2)~ + ~I'm glad to see you've grown to care about me.~ + KARIHI-EASTHAVEN-ATTACKED-7
+ ~!Global("C0KarihiRomanceActive","GLOBAL",2) !NumInPartyGT(2)~ + ~I'm glad to see you've grown to care about us.~ + KARIHI-EASTHAVEN-ATTACKED-7
++ ~We'll be fine. I promise.~ + KARIHI-EASTHAVEN-ATTACKED-8
++ ~Let's go and win, then.~ + KARIHI-EASTHAVEN-ATTACKED-9

CHAIN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED-ROM-1
~We shall have a grand future together, <PLAYER1>. Our names will become legend, and we will forge an empire with our power.~
= ~Or... we may live a simpler, more peaceful life, if that is what you prefer. It matters not, so long as I am with you.~
EXTERN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED-7

CHAIN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED-7
~Once, my magic was wild, uncontrollable, and destroyed everything I held dear. But I am not that foolish girl any longer. This magic will now serve to protect those I care for in the present.~
= ~My power is yours, <PLAYER1>. And with my power, we will grasp victory, no matter how far we must reach.~
EXIT

CHAIN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED-8
~Of course we will. With my power and your leadership, there could be no other outcome.~
END
IF ~Global("C0KarihiRomanceActive","GLOBAL",2)~ + KARIHI-EASTHAVEN-ATTACKED-ROM-1
IF ~!Global("C0KarihiRomanceActive","GLOBAL",2)~ + KARIHI-EASTHAVEN-ATTACKED-1

CHAIN C0KARIHJ KARIHI-EASTHAVEN-ATTACKED-9
~So be it. Victory will be ours this day.~
EXIT

// AR9500 - Gloomfrost

CHAIN IF WEIGHT #-1 ~Global("C0KarihiTalkAR9500","AR9500",1)~ THEN C0KARIHJ KARIHI-GLOOMFROST
~This... is... unbearable.~ [C0BLANK]
= ~There are places those of my blood should never venture to, and this frigid hell stands on a level above the rest.~
DO ~IncrementGlobal("C0KarihiTalkAR9500","AR9500",1)~
END
++ ~I'm sorry. I would never have brought you here if I didn't need your skills.~ + KARIHI-GLOOMFROST-1
++ ~I had no idea it'd be this cold.~ + KARIHI-GLOOMFROST-2
++ ~Oh, quit complaining.~ EXIT

CHAIN C0KARIHJ KARIHI-GLOOMFROST-1
~Well, it is good that you recognize that much. You should be thankful I am willing to endure this torture for your sake.~
EXTERN C0KARIHJ KARIHI-GLOOMFROST-3

CHAIN C0KARIHJ KARIHI-GLOOMFROST-2
~Each time I believe I have suffered the worst the frozen North has to offer, I am struck with cold, painful disappointment. Each. And. Every. Time.~
EXTERN C0KARIHJ KARIHI-GLOOMFROST-3

CHAIN C0KARIHJ KARIHI-GLOOMFROST-3
~I cannot say this bodes well. Only a madwoman would choose such an inhospitable place as a home of any sort. I hold my doubts that this venture will even bear fruit.~
END
IF ~!Global("C0KarihiRomanceActive","GLOBAL",2)~ EXIT
IF ~Global("C0KarihiRomanceActive","GLOBAL",2)~ + KARIHI-GLOOMFROST-ROM

CHAIN C0KARIHJ KARIHI-GLOOMFROST-ROM
~*shivers*~
END
++ ~(Embrace her, sharing your warmth.)~ + KARIHI-GLOOMFROST-ROM-1
++ ~Just bear it for now. We won't be here longer than necessary.~ EXIT

CHAIN C0KARIHJ KARIHI-GLOOMFROST-ROM-1
~Ah... that does make it somewhat better.~
= ~I would reward you with a kiss, but I fear the damnable cold would ruin that as well. We should move quickly.~
EXIT

// Seeing Remorhaz 

CHAIN IF WEIGHT #-1 ~Global("C0KarihiSeeRemorhaz","GLOBAL",1)~ THEN C0KARIHJ KARIHI-REMORHAZ
~What in Mystra's name is that repulsive-looking creature?!~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiSeeRemorhaz","GLOBAL",1)~
END
+ ~OR(3)
CheckStatGT(Player1,40,LORE)
Class(Player1,DRUID_ALL)
Class(Player1,RANGER_ALL)~ + ~It's a remorhaz! Be careful, it's extremely dangerous!~ + KARIHI-REMORHAZ-1
+ ~!CheckStatGT(Player1,40,LORE)
!Class(Player1,DRUID_ALL)
!Class(Player1,RANGER_ALL)~ + ~I don't know. But it looks dangerous.~ + KARIHI-REMORHAZ-2
++ ~Doesn't matter what it is, just kill it!~ EXIT

CHAIN C0KARIHJ KARIHI-REMORHAZ-1
~Ah, the dreaded 'polar worms' I have heard about. It is even more hideous than I imagined it!~
EXIT
 
CHAIN C0KARIHJ KARIHI-REMORHAZ-2
~Is this one of the dreaded 'polar worms' I have heard about? It is even more hideous than I imagined it!~
EXIT
 
// Boots of the North

CHAIN IF WEIGHT #-1 ~Global("C0KarihiBootsNorthTalk","GLOBAL",1)~ THEN C0KARIHJ KARIHI-BOOTS
~Ah! These boots make the bite of winter's chill almost bearable. If only they were not so heavy, so hideous, so *white*... but I suppose one should not be too finicky in these lands.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiBootsNorthTalk","GLOBAL",1)~
EXIT

// Firetamer

CHAIN IF WEIGHT #-1 ~Global("C0KarihiFiretamerTalk","GLOBAL",1)~ THEN C0KARIHJ KARIHI-FIRETAMER
~Ugh... this belt is Thayan imitation. The work of some charlatan hoping to grasp at the embers of a pyromancer's art, no doubt. The works of my homeland would put this to shame.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiFiretamerTalk","GLOBAL",1)~
EXIT

// Ioun of Burning Stars

CHAIN IF WEIGHT #-1 ~Global("C0KarihiBurningStarsTalk","GLOBAL",1)~ THEN C0KARIHJ KARIHI-BURNING-STARS
~Hmm... a pretty trinket. It would serve as a nice ornament... though it's a pity it doesn't match my robes.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiBurningStarsTalk","GLOBAL",1)~
EXIT

// Kossuth's Blood

CHAIN IF WEIGHT #-1 ~Global("C0KarihiKossuthBloodTalk","GLOBAL",1)~ THEN C0KARIHJ KARIHI-KOSSUTH-BLOOD
~Kossuth's Blood... I recall the legends regarding how this artifact came to be. How curious that it is here, in this frigid place... ha, 'tis almost seems a heresy towards the Firelord.~ [C0BLANK]
DO ~IncrementGlobal("C0KarihiKossuthBloodTalk","GLOBAL",1)~
END
++ ~Aren't you a faithful of Mystra?~ + KARIHI-KOSSUTH-BLOOD-1
++ ~I think it would suit you.~ + KARIHI-KOSSUTH-BLOOD-2
++ ~Whatever.~ EXIT

CHAIN C0KARIHJ KARIHI-KOSSUTH-BLOOD-1
~As any true scholar of the Weave should be. But my family, as you may suspect, held reverence towards Kossuth. I, personally, am ambivalent. My 'gifts' were born of my own talents, not a god's influence as some have claimed.~
EXIT

CHAIN C0KARIHJ KARIHI-KOSSUTH-BLOOD-2
~Yes, I believe it would suit me as well. It is only natural, after all.~
EXIT

// ALPHEUS

I_C_T2 DALPHEUS 2 C0KarihiAlpheus
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~Oh, this will be fun. Time to take you Hosttower inepts down a peg!~
END

// AMBERE

INTERJECT DAMBERE 6 C0KarihiAmbere
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~You pitiful... wretched woman! Will you be so blind to ignore what you have until it is lost to you?!~
== DAMBERE ~What... what would you know? Standing there, with your gold and finery, daring to assume you know a thing about me...~
EXTERN DAMBERE 7

INTERJECT DAMBERE 8 C0KarihiAmbere2
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~Then you are not merely blind, but foolish! A foolish woman who gambles away her own dignity in a desperate hope to satisfy her own delusional dreams!~
END
+ ~GlobalGT("C0KarihiEncounter","GLOBAL",0)~ + ~This isn't about you, Karihi!~ EXTERN C0KARIHJ C0KarihiAmbere3
++ ~That's enough, Karihi!~ EXTERN C0KARIHJ C0KarihiAmbere3
++ ~You know, she does have a point.~ EXTERN C0KARIHJ C0KarihiAmbere3

CHAIN C0KARIHJ C0KarihiAmbere3
~...Hmph.~
= ~I've said my piece, <PLAYER1>. It sickens me to regard this contemptible creature any longer.~
EXTERN DAMBERE 11

// ARUNDEL

INTERJECT DARUNDEL 4 C0KarihiArundel
== C0KARIHJ IF ~NumInPartyGT(2) IsValidForPartyDialog("C0KARIHI")~ THEN ~One could deduce as much from how well planned the situation was when we were nearly killed. I think I can speak for all of us when I say we deserve a satisfactory explanation.~
== C0KARIHJ IF ~!NumInPartyGT(2) IsValidForPartyDialog("C0KARIHI")~ THEN ~One could deduce as much from how well planned the situation was when we were nearly killed. I think I can speak for us both when I say we deserve a satisfactory explanation.~
EXTERN DARUNDEL 6

INTERJECT DARUNDEL 5 C0KarihiArundel
== C0KARIHJ IF ~NumInPartyGT(2) IsValidForPartyDialog("C0KARIHI")~ THEN ~One could deduce as much from how well planned the situation was when we were nearly killed. I think I can speak for all of us when I say we deserve a satisfactory explanation.~
== C0KARIHJ IF ~!NumInPartyGT(2) IsValidForPartyDialog("C0KARIHI")~ THEN ~One could deduce as much from how well planned the situation was when we were nearly killed. I think I can speak for us both when I say we deserve a satisfactory explanation.~
EXTERN DARUNDEL 6

I_C_T DARUNDEL 39 C0KarihiArundel1
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~And the last warm ember of this frozen wasteland extinguished. That, I could sympathize with.~
END

I_C_T DARUNDEL 92 C0KarihiArundel2
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~How quaint. Are you to flee now after your pitiful attempts at intimidation, or would you prefer a taste of what suffering truly is here and now?!~
END

// BELHIFET

I_C_T DBELHIFE 11 C0KarihiBelfihet
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~You speak of inevitability in the face of impending defeat? Laughable! Your end is nigh, fiend!~
END

// COW

I_C_T DCOW 0 C0KarihiCow
== C0KARIHJ IF ~!IsGabber("C0KARIHI")
IsValidForPartyDialog("C0KARIHI")~ THEN ~Wonderful. I hope your conversation with the spotted bovine was an enlightening experience for you.~
END

I_C_T DCOW 0 C0KarihiCow
== C0KARIHJ IF ~IsGabber("C0KARIHI")
IsValidForPartyDialog("C0KARIHI")~ THEN ~I find cows uncomfortably aggrevating, with their mooing and flatulence. And I never developed a taste for milk.~
END

// CUSTHANTHOS

I_C_T DCUSTHAN 0 C0KarihiCusthanthos
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~How ridiculous. This spirit is even more insane than the rest. At least it is not violent.~
== DCUSTHAN ~Be quiet! And extinguish those flames. You will ruin the collection!~
END

// DAVIN

INTERJECT DDAVIN 0 C0KarihiDavin
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~Rescind that absurd assumption, fool. We are no servants of these cold-dwelling primitives.~
EXTERN DDAVIN 2

// DURDEL ANATHA

I_C_T DVOICEDA 0 C0KarihiDurdel1
== C0KARIHJ IF ~IsValidForPartyDialogue("C0KARIHI")~ THEN ~A bound spirit. Such beings leave little to no room for compromise. This could be troublesome.~
== DVOICEDA ~Turn back now.~
END

// ELISIA

I_C_T DELISIA 0 C0KarihiElisia
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~A sea elf... how curious. I have never seen one such creature before... ugh. Its clammy skin offends my senses.~
== DELISIA ~The woman looks pained, but does not respond.~
END

// EREVAIN

I_C_T DEREVAIN 3 C0KarihiErevain
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~Ah! Finally, somebody in this town with some sense. I thought the cold had made everyone here take leave of their senses.~
== DEREVAIN ~Well... I would not go that far as to say that.~
END

// GELARITH

I_C_T DGELARIT 9 C0KarihiGelarith
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~Quite an impressive device... if only I had an opportunity to study its purpose. Pity.~
END

// GINAFAE

I_C_T DGINAFAE 28 C0KarihiGinafae
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~And I thought this sight could not get more sickening.~
END

I_C_T DGINAFAE 13 C0KarihiGinafae2
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~Crazy? Delusional would be a more apt term.~
END

// GOBLIN MARSHAL

INTERJECT DGOBLINC 4 C0KarihiGoblin
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~Evidently the sign of a mind-effecting enchantment. A powerful one, at that.~
EXTERN DGOBLINC 6

// GRISELLA

I_C_T DGRISELL 5 C0KarihiGrisella
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~Pests infesting every establishment of this accursed town! We may as well start a great fire and eliminate them all in one fell swoop.~
== DGRISELL ~I—I think I could do without that sort of help, dearie, though I, er... appreciate the thought.~
END

I_C_T2 DGRISELL 13 C0KarihiGrisella2
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~I think I deserve a drink to wash down this urge to gag after having the little vermin get so close to my body. Blech!~
END

// Hjollder

I_C_T DHJOLLDE 26 C0KarihiHjollder1
== C0KARIHJ IF ~IsValidForPartyDialogue("C0KARIHI")~ THEN ~A rather... unconventional form of magical transportation. Rather primitive, yet I can see its appeal.~
END

// HROTHGAR

I_C_T DHROTH 5 C0KarihiHrothgar
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~This dull little town draws enough attention for its safety to be threatened? Well, there's a surprise.~
END

// KIERAN

I_C_T DKIERAN2 4 C0KarihiKieran1
== C0KARIHJ IF ~IsValidForPartyDialogue("C0KARIHI")~ THEN ~Ah. *chuckles* You have my sympathies.~
END

// KONTIK

I_C_T2 DKONTIK 8 C0KarihiKontik
== C0KARIHJ IF ~IsValidForPartyDialogue("C0KARIHI")~ THEN ~I will never grow tired of sending these Aurilite goons to a fiery grave.~
END

INTERJECT DKONTIK 0 C0KarihiKontik
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~You have neither the will nor the way to make demands of me, Aurilite.~
== DKONTIK ~Abomination! You dare to stand before me and taint the blessed chill of Auril's touch? This insult will not go unanswered!~
== C0KARIHJ ~How predictable.~
== DKONTIK ~Children of Auril! Slay them all!~
DO ~Enemy()
AddJournalEntry(20452,INFO)~ EXIT

INTERJECT DKONTIK 1 C0KarihiKontik
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~You have neither the will nor the way to make demands of me, Aurilite.~
== DKONTIK ~Abomination! You dare to stand before me and taint the blessed chill of Auril's touch? This insult will not go unanswered!~
== C0KARIHJ ~How predictable.~
== DKONTIK ~Children of Auril! Slay them all!~
DO ~Enemy()
AddJournalEntry(20452,INFO)~ EXIT

// KRESSELACK

I_C_T DKRESSEL 18 C0KarihiKresselack
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~Ah. Aurilites. Truly those deserving of an eternity trapped in the frozen pits of the fifth layer of hell.~
END

// LARREL

INTERJECT DLARREL 0 C0KarihiLarrel
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~Well, this seems promising.~
EXTERN DLARREL 0

// LUREMASTER

I_C_T DLURE 30 C0KarihiLuremaster
== C0KARIHJ IF ~IsValidForPartyDialog("C0CAED")~ THEN ~No doom shall befall my name, for I intend to achieve immortality through the pages of history.~
END

// LYSAN

CHAIN IF WEIGHT #-1 ~See("C0KARIHI")
Global("C0KarihiTalkLysan","AR2111",0)~ THEN DLYSANBA KARIHI-LYSAN
~Welcome, traveller. May I be of service to y—~
DO ~IncrementGlobal("C0KarihiTalkLysan","AR2111",1)~
END
++ ~Is something the matter?~ EXTERN C0KARIHJ KARIHI-LYSAN-1
++ ~Out with it, woman. I haven't got all day.~ EXTERN C0KARIHJ KARIHI-LYSAN-1

CHAIN C0KARIHJ KARIHI-LYSAN-1
~...?~
== DLYSANBA ~Ahem. My apologies. May I be of service?~
COPY_TRANS DLYSANBA 0

INTERJECT DLYSANPR 7 C0KarihiLysan
== C0KARIHJ IF ~IsValidForPartyDialog("C0KARIHI") Global("Know_Lysan","GLOBAL",1)~ THEN ~Is this pitiful charade truly necessary, Aurilite? After all, that piercing look you etched so deeply in my mind back in Kuldahar appears to have become a permanent fixture on your face. Most unseemly.~
DO ~SetGlobal("Know_Lysan","GLOBAL",2)~ EXTERN DLYSANPR 10

INTERJECT DLYSANPR 8 C0KarihiLysan
== C0KARIHJ IF ~IsValidForPartyDialog("C0KARIHI") Global("Know_Lysan","GLOBAL",1)~ THEN ~Is this pitiful charade truly necessary, Aurilite? After all, that piercing look you etched so deeply in my mind back in Kuldahar appears to have become a permanent fixture on your face. Most unseemly.~
DO ~SetGlobal("Know_Lysan","GLOBAL",2)~ EXTERN DLYSANPR 10

I_C_T DLYSANPR 19 C0KarihiLysan2
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~My, such arrogance! Let me see it melt to terror as my incandescent blaze reduces your goddess's gifts to dust in the wind!~
== DLYSANPR ~Oh, is that so, blasphemer? Then I swear by the Frostmaiden, I shall first smother the flames of your base existence!~
END

// MIREK

I_C_T2 DMIREK 0 C0KarihiMirek1
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~Ah, finally! A creature that burns easily. Just keep them at a distance. Their odor is sickening!~
END

I_C_T DMIREK 6 C0KarihiMirek2
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~The price had best be worth the labor and displeasure of holding onto the fetid creatures' hides for any amount of time. Ugh!~
END

// OLD JED

I_C_T DOLDJED 0 C0KarihiOldJed
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~Ugh! What an unsightly creature. Do not breathe in my direction!~
== DOLDJED ~*burp* Eh?~
END

// PERDIEM

I_C_T DPERDIEM 5 C0KarihiPerdiem1
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~This... this is a powerful display of suggestion, <PLAYER1>. Only an archmage could be capable of this. Or something... more.~
END

I_C_T DPERDIEM 10 C0KarihiPerdiem2
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~Having the power of domination of this level is... unsettling. I fear we are threatened by more than a simple magician.~
END

// POMAB

INTERJECT DPOMAB 0 C0KarihiPomab
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~"Barbarians"? Why, you loathsome little toad! You have three seconds to apologize before I turn this pathetic pawnshop into your funeral pyre!~
EXTERN DPOMAB 2

// PRESIO

I_C_T DUNDLT1 0 C0KarihiPresio
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~Hmph. This is an undead vessel serving as the eyes and ears of a necromancer, <PLAYER1>. Nothing more than a cheap parlor trick.~
== DUNDLT1 ~Such arrogant dismissiveness towards the art of unlife! You will regret your words soon enough, I assure you.~
END

// QUIMBY

CHAIN IF WEIGHT #-1 ~Global("Know_Balance","GLOBAL",0)
IsValidForPartyDialog("C0KARIHI")
Global("C0KarihiQuimby","LOCALS",0)~ THEN DQUIMBY KARIHI-QUIMBY
~Can I help y—~
DO ~IncrementGlobal("C0KarihiQuimby","LOCALS",1)~
= ~Oh, no. NO! Please, get that flamin' hot-headed witch out of here before she burns down my entire inn!~
== C0KARIHJ ~Oh, stow it, you flabby old codger. You tossed me out into that frigid devil's pit you call outdoors once and now you have the nerve to try it a second time?~
== DQUIMBY ~You set three of my chairs and a pair of my finest curtains on fire! Had I not shooed you out, I would've been the next thing to go up in flames!~
== C0KARIHJ ~There. Was. A. RAT. I told you that several times already, and if you had even the basic sense to clean up this filthy place once in a while, I would not have had to resort to such extreme measures!~ 
= ~With the disgusting infestation of pests and stench of desiccating fish by the windows, it's hardly a wonder your inn is completely barren save for that elf! How he can stand any of this is a mystery to me.~
== DQUIMBY ~But, he– I mean, I– oh, never mind. *sigh* Just... please don't burn anything else. I'm BEGGING you. Erm... can Quimby be of assistance to you?~
COPY_TRANS DQUIMBY 1

// SAABLIC

I_C_T DSAABLIC 2 C0KarihiSaablic
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~Ugh, say no more. If this creature was once a Thayan, he undoubtly more than deserves such a pitiful fate.~
== DSAABLIC ~A mage... would not so easily... choose ignorance... listen... and you will not regret...~
END

I_C_T2 DSAABLIC 10 C0KarihiSaablic1
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~This will be the first time I wittingly extend aid to a Red Wizard. May it be the only time.~
END

// ULIGAR

INTERJECT DORCCHIE 0 C0KarihiUligar
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~Ridiculous! Pay tribute to disgusting orcs? I have more respect for the dirt under my boot!~
EXTERN DORCCHIE 2

// WEENOG

I_C_T DWEENOG 0 C0KarihiWeenog
== C0KARIHJ IF ~InMyArea("C0KARIHI") IsValidForPartyDialog("C0KARIHI")~ THEN ~A goblin manservant?! I suppose even the greatest of mages must sometimes scrape the very bottom of the barrel.~
== DWEENOG ~Oh, no, no, no... this not good. Weenog will be punished if any of master's things get burned again. Where did Weenog leave that bucket? You must stands still so Weenog can put out the fire on your hair.~
== C0KARIHJ ~Wh—?! Get that thing out of my sight before I turn you into a scorching pile of stinking flesh, you varmint!~
== DWEENOG ~Aaah! Y–yes, mistress! Weenog put it away right now, mistress!~
END

// Wylfdene

I_C_T DWYLF 20 C0KarihiWylfdene1
== C0KARIHJ IF ~IsValidForPartyDialogue("C0KARIHI")~ THEN ~How predictably primitive. It'll be a pleasure to turn this one's arrogant face into ash!~
END

// Yxunomei

I_C_T DYXUN 21 C0KarihiYxunomei
== C0KARIHJ IF ~IsValidForPartyDialogue("C0KARIHI")~ THEN ~Is there any more need for words? Whatever this... thing, is, let us turn it to dust and take the Gem by force.~
END

// PID

CHAIN IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) !Alignment(Myself,MASK_GOOD)~ THEN C0KARIHJ pid
~Hmm? What do you want this time?~ [C0BLANK]
END
 + ~RandomNum(4,1)~ + ~What do you think about me?~ + rand.1
 + ~RandomNum(4,2)~ + ~What do you think about me?~ + rand.2
 + ~RandomNum(4,3)
	CheckStatGT(Player1,15,CHR)
	!Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~What do you think about me?~ + rand.3
 + ~RandomNum(4,4)
	CheckStatGT(Player1,15,CHR)
	!Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~What do you think about me?~ + rand.4
 + ~RandomNum(4,3)
	!CheckStatGT(Player1,15,CHR)
	 CheckStatGT(Player1,9,CHR)
	!Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~What do you think about me?~ + rand.5
 + ~RandomNum(4,4)
	!CheckStatGT(Player1,15,CHR)
	 CheckStatGT(Player1,9,CHR)
	!Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~What do you think about me?~ + rand.6
 + ~RandomNum(4,3)
	!CheckStatGT(Player1,9,CHR)~ + ~What do you think about me?~ + rand.7
 + ~RandomNum(4,4)
	!CheckStatGT(Player1,9,CHR)~ + ~What do you think about me?~ + rand.8
 + ~RandomNum(4,3)
	Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~What do you think about me?~ + rand.9
 + ~RandomNum(4,4)
	Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~What do you think about me?~ + rand.10
 ++ ~Do you have any advice?~ + advice
 + ~Gender(Player1,MALE)
	!Global("C0KarihiMatch","GLOBAL",1)
	Global("C0KarihiNoFlirt","GLOBAL",0)~ + ~You are very beautiful, Karihi.~ DO ~SetGlobal("C0KarihiNoFlirt","GLOBAL",1)~ + flirt.1
 + ~!Gender(Player1,MALE)~ + ~You are very beautiful, Karihi.~ DO ~SetGlobal("C0KarihiNoFlirt","GLOBAL",1)~ + flirt.2
 + ~Gender(Player1,MALE)
	Global("C0KarihiMatch","GLOBAL",1)
	!Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~You are very beautiful, Karihi.~ + flirt.3
 + ~RandomNum(4,1)
	Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~You are very beautiful, Karihi.~ + flirt.4
 + ~RandomNum(4,2)
	Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~You are very beautiful, Karihi.~ + flirt.5
 + ~RandomNum(4,3)
	Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~You are very beautiful, Karihi.~ + flirt.6
 + ~RandomNum(4,4)
	Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~You are very beautiful, Karihi.~ + flirt.7
 + ~Global("C0KarihiKnowNightmares","GLOBAL",1)~ + ~About us...~ + romancepid.locked
 + ~!Global("C0KarihiKnowNightmares","GLOBAL",1)
 OR(2)
 Global("C0KarihiRomanceActive","GLOBAL",1)
 Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~About us...~ + romancepid
 ++ ~May I ask you a question?~ + questions
 ++ ~I think there's a problem with your voice.~ + stringfix
 ++ ~I need nothing at the moment.~ EXIT
 
CHAIN IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) Alignment(Myself,MASK_GOOD)~ THEN C0KARIHJ pid
~Is there something you need?~ [C0BLANK]
END
 + ~RandomNum(4,1)~ + ~What do you think about me?~ + rand.1
 + ~RandomNum(4,2)~ + ~What do you think about me?~ + rand.2
 + ~RandomNum(4,3)
	CheckStatGT(Player1,15,CHR)
	!Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~What do you think about me?~ + rand.3
 + ~RandomNum(4,4)
	CheckStatGT(Player1,15,CHR)
	!Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~What do you think about me?~ + rand.4
 + ~RandomNum(4,3)
	!CheckStatGT(Player1,15,CHR)
	 CheckStatGT(Player1,9,CHR)
	!Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~What do you think about me?~ + rand.5
 + ~RandomNum(4,4)
	!CheckStatGT(Player1,15,CHR)
	 CheckStatGT(Player1,9,CHR)
	!Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~What do you think about me?~ + rand.6
 + ~RandomNum(4,3)
	!CheckStatGT(Player1,9,CHR)~ + ~What do you think about me?~ + rand.7
 + ~RandomNum(4,4)
	!CheckStatGT(Player1,9,CHR)~ + ~What do you think about me?~ + rand.8
 + ~RandomNum(4,3)
	Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~What do you think about me?~ + rand.9
 + ~RandomNum(4,4)
	Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~What do you think about me?~ + rand.10
 ++ ~Do you have any advice?~ + advice
 + ~Gender(Player1,MALE)
	!Global("C0KarihiMatch","GLOBAL",1)
	Global("C0KarihiNoFlirt","GLOBAL",0)~ + ~You are very beautiful, Karihi.~ DO ~SetGlobal("C0KarihiNoFlirt","GLOBAL",1)~ + flirt.1
 + ~!Gender(Player1,MALE)~ + ~You are very beautiful, Karihi.~ DO ~SetGlobal("C0KarihiNoFlirt","GLOBAL",1)~ + flirt.2
 + ~Gender(Player1,MALE)
	Global("C0KarihiMatch","GLOBAL",1)
	!Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~You are very beautiful, Karihi.~ + flirt.3
 + ~RandomNum(4,1)
	Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~You are very beautiful, Karihi.~ + flirt.4
 + ~RandomNum(4,2)
	Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~You are very beautiful, Karihi.~ + flirt.5
 + ~RandomNum(4,3)
	Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~You are very beautiful, Karihi.~ + flirt.6
 + ~RandomNum(4,4)
	Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~You are very beautiful, Karihi.~ + flirt.7
 + ~Global("C0KarihiKnowNightmares","GLOBAL",1)~ + ~About us...~ + romancepid.locked
 + ~!Global("C0KarihiKnowNightmares","GLOBAL",1)
 OR(2)
 Global("C0KarihiRomanceActive","GLOBAL",1)
 Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~About us...~ + romancepid
 ++ ~May I ask you a question?~ + questions
 ++ ~I think there's a problem with your voice.~ + stringfix
 ++ ~I need nothing at the moment.~ EXIT

CHAIN C0KARIHJ rand.1
~*sigh* My opinion of you has not changed since the last time you asked.~
EXIT
 
CHAIN C0KARIHJ rand.2
~I suggest asking me when I am in a more amiable mood.~
EXIT
 
CHAIN C0KARIHJ rand.3
~If I did not give you at least a modicum of approval, I would not be following your lead.~
EXIT
 
CHAIN C0KARIHJ rand.4
~You are respectable. As much as myself? Hardly. But respectable enough.~
EXIT
 
CHAIN C0KARIHJ rand.5
~You could do with a change of attire. Besides that, I am ambivalent.~
EXIT
 
CHAIN C0KARIHJ rand.6
~I suppose I could do for worse.~
EXIT
 
CHAIN C0KARIHJ rand.7
~You would not like my thoughts, I assure you.~
EXIT
 
CHAIN C0KARIHJ rand.8
~*snort* I do not think about you.~
EXIT
 
CHAIN C0KARIHJ rand.9
~...I think you know well enough. Must I spell it out for you like a child?~
EXIT
 
CHAIN C0KARIHJ rand.10
~I do love you. *sigh* But sometimes, I wish I could slap you.~
EXIT
 
CHAIN C0KARIHJ flirt.1
~Do not get any ideas. I have little interest in your attempts at flattery.~
EXIT
 
CHAIN C0KARIHJ flirt.2
~I... I hope you have no deeper intentions, <PLAYER1>. I would rather you not waste your time.~
EXIT
 
CHAIN C0KARIHJ flirt.3
~You are not so bad yourself, <PLAYER1>. At least there is someone in this wasteland worth looking upon.~
EXIT
 
CHAIN C0KARIHJ flirt.4
~(smile) Somehow, the simplest words bring the most warmth when coming from you.~
EXIT
 
CHAIN C0KARIHJ flirt.5
~Indeed, I am. Aren't you fortunate?~
EXIT
 
CHAIN C0KARIHJ flirt.6
~Beauty is in the eye of the... very wise beholder.~
EXIT
 
CHAIN C0KARIHJ flirt.7
~I do strive for perfection in all matters.~
EXIT
 
CHAIN C0KARIHJ advice
~Perhaps. You show sense to seek my counsel, at least. Let me think...~
END
IF ~Global("AR2000_visited","GLOBAL",0)
Global("Chapter","GLOBAL",0)~ + advice.0a
IF ~Global("AR2000_visited","GLOBAL",1)
Global("Chapter","GLOBAL",0)~ + advice.0b
IF ~Global("Chapter","GLOBAL",1)~ + advice.1
IF ~Global("Chapter","GLOBAL",2) !GlobalGT("SPRITE_IS_DEADYxunomei","GLOBAL",0)~ + advice.2a
IF ~Global("Chapter","GLOBAL",2) GlobalGT("SPRITE_IS_DEADYxunomei","GLOBAL",0)~ + advice.2b
IF ~Global("Chapter","GLOBAL",3)~ + advice.3
IF ~Global("Chapter","GLOBAL",4)~ + advice.4
IF ~Global("Chapter","GLOBAL",5)~ + advice.5
IF ~Global("Chapter","GLOBAL",6)~ + advice.6
IF ~GlobalGT("Hjollder_Quest","GLOBAL",2)
!Global("HOW_COMPLETED","GLOBAL",1)
!Global("Exp_Pause","GLOBAL",1)~ + advice.HOW
IF ~GlobalGT("Master_Quest","GLOBAL",0)
!Dead("LUREMASTER")~ + advice.TOTL

CHAIN C0KARIHJ advice.0a
~I am eager to be away from this frozen, meager little village. You should look into this expedition I have heard of from the locals. I hear Kuldahar is a warmer, more comfortable place.~
EXIT
 
CHAIN C0KARIHJ advice.0b
~Bah! My robes are still wet with melted snow and mud from our near-death experience. Lead us to Kuldahar! Hopefully there are warm baths and clean beds that await us.~
EXIT
 
CHAIN C0KARIHJ advice.1
~*shrug* You will continue the task left for you, and I will follow, I suppose. You know the path as well as I.~
EXIT
 
CHAIN C0KARIHJ advice.2a
~If the Heartstone Gem has the power that the archdruid claimed, it will have more than one being with ambition with eyes for it. I would not underestimate whoever... or whatever... threat awaits in Dragon's Eye. What we seek may not even be of this realm.~
EXIT
 
CHAIN C0KARIHJ advice.2b
~*sigh* I regret to say it, but I have no guidance for you right now. I am weary after the battles we have fought... perhaps I may have more useful words later.~
EXIT
 
CHAIN C0KARIHJ advice.3
~I know a little of the Severed Hand. Once a mighty elven fortress, held by those who revered the Seldarine, the elven pantheon. The moniker of 'Severed Hand' is an apt one—it has long lost its connection to the world, though how it came to be so is beyond my knowledge.~
EXIT
 
CHAIN C0KARIHJ advice.4
~After climbing the height of the Severed Hand, we are now to venture beneath the earth? How tiresome... but at least it will be a respite from the cold. I advice caution, however. We may come into contact with the residents of the Underdark, whom are deceitful and dangerous.~
EXIT
 
CHAIN C0KARIHJ advice.5
~Dorn's Deep has a most fascinating history. A shame it has shared the fate of the Severed Hand—lost to ruin. Such a place is ripe with untapped power... undoubtedly why our foes have chosen such a location. Be wary, <PLAYER1>. Ancient powers work against us.~
EXIT
 
CHAIN C0KARIHJ advice.6
~There is an evil ahead of us that will be remembered as history. As will the ones who end it. Lead on, <PLAYER1>. We shall be the ones to be remembered.~
EXIT
 
CHAIN C0KARIHJ advice.HOW
~We have found our way to an interesting little diversion in this part of the Ten Towns. I have nothing but disdain for these wilderness primitives, but I will tolerate it. Let us see where this journey leads.~
EXIT

CHAIN C0KARIHJ advice.TOTL
~There is danger here, but also knowledge and power lost. We may yet find a reward for our meticulousness. And it is warm here, too. I might even be a little sorry to leave.~
EXIT

CHAIN C0KARIHJ romancepid.locked
~Leave me be, <PLAYER1>. I am not in the mood for this right now.~
EXIT
  
CHAIN C0KARIHJ romancepid
~Yes?~
END
 + ~GlobalGT("C0KarihiKnowNightmares","GLOBAL",1) GlobalGT("C0KarihiEncounter","GLOBAL",0)~ + ~You've been sleeping more soundly. Have your nightmares subsided?~ + rom.nightmares
 + ~OR(6)
 AreaCheck("AR1101")
 AreaCheck("AR1102")
 AreaCheck("AR1103")
 AreaCheck("AR1104")
 AreaCheck("AR1106")
 AreaCheck("AR1109")
 Global("C0KarihiRomanceActive","GLOBAL",2)
 Global("C0KarihiRomPIDFinale","GLOBAL",0)~ + ~We're approaching the end of the road. Is there anything on your mind?~ DO ~SetGlobal("C0KarihiRomPIDFinale","GLOBAL",1)~ + rom.finale
 + ~OR(2)
 Global("C0KarihiRomanceActive","GLOBAL",1) Global("C0KarihiRomanceActive","GLOBAL",2)
 Global("C0KarihiRomPIDExLover","GLOBAL",0) ~ + ~Do you have any previous lovers?~ DO ~SetGlobal("C0KarihiRomPIDExLover","GLOBAL",1)~ + rom.exlover
 + ~Global("C0KarihiRomanceActive","GLOBAL",2) Global("C0KarihiRomPIDWarm","GLOBAL",0) ~ + ~I have never felt better than when I hold you close. You are so warm.~ DO ~SetGlobal("C0KarihiRomPIDWarm","GLOBAL",1)~ + rom.warm
 + ~Global("C0KarihiRomanceActive","GLOBAL",2) Global("C0KarihiRomPIDChildren","GLOBAL",0) ~ + ~Have you ever thought about having children?~ DO ~SetGlobal("C0KarihiRomPIDChildren","GLOBAL",1)~ + rom.children
 + ~Global("C0KarihiRomanceActive","GLOBAL",2) Global("C0KarihiRomPIDHappy","GLOBAL",0) GlobalGT("Chapter","GLOBAL",5)~ + ~Things are becoming more dangerous than ever. Are you alright?~ DO ~SetGlobal("C0KarihiRomPIDHappy","GLOBAL",1)~ + rom.karihihappy
 + ~Global("C0KarihiRomanceActive","GLOBAL",2) Global("C0KarihiRomPIDKGood","GLOBAL",0) Alignment("C0Karihi",MASK_GOOD)~ + ~You've become so much gentler recently. I'm glad you've changed for the better.~ DO ~SetGlobal("C0KarihiRomPIDKGood","GLOBAL",1)~ + rom.karihigood
 + ~Global("C0KarihiRomanceActive","GLOBAL",2) Global("C0KarihiRomPIDLawful","GLOBAL",0) Alignment(PLAYER1,MASK_LAWFUL)~ + ~From our personalities, I never thought we'd make such a good match.~ DO ~SetGlobal("C0KarihiRomPIDLawful","GLOBAL",1)~ + rom.lawful
 + ~Global("C0KarihiRomanceActive","GLOBAL",2) Global("C0KarihiRomPIDChaotic","GLOBAL",0) Alignment(PLAYER1,MASK_CHAOTIC)~ + ~I think our personalities suit each other well. Don't you agree?~ DO ~SetGlobal("C0KarihiRomPIDChaotic","GLOBAL",1)~ + rom.chaotic
 + ~Global("C0KarihiRomanceActive","GLOBAL",1)~ + ~I wanted to say that I wish for us to remain friends.~ DO ~SetGlobal("C0KarihiRomanceActive","GLOBAL",3)~ + breakromance1
 + ~Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~I want to end our relationship.~ DO ~SetGlobal("C0KarihiRomanceActive","GLOBAL",3)~ + breakromance2
 ++ ~Actually, there was nothing I wanted to say.~ EXIT

CHAIN C0KARIHJ rom.nightmares
~I doubt I shall escape the memories of my family haunting me for some time yet... if ever. But I have felt a sense of closure, and so it no longer pains me as much to see them. And... having you so close to me helps.~
EXIT

CHAIN C0KARIHJ rom.finale
~Is there, I wonder? Hmm... well, there is one thing.~
= ~I have left nothing unsaid, but, in case of the worst... I demand a kiss from you, <PLAYER1>. Right now.~
END
++ ~How can I refuse?~ + rom.finale1
++ ~(Say nothing, just kiss her.)~ + rom.finale1
++ ~Not now... this is hardly the time.~ + rom.finale2
++ ~Don't talk about the worst. The worst won't happen.~ + rom.finale3

CHAIN C0KARIHJ rom.finale1
~Mmm... I think that expresses my thoughts far better than words ever will, don't you agree?~
= ~Come, my love... let us remove this last obstacle between us and the future we shall spend together.~
EXIT

CHAIN C0KARIHJ rom.finale2
~How disappointing, <PLAYER1>... in that case, I shall hold you in debt for the moment. I expect you to survive... and recompense me when we have won.~
EXIT

CHAIN C0KARIHJ rom.finale3
~Of course it won't. Then consider this a request from one who has so foolishly fallen for your affections. You would surely not refuse me that?~
END
++ ~In that case... (Kiss her.)~ + rom.finale1
++ ~No, Karihi. I'm not in the mood.~ + rom.finale2

CHAIN C0KARIHJ rom.warm
~Naturally. There is more than one reason why my heritage is a great gift, after all.~
EXIT

CHAIN C0KARIHJ rom.exlover
~Do you think men are so blind as to pass me by? Hmph.~
= ~Though if you mean in the lasting sense... no. None worth speaking of... among the living, at least. That is all I will say.~
EXIT

CHAIN C0KARIHJ rom.children
~There was a time where I resigned myself to the inevitability, to continue my family's bloodline and pass on the gift. I dreaded the thought.~
= ~Now, that looming threat no longer exists... yet, I would not be opposed to children, if it would make you happier... and perhaps, it would be another step for me as well.~
= ~Supposing we were to have a child, <PLAYER1>... what would please you more? A boy, or a girl?~
END
++ ~A boy.~ + rom.children.1
++ ~A girl.~ + rom.children.1
++ ~We could have both. Who say we only need one?~ + rom.children.2
++ ~It doesn't matter. I'd love them either way.~ + rom.children.3

CHAIN C0KARIHJ rom.children.1
~I see... I suppose it does not matter, either way. Only nature` can decide what blessing we are fated to receive.~
EXIT

CHAIN C0KARIHJ rom.children.2
~Ambitious, aren't you? Perhaps that could be arranged... assuming you are willing to put in the contribution.~
EXIT

CHAIN C0KARIHJ rom.children.3
~If that is the case, then... I have little cause for hesitation. Perhaps we could consider it in the future, after all.~
EXIT

CHAIN C0KARIHJ rom.karihihappy
~Of course I am. You are here... that is more than enough.~
EXIT

CHAIN C0KARIHJ rom.karihigood
~I feel I no longer live with heavy burdens. The nightmares are gone, and I can look to the future now... and I wish to do so as a better person.~
= ~Thank you, <PLAYER1>.~
END
++ ~What for?~ + rom.karihigood.1
++ ~You're welcome.~ EXIT
++ ~I love you.~ + rom.karihigood.2

CHAIN C0KARIHJ rom.karihigood.1
~Everything.~
EXIT

CHAIN C0KARIHJ rom.karihigood.2
~That is not the appropriate response... but I will forgive it. I love you as well.~
EXIT

CHAIN C0KARIHJ rom.lawful
~Life is oft rife with such strange, unbelievable... wonderful ironies.~
EXIT

CHAIN C0KARIHJ rom.chaotic
~It is... liberating, shall I put it... to see one as individualistic and untamed as myself, who understands me so well.~
= ~(wryly) I do often feel I must resign myself to taking on the position of caretaker, however. You can be such a troublemaker at times.~
END
++ ~Me? I would never!~ + rom.chaotic1
++ ~Look who's talking!~ + rom.chaotic1
++ ~You may be right. Whatever will you do with me?~ + rom.chaotic1
++ ~I had no idea you thought of me that way.~ + rom.chaotic1
++ ~Alright, that's enough now.~ + rom.chaotic2

CHAIN C0KARIHJ rom.chaotic1
~I never said I did not prefer it that way.~
EXIT

CHAIN C0KARIHJ rom.chaotic2
~Hmph. Kindly allow me my moment of levity, would you?~
EXIT
 
CHAIN C0KARIHJ breakromance1
~Hmph. That can be arranged.~
EXIT
 
CHAIN C0KARIHJ breakromance2
~I... see. You had best not regret this decision.~
EXIT
 
CHAIN C0KARIHJ questions
~You may. I will answer if I deem it convenient.~
END
+ ~Global("C0KarihiAge","GLOBAL",0)~ + ~How old are you exactly, Karihi?~ DO ~SetGlobal("C0KarihiAge","GLOBAL",1)~ + pid.age
+ ~Global("C0KarihiFriendTalk1Siblings","GLOBAL",1)~ + ~You mentioned you had siblings. Would you tell me about them?~ DO ~SetGlobal("C0KarihiFriendTalk1Siblings","GLOBAL",2)~ + pid.siblings
+ ~GlobalGT("C0KarihiEncounter","GLOBAL",0) Global("C0KarihiTrueName","GLOBAL",0)~ + ~What is your real name, Karihi? If you do not mind me asking.~ DO ~SetGlobal("C0KarihiTrueName","GLOBAL",1)~ + pid.truename
+ ~Global("C0KarihiTeachPyromancy","GLOBAL",0)
Class(Player1,MAGE_ALL)
ClassLevelGT("C0KARIHI",WIZARD,17)~ + ~Would you be willing to tutor me in pyromancy?~ + pid.pyromancy
+ ~Global("C0KarihiFriendTalk2","GLOBAL",4)
   Global("C0KarihiMatch","GLOBAL",1)
   Global("C0KarihiRomanceActive","GLOBAL",0)~ + ~Do you think the two of us could ever...~ + pid.startromance
+ ~Global("C0KarihiFriendTalk2","GLOBAL",4)
   Global("C0KarihiMatch","GLOBAL",0)
   Global("C0KarihiNoFlirt","GLOBAL",0)
   Gender(Player1,MALE)~ + ~Do you think the two of us could ever...~ DO ~SetGlobal("C0KarihiNoFlirt","GLOBAL",1)~ + pid.rejectmale
+ ~Global("C0KarihiFriendTalk2","GLOBAL",4)
   Global("C0KarihiMatch","GLOBAL",0)
   Global("C0KarihiNoFlirt","GLOBAL",0)
   Gender(Player1,FEMALE)
   !CheckStatGT(Player1,15,CHR)~ + ~Do you think the two of us could ever...~ DO ~SetGlobal("C0KarihiNoFlirt","GLOBAL",1)~ + pid.rejectfemale1
+ ~Global("C0KarihiFriendTalk2","GLOBAL",4)
   Global("C0KarihiMatch","GLOBAL",0)
   Global("C0KarihiNoFlirt","GLOBAL",0)
   Gender(Player1,FEMALE)
   CheckStatGT(Player1,15,CHR)~ + ~Do you think the two of us could ever...~ DO ~SetGlobal("C0KarihiNoFlirt","GLOBAL",1)~ + pid.rejectfemale2
++ ~Never mind. I have nothing I want to ask.~ EXIT

CHAIN C0KARIHJ pid.startromance
~Perhaps... you do have a charm I rarely see among men. And I do not find you unattractive.~
= ~I suppose it would not be out of the realm of possibility for me to accept any potential advances coming from you. But is that what you truly desire? I may be... temperamental.~
END
++ ~I would like to try.~ DO ~SetGlobal("C0KarihiRomanceActive","GLOBAL",1)~ + pid.startromance.1
++ ~I'm not sure. I have to sort out my feelings first... would you allow that?~ + pid.startromance.2
++ ~No. I don't think it would work out. I'm sorry.~ DO ~SetGlobal("C0KarihiRomanceActive","GLOBAL",3)~ + pid.startromance.3

CHAIN C0KARIHJ pid.startromance.1
~Very well. We will speak again soon.~
EXIT

CHAIN C0KARIHJ pid.startromance.2
~I cannot deny you the right, I suppose. *sigh* Perhaps we will talk of this again in the future.~
EXIT

CHAIN C0KARIHJ pid.startromance.3
~That is your mistake to make. I will lose no sleep over it, I assure you.~
EXIT

CHAIN C0KARIHJ pid.rejectmale
~I think not. We are as different as night and day.~
EXIT

CHAIN C0KARIHJ pid.rejectfemale1
~I doubt that, even were I drawn to women, I would ever choose you.~
EXIT

CHAIN C0KARIHJ pid.rejectfemale2
~I respect you, <PLAYER1>. But I cannot ever see you in that way. I am sorry.~
EXIT

CHAIN C0KARIHJ pid.age
~*snort* Do you often ask people these sorts of questions? How old do I appear to you?~
END
++ ~Twenty-five?~ + pid.age.20
++ ~Twenty?~ + pid.age.20
++ ~Thirty?~ + pid.age.30
++ ~Ten?~ + pid.age.10
++ ~Fifty?~ + pid.age.50
++ ~I have no idea.~ + pid.age.20

CHAIN C0KARIHJ pid.age.20
~I am twenty-three this year, if it interests you. Though, with sufficient training in the Art, I will undoubtedly reach many times that age.~
END
++ ~No wonder you still look so good.~ + pid.age.20.1
++ ~Really? I thought you were fifty.~ + pid.age.50
++ ~Really? I thought you were ten.~ + pid.age.10
++ ~I see. That's all I wanted to know.~ EXIT

CHAIN C0KARIHJ pid.age.20.1
~Ah, finally. A sensible response. Let us end it at that, then.~
EXIT

CHAIN C0KARIHJ pid.age.10
~How dare you! Is this meant as some sort of jab at my maturity? Perhaps you are the one who is ten!~
END
++ ~Just kidding. You're easy to rile up.~ + pid.age.tease
++ ~Then how old are you really?~ + pid.age.20
++ ~And you're the one throwing a tantrum.~ + pid.age.rude

CHAIN C0KARIHJ pid.age.30
~Hmph. Is my face truly so weathered after a mere year of wandering? That is concerning.~
EXTERN C0KARIHJ pid.age.20

CHAIN C0KARIHJ pid.age.50
~Fift—how insulting! You cannot truly believe I am so withered! I am barely even half that!~
END
++ ~You're right. I was just teasing you.~ + pid.age.tease
++ ~Then you're... twenty?~ + pid.age.20
++ ~Believe me, it's hard to tell with your heritage and crabby attitude.~ + pid.age.rude

CHAIN C0KARIHJ pid.age.tease
~Hmph! I will have no more of this.~
EXIT

CHAIN C0KARIHJ pid.age.rude
~If only someone saw fit to teach you common courtesy in your youth! Perhaps then you would not have the tact of a five-year-old!~
EXIT

CHAIN C0KARIHJ pid.siblings
~I was the second eldest of my family. My three younger brothers—Kharai, Horad and Thassar—are barely worth mentioning. They were born with only the barest trace of the gift and little talent in magic, and thus were unworthy in my father's eyes. They sought glory in the military instead, and I saw little of them past childhood.~
= ~My elder sister, Azra, however, was a different story. She was a pyromancer whose prowess surpassed my own. *smirks* She was also a temperamental and egotistical witch, but regardless... she was still my sister. I respected her, and learned much from following her example... perhaps too much.~
= ~Despite her natural talent in magic, however, she much preferred playing games of politics. In that regard, we were opposites—though perhaps it was because of her that I chose to puruse the life of a scholar instead. If I had chosen to follow her footsteps, I would have forever remained her inferior.~
= ~But that is all in the past. She is not here with me, and perhaps that is for the better.~
EXIT

CHAIN C0KARIHJ pid.truename
~It is irrelevant now. That is the name of a foolish girl, dead and buried. What use is it?~
END
+ ~OR(2)
Global("C0KarihiRomanceActive","GLOBAL",1)
Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~I want to know everything about you.~ + pid.truename.1
++ ~I was curious.~ + pid.truename.2
++ ~On second thought, I guess it's not important after all.~ EXIT

CHAIN C0KARIHJ pid.truename.1
~*sigh* I suppose I should not keep secrets from you, as worthless as this one is.~
EXTERN C0KARIHJ pid.truename.3

CHAIN C0KARIHJ pid.truename.2
~Very well, though it is worth little anymore, only as a memory of what I have lost.~
EXTERN C0KARIHJ pid.truename.3

CHAIN C0KARIHJ pid.truename.3
~I was once Ava'Kari Riha Sehryul Dilvaalhi. A time long past, I would have spoken the name with pride. After my foolishness destroyed my house, the name fills my throat with bile.~
= ~Now... I feel nothing towards it. Neither fondness or shame. I am merely Karihi to you now... that is the only name that is of any worth.~
EXIT

CHAIN C0KARIHJ pid.pyromancy
~And why, pray tell, would I teach you anything of my art?~
END
+ ~OR(2)
Global("C0KarihiRomanceActive","GLOBAL",1)
Global("C0KarihiRomanceActive","GLOBAL",2)~ + ~I thought it would forge a greater bond between us.~ + pid.pyromancy.1
++ ~I wish to learn.~ + pid.pyromancy.1
++ ~The power you wield is impressive.~ + pid.pyromancy.1
++ ~I want to know what's so special about your magic.~ + pid.pyromancy.1
++ ~Never mind. I don't want to learn after all.~ EXIT

CHAIN C0KARIHJ pid.pyromancy.1
~Is that so?~
== C0KARIHJ IF ~OR(2)
Global("C0KarihiRomanceActive","GLOBAL",1)
Global("C0KarihiRomanceActive","GLOBAL",2)~ THEN ~I would be a liar to claim that the prospect of training you were not... pleasing, in a way, but...~
END
IF ~!ClassLevelGT(Player1,WIZARD,17)~ + pid.pyromancy.not18
IF ~ClassLevelGT(Player1,WIZARD,17)
OR(4)
Global("C0KarihiRomanceActive","GLOBAL",2)
Alignment("C0Karihi",CHAOTIC_GOOD)
CheckStatGT(Player1,17,INT)
CheckStatGT(Player1,17,CHR)~ + pid.pyromancy.yes
IF ~ClassLevelGT(Player1,WIZARD,17)
!Global("C0KarihiRomanceActive","GLOBAL",2)
!Alignment("C0Karihi",CHAOTIC_GOOD)
!CheckStatGT(Player1,17,INT)
!CheckStatGT(Player1,17,CHR)~ + pid.pyromancy.no

CHAIN C0KARIHJ pid.pyromancy.not18
~No. It is ridiculous that you would even suggest this. Your experience of the Art is far from what one can claim to be whole... you are not prepared for what you ask.~
= ~I do not say this to condescend. Pyromancy is no simple trick. Without the necessary will and knowledge, one will burn to the death from within.~
== C0KARIHJ IF ~Global("C0KarihiRomanceActive","GLOBAL",2)~ THEN ~(gently) I was much the same way once... too impatient and eager to learn. But I would not wish for you to come to harm. Patience... I will teach you when you are ready.~
== C0KARIHJ IF ~!Global("C0KarihiRomanceActive","GLOBAL",2)~ THEN ~Keep studying. Perhaps your opportunity will come soon... if you impress me.~
EXIT

CHAIN C0KARIHJ pid.pyromancy.yes
~I do believe you capable of learning. And I... do respect you, as difficult as it is for me to admit it. Perhaps I could be inclined to teach you a few things.~
== C0KARIHJ ~But it is not so simple as learning the incantations and scribing symbols onto a spellbook. Learning the true way of pyromancy normally takes years, if not decades... but you have talent, and with my assistance, you may be able to master a few techniques of the art. Do you truly wish to learn?~
END
++ ~Yes. I am ready.~ + pid.pyromancy.yes1
++ ~Maybe later.~ EXIT

CHAIN C0KARIHJ pid.pyromancy.yes1
~Very well. Be prepared to put both your body and mind to the test, <PLAYER1>—pyromancy is not a gentle art.~
== C0KARIHJ IF ~Global("C0KarihiRomanceActive","GLOBAL",2)~ THEN ~(smirk) You should know that from my example already. But for your sake, I will try not to be too harsh of a tutor.~
== C0KARIHJ IF ~!Global("C0KarihiRomanceActive","GLOBAL",2)~ THEN ~*chuckle* Be warned, <PLAYER1>—I have been known to be... especially temperamental while tutoring.~
== C0KARIHJ ~Let us begin.~
DO ~SetGlobal("C0KarihiTeachPyromancy","GLOBAL",1)
	StartCutSceneMode()
	CutSceneId("C0Karihi")
	FadeToColor([20.0],0)
	Wait(2)
	AdvanceTime(9600)
	AddXPObject(Player1,20000)
	FadeFromColor([20.0],0)
	Wait(2)
	ActionOverride(Player1,Rest()
	ActionOverride(Player2,Rest()
	ActionOverride(Player3,Rest()
	ActionOverride(Player4,Rest()
	ActionOverride(Player5,Rest()
	ActionOverride(Player6,Rest()
	ActionOverride(Player1,AddSpecialAbility("C0PY001"))
	ActionOverride(Player1,AddSpecialAbility("C0PY004"))
	ActionOverride(Player1,AddSpecialAbility("C0PY008"))
	ActionOverride(Player1,AddSpecialAbility("C0PY009"))
	StartDialogueNoSet(Player1)~ EXIT
	

CHAIN IF WEIGHT #-1 ~Global("C0KarihiTeachPyromancy","GLOBAL",1)~ THEN C0KARIHJ pid.pyromancy.yes0
~...there. I think that will do. You are a capable student... not that I expected any less.~
END
++ ~Thank you, Karihi.~ DO ~SetGlobal("C0KarihiTeachPyromancy","GLOBAL",2)~ + pid.pyromancy.yes2
++ ~That's all you're teaching me?~ DO ~SetGlobal("C0KarihiTeachPyromancy","GLOBAL",2)~ + pid.pyromancy.yes3

CHAIN C0KARIHJ pid.pyromancy.yes2
~It has been a long time since I have had such an opportunity to teach another. This was... a worthwhile experience for the both of us, I think.~
== C0KARIHJ ~Use your newfound knowledge well, <PLAYER1>. You will soon find that the art of flame is... more intoxicating than you may expect.~
== C0KARIHJ IF ~Global("C0KarihiRomanceActive","GLOBAL",2)~ THEN ~Perhaps we may use our magic together on our next unfortunate adversary, hmm? I would certainly enjoy that.~
EXIT

CHAIN C0KARIHJ pid.pyromancy.yes3
~To master pyromancy to my level would require you devote as many years to the craft as I have, <PLAYER1>. That you were already capable of learning so much in so short of time is already impressive.~
EXTERN C0KARIHJ pid.pyromancy.yes2

CHAIN C0KARIHJ pid.pyromancy.no
~You are a capable mage, that is true. But the prospect of tutoring you does not interest me... perhaps if you were my intellectual equal, I would have considered it a worthwhile endeavor.~
= ~Better you remain with your own craft, I think. The art of pyromancy would be, for lack of a softer term, wasted on one such as you.~
EXIT

CHAIN C0KARIHJ stringfix
~Bah! Not this again... this will take only a moment.~
DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("C0KARIHR")~ EXIT