EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("WAWAK")~ THEN GOTO PartyHasAtLeastOneItem
END

APPEND BOTSMITH
  IF ~~ THEN BEGIN PartyHasAtLeastOneItem SAY ~Ooh? What's this? Kachiko's whispery sword? Spooky!~
    IF ~OR(2)
        !PartyHasItem("WAWAK")
        !PartyHasItem("SCRL9V")~  THEN GOTO PartyDoesNotHaveAllParts

    IF ~PartyHasItem("WAWAK")
        PartyHasItem("SCRL9V")~
        THEN GOTO PartyHasAllParts
  END

  IF ~~ THEN BEGIN PartyDoesNotHaveAllParts SAY ~What? Wants to makes it more whispery? But needs a scroll of screaming banshees! Nasty stuff, oh yes!~
    IF ~~ THEN GOTO MovingRightAlong
  END

  IF ~~ THEN BEGIN PartyHasAllParts SAY ~But, could be spoooookier, Cespenar thinks. You has the screaming scroll, just needs 7,500 gold. You likes?~
    IF ~PartyGoldLT(7500)~ THEN REPLY #66633 GOTO 10
    IF ~PartyGoldGT(7499)~ THEN DO ~SetGlobal("ZS_KachikoForge","GLOBAL",1)
                                    SetGlobal("ForgeStuff", "GLOBAL",1)
                                    TakePartyGold(7500)
                                    DestroyGold(7500)
                                    TakePartyItemNum("WAWAK", 1)
                                    DestroyItem("WAWAK")
                                    TakePartyItemNum("SCRL9V", 1)
                                    DestroyItem("SCRL9V")~ REPLY #66706 GOTO 11
    IF ~~ THEN REPLY #66650 GOTO MovingRightAlong
  END

  IF ~~ THEN BEGIN MovingRightAlong SAY ~No? Too spooky? Cespernar understands, yes. Well, if you change your mind...~
    COPY_TRANS BOTSMITH 4
  END

  IF WEIGHT #-1 ~Global("ZS_KachikoForge","GLOBAL",1)~ THEN BEGIN ItemForged SAY #70888
    IF ~~ THEN DO ~SetGlobal("ZS_KachikoForge","GLOBAL", 0)~ EXIT
  END

END
