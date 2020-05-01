.class public Lcom/netflix/mediaclient/ui/details/DummyShowDetails;
.super Ljava/lang/Object;
.source "DummyShowDetails.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;


# instance fields
.field private userRating:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/DummyShowDetails;->userRating:F

    return-void
.end method


# virtual methods
.method public getActors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdvisories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getBifUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoxartImageTypeIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoxshotUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string/jumbo v0, "http://dummyimage.com/150x214/bb0000/884444.png&text=Sample"

    return-object v0
.end method

.method public getCatalogIdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertification()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    const-string/jumbo v0, "\u00a9 2015 Test"

    return-object v0
.end method

.method public getCreators()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "Creators"

    return-object v0
.end method

.method public getCurrentEpisodeBadges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentEpisodeHorzDispUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentEpisodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentEpisodeNumber()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentEpisodeStoryImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentEpisodeSynopsis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentEpisodeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentSeasonNumber()I
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DummyShowDetails;->getNumOfSeasons()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public getDefaultTrailer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEvidenceGlyph()Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEvidenceText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 88
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGenres()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHighResolutionLandscapeBoxArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHighResolutionPortraitBoxArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHorzDispSmallUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHorzDispUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string/jumbo v0, "70177057"

    return-object v0
.end method

.method public getMaturityLevel()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getNumOfEpisodes()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, -0x1

    return v0
.end method

.method public getNumOfSeasons()I
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x64

    return v0
.end method

.method public getNumSeasonsLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
    .locals 1

    .prologue
    .line 290
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DummyPlayable;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/details/DummyPlayable;-><init>()V

    return-object v0
.end method

.method public getPredictedRating()F
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimilars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimilarsListPos()I
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public getSimilarsRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimilarsTrackId()I
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public getStoryDispUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStoryUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupplementalMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSynopsis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "Max (Max Records) is a young boy who feels misunderstood and wants to have fun all the time. He makes an igloo out of snow, but his sister\'s friends gang up on him and smash it. After making a scene in front of his mother\'s boyfriend, Max bites his mother and runs away. He keeps running until he stumbles upon a small boat; he climbs aboard and sets sail. After a few days at sea, he reaches the dangerous, rocky shore of a strange island at night. He leaves the boat on shore and walks toward voices he hears in the woods. Max eavesdrops on a few creatures arguing. One of them, Carol (voice: James Gandolfini), is destroying the huts and screaming. The other wild things are yelling at him, telling him to stop. Max runs out of the trees and joins Carol in destroying the huts. The wild things are angry about this and want to eat him. But Max tells them that he was the king where he came from, and he has \"special powers,\" so the wild things can\'t eat him. Carol crowns him king of the wild things and the island. Max\'s first order of business is to \"let the wild rumpus start!\" The wild things and Max dance and run around the forest destroying things. The wild things introduce themselves: Ira (voice: Forest Whitaker), Carol, Douglas (voice: Chris Cooper), the bull, Judith (voice: Catherine O\'Hara), and Alexander (voice: Paul Dano). K.W. (voice: Lauren Ambrose) is missing; she\'s gone to hang out with other friends, apparently after a disagreement. Carol shows Max his \"Kingdom\" and shows him his secret hideaway, where has built a miniature of the island. Carol says \"There should be a place where only the things you want to happen, happen.\" Max thinks that with effort from all the wild things, they can build a place like that. Over the next few days, Max and the wild things build a large fortress of rocks and sticks. Tension grows between Max and the wild things when Judith starts to think Max isn\'t a good king. They have a dirtball fight and many of the wild things get hurt. K.W. and Carol argue and K.W. takes Max to see her friends Terry and Bob, who turn out to be owls. They go back to the fortress and the wild things (minus Carol) greet them with open arms. Carol throws a fit and is angry that they are letting two outsiders into the group. K.W. runs away with Terry and Bob. Max and the wild things are sad, sitting in the rain. Judith demands to see Max\'s \"special powers\" and wants K.W. to come back. The wild things discover Max isn\'t a king and that he has no powers. Carol is angry with Max, telling him he didn\'t keep everyone safe, and that he is an awful king. Max runs away with Carol pursuing him. K.W. hides Max in her stomach until Carol leaves. Max then decides it\'s time to go home. Things seem to be better when he and the wild things all go to the beach, where Max\'s boat is. Carol is in his secret hideaway crying when he realizes he is being stupid and sees a heart with his initial that Max made for him. (Carol made a similar one for Max on the fort earlier.) Carol runs toward the beach. Max gets into his boat and says goodbye to all the wild things. Carol finally arrives and is unable to speak, so he howls. The other wild things join in and Max howls back. After a brief boat trip he runs back home and his mother greets him with open arms, and feeds him."

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string/jumbo v0, "GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB GKB"

    return-object v0
.end method

.method public getTitleCroppedImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTvCardUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public getUserRating()F
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/netflix/mediaclient/ui/details/DummyShowDetails;->userRating:F

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x775

    return v0
.end method

.method public hasTrailers()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public hasWatched()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailableToStream()Z
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public isInQueue()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public isNSRE()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public isPreRelease()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public isSupplementalVideo()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo3D()Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo5dot1()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoDolbyVision()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoHd()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public isVideoHdr10()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoUhd()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public setUserRating(F)V
    .locals 0

    .prologue
    .line 138
    iput p1, p0, Lcom/netflix/mediaclient/ui/details/DummyShowDetails;->userRating:F

    .line 139
    return-void
.end method
