EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("WAWAK")~ THEN GOTO ZSTWKachiko_PartyHasAtLeastOneItem
END

APPEND BOTSMITH
  IF ~~ THEN BEGIN ZSTWKachiko_PartyHasAtLeastOneItem SAY ~Ooh? What's this? Kachiko's whispery sword? Spooky!~
    IF ~!PartyHasItem("SCRL2H")
        !PartyHasItem("SCRL9V")~  GOTO ZSTWKachiko_PartyDoesNotHaveAllParts

    IF ~!PartyHasItem("SCRL2H")
         PartyHasItem("SCRL9V")~  GOTO ZSTWKachiko_PartyHasWailOfBansheeOnly

    IF ~PartyHasItem("SCRL2H")
        !PartyHasItem("SCRL9V")~  GOTO ZSTWKachiko_PartyHasShadowDoorOnly

    IF ~PartyHasItem("SCRL2H")
        PartyHasItem("SCRL9V")~ GOTO ZSTWKachiko_PartyHasAllParts
  END

  IF ~~ THEN BEGIN ZSTWKachiko_PartyDoesNotHaveAllParts SAY ~What? Wants to makes it more whispery? But needs a scroll of screaming banshees Nasty stuff, oh yes! Also one of shadowy doors! And you gots neither, boss.~
    IF ~~ THEN GOTO ZSTWKachiko_MovingRightAlong
  END

  IF ~~ THEN BEGIN ZSTWKachiko_PartyHasWailOfBansheeOnly SAY ~What? Wants to makes it more whispery? You gots the screaming scroll already but needs the shadow door one!~
    IF ~~ THEN GOTO ZSTWKachiko_MovingRightAlong
  END

  IF ~~ THEN BEGIN ZSTWKachiko_PartyHasShadowDoorOnly SAY ~What? Wants to makes it more whispery? You gots the shadow door scroll, but needs a scroll of screaming banshees too! Nasty stuff, oh yes!~
    IF ~~ THEN GOTO ZSTWKachiko_MovingRightAlong
  END

  IF ~~ THEN BEGIN ZSTWKachiko_PartyHasAllParts SAY ~But, could be spoooookier, Cespenar thinks. You has the needed scrolls, just needs 10,000 gold. You likes?~
    IF ~PartyGoldLT(10000)~ THEN REPLY #66633 GOTO 10
    IF ~PartyGoldGT(9999)~ THEN DO ~SetGlobal("ZSTW_KachikoForge","GLOBAL",1)
                                    SetGlobal("ForgeStuff", "GLOBAL",1)
                                    TakePartyGold(10000)
                                    DestroyGold(10000)
                                    TakePartyItemNum("WAWAK", 1)
                                    DestroyItem("WAWAK")
                                    TakePartyItemNum("SCRL9V", 1)
                                    DestroyItem("SCRL9V")
                                    TakePartyItemNum("SCRL2H", 1)
                                    DestroyItem("SCRL2H")~ REPLY #66706 GOTO 11
    IF ~~ THEN REPLY #66650 GOTO ZSTWKachiko_MovingRightAlong
  END

  IF ~~ THEN BEGIN ZSTWKachiko_MovingRightAlong SAY ~No? Too spooky? Cespenar understands, yes. Well, if you change your mind...~
    COPY_TRANS BOTSMITH 4
  END

  IF WEIGHT #-1 ~Global("ZSTW_KachikoForge","GLOBAL",1)~ THEN BEGIN ZSTW_ItemForged SAY #70888
    IF ~~ THEN DO ~SetGlobal("ZSTW_KachikoForge","GLOBAL", 0)~ EXIT
  END

END
