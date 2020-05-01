.class public Lcom/netflix/model/leafs/Video$Detail;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/DocumentsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Detail"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Detail"


# instance fields
.field public abbrSeqLabel:Ljava/lang/String;

.field public actors:Ljava/lang/String;

.field public autoPlayMaxCount:I

.field public availabilityDateMsg:Ljava/lang/String;

.field public boxartUrl:Ljava/lang/String;

.field public certification:Ljava/lang/String;

.field public contentChangeDate:J

.field public contentWarning:Lcom/netflix/model/leafs/originals/ContentWarning;

.field public copyright:Ljava/lang/String;

.field public creatorHome:Ljava/lang/String;

.field public creditMarks:Lcom/netflix/model/leafs/blades/CreditMarks;

.field public directors:Ljava/lang/String;

.field public endtime:I

.field public episodeBadges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public episodeCount:I

.field public episodeNumber:I

.field public episodeNumberHidden:Z

.field public genres:Ljava/lang/String;

.field public hasTrailers:Z

.field public horzDispUrl:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public interactiveFeatures:Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

.field public interestingSmallUrl:Ljava/lang/String;

.field public interestingUrl:Ljava/lang/String;

.field public is5dot1Available:Z

.field public isAgeProtected:Z

.field public isAutoPlayEnabled:Z

.field public isAvailableToStream:Z

.field public isDolbyVisionAvailable:Z

.field public isDownloadAvailable:Z

.field public isEpisode:Z

.field public isHdAvailable:Z

.field public isHdr10Avaiable:Z

.field public isNSRE:Z

.field public isNextPlayableEpisode:Z

.field public isNonSerializedTv:Z

.field public isOriginal:Z

.field public isPinProtected:Z

.field public isPreRelease:Z

.field public isPreviewProtected:Z

.field public isSupplementalVideo:Z

.field public isUhdAvailable:Z

.field public logicalStart:I

.field public maturityLevel:I

.field public mdxVertUrl:Ljava/lang/String;

.field public newBadge:Ljava/lang/String;

.field public nextEpisodeId:Ljava/lang/String;

.field public nextEpisodeTitle:Ljava/lang/String;

.field public predictedRating:F

.field public quality:Ljava/lang/String;

.field public restUrl:Ljava/lang/String;

.field public runtime:I

.field public seasonCount:I

.field public seasonId:Ljava/lang/String;

.field public seasonNumLabel:Ljava/lang/String;

.field public seasonNumber:I

.field public seasonTitle:Ljava/lang/String;

.field public showId:Ljava/lang/String;

.field public showTitle:Ljava/lang/String;

.field public squareUrl:Ljava/lang/String;

.field public storyImgUrl:Ljava/lang/String;

.field public supplementalMessage:Ljava/lang/String;

.field public supportsPrePlay:Z

.field public synopsis:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public titleLogoUrl:Ljava/lang/String;

.field public titleUrl:Ljava/lang/String;

.field public topTenRank:I

.field public type:Ljava/lang/String;

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 252
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    const-wide/16 v0, -0x1

    .line 278
    iput-wide v0, p0, Lcom/netflix/model/leafs/Video$Detail;->contentChangeDate:J

    const/4 v0, -0x1

    .line 299
    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->autoPlayMaxCount:I

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->episodeBadges:Ljava/util/List;

    const-string v0, "-1"

    .line 334
    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentWarning()Lcom/netflix/model/leafs/originals/ContentWarning;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->contentWarning:Lcom/netflix/model/leafs/originals/ContentWarning;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterestingUrl()Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->interestingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 6

    .line 354
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 358
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    .line 359
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 360
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 361
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "topTenRank"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x43

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "episodeBadges"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x2b

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "isNonSerializedTv"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x1a

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "synopsis"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "episodeCount"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x14

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "runtime"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x16

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "copyright"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    goto/16 :goto_1

    :sswitch_7
    const-string v4, "isAgeProtected"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x22

    goto/16 :goto_1

    :sswitch_8
    const-string v4, "contentWarning"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x2d

    goto/16 :goto_1

    :sswitch_9
    const-string v4, "isNextPlayableEpisode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x21

    goto/16 :goto_1

    :sswitch_a
    const-string v4, "newBadge"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x2c

    goto/16 :goto_1

    :sswitch_b
    const-string v4, "squareUrl"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x28

    goto/16 :goto_1

    :sswitch_c
    const-string v4, "boxartUrl"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x3b

    goto/16 :goto_1

    :sswitch_d
    const-string v4, "autoPlayMaxCount"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x20

    goto/16 :goto_1

    :sswitch_e
    const-string v4, "restUrl"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_f
    const-string v4, "titleLogoUrl"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x29

    goto/16 :goto_1

    :sswitch_10
    const-string v4, "seasonId"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x36

    goto/16 :goto_1

    :sswitch_11
    const-string v4, "isPreviewProtected"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x24

    goto/16 :goto_1

    :sswitch_12
    const-string v4, "quality"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x3

    goto/16 :goto_1

    :sswitch_13
    const-string v4, "isOriginal"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_14
    const-string v4, "supplementalMessage"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_15
    const-string v4, "mdxVertUrl"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_16
    const-string v4, "episodeNumberHidden"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x2f

    goto/16 :goto_1

    :sswitch_17
    const-string v4, "isPreRelease"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_18
    const-string v4, "isSupplementalVideo"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_19
    const-string v4, "title"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x3a

    goto/16 :goto_1

    :sswitch_1a
    const-string v4, "maturityLevel"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_1b
    const-string v4, "canStream"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x25

    goto/16 :goto_1

    :sswitch_1c
    const-string v4, "year"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_1d
    const-string v4, "type"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x35

    goto/16 :goto_1

    :sswitch_1e
    const-string v4, "id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x34

    goto/16 :goto_1

    :sswitch_1f
    const-string v4, "interestingUrl"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x30

    goto/16 :goto_1

    :sswitch_20
    const-string v4, "hasTrailers"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_21
    const-string v4, "creatorHome"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x44

    goto/16 :goto_1

    :sswitch_22
    const-string v4, "predictedRating"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x26

    goto/16 :goto_1

    :sswitch_23
    const-string v4, "creditMarks"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x31

    goto/16 :goto_1

    :sswitch_24
    const-string v4, "isDolbyVisionAvailable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x1c

    goto/16 :goto_1

    :sswitch_25
    const-string v4, "nextEpisodeId"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x3c

    goto/16 :goto_1

    :sswitch_26
    const-string v4, "isHdAvailable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x19

    goto/16 :goto_1

    :sswitch_27
    const-string v4, "logicalStart"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x18

    goto/16 :goto_1

    :sswitch_28
    const-string v4, "certification"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x7

    goto/16 :goto_1

    :sswitch_29
    const-string v4, "supportsPrePlay"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x32

    goto/16 :goto_1

    :sswitch_2a
    const-string v4, "interactiveFeatures"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x33

    goto/16 :goto_1

    :sswitch_2b
    const-string v4, "seasonTitle"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x39

    goto/16 :goto_1

    :sswitch_2c
    const-string v4, "contentChangeDate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_2d
    const-string v4, "seasonCount"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x15

    goto/16 :goto_1

    :sswitch_2e
    const-string v4, "showId"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x37

    goto/16 :goto_1

    :sswitch_2f
    const-string v4, "directors"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x4

    goto/16 :goto_1

    :sswitch_30
    const-string v4, "abbrSeqLabel"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x41

    goto/16 :goto_1

    :sswitch_31
    const-string v4, "isAutoPlayEnabled"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x1f

    goto/16 :goto_1

    :sswitch_32
    const-string v4, "nextEpisodeTitle"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x3d

    goto/16 :goto_1

    :sswitch_33
    const-string v4, "isNSRE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x2e

    goto/16 :goto_1

    :sswitch_34
    const-string v4, "horzDispUrl"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_35
    const-string v4, "genres"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x6

    goto/16 :goto_1

    :sswitch_36
    const-string v4, "isHdr10Avaiable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x1d

    goto/16 :goto_1

    :sswitch_37
    const-string v4, "interestingSmallUrl"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x42

    goto/16 :goto_1

    :sswitch_38
    const-string v4, "seasonNumber"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x3f

    goto/16 :goto_1

    :sswitch_39
    const-string v4, "is5dot1Available"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x1e

    goto/16 :goto_1

    :sswitch_3a
    const-string v4, "actors"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x5

    goto/16 :goto_1

    :sswitch_3b
    const-string v4, "storyImgUrl"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x13

    goto :goto_1

    :sswitch_3c
    const-string v4, "endtime"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x17

    goto :goto_1

    :sswitch_3d
    const-string v4, "availabilityDateMsg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x40

    goto :goto_1

    :sswitch_3e
    const-string v4, "seasonNumLabel"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x2a

    goto :goto_1

    :sswitch_3f
    const-string v4, "titleUrl"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x27

    goto :goto_1

    :sswitch_40
    const-string v4, "episodeNumber"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x3e

    goto :goto_1

    :sswitch_41
    const-string v4, "showTitle"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x38

    goto :goto_1

    :sswitch_42
    const-string v4, "isPinProtected"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x23

    goto :goto_1

    :sswitch_43
    const-string v4, "isUhdAvailable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0x1b

    goto :goto_1

    :sswitch_44
    const-string v4, "isEpisode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v3, 0xb

    :cond_1
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 467
    :pswitch_0
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->creatorHome:Ljava/lang/String;

    goto/16 :goto_0

    .line 466
    :pswitch_1
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    iput v1, p0, Lcom/netflix/model/leafs/Video$Detail;->topTenRank:I

    goto/16 :goto_0

    :pswitch_2
    if-eqz v2, :cond_0

    .line 462
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 463
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->interestingSmallUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 460
    :pswitch_3
    invoke-static {v2}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->abbrSeqLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 459
    :pswitch_4
    invoke-static {v2}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->availabilityDateMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 458
    :pswitch_5
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    iput v1, p0, Lcom/netflix/model/leafs/Video$Detail;->seasonNumber:I

    goto/16 :goto_0

    .line 457
    :pswitch_6
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    iput v1, p0, Lcom/netflix/model/leafs/Video$Detail;->episodeNumber:I

    goto/16 :goto_0

    .line 456
    :pswitch_7
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->nextEpisodeTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 455
    :pswitch_8
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->nextEpisodeId:Ljava/lang/String;

    goto/16 :goto_0

    .line 454
    :pswitch_9
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->boxartUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 453
    :pswitch_a
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 452
    :pswitch_b
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->seasonTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 451
    :pswitch_c
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->showTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 450
    :pswitch_d
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->showId:Ljava/lang/String;

    goto/16 :goto_0

    .line 449
    :pswitch_e
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->seasonId:Ljava/lang/String;

    goto/16 :goto_0

    .line 448
    :pswitch_f
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->type:Ljava/lang/String;

    goto/16 :goto_0

    .line 447
    :pswitch_10
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->id:Ljava/lang/String;

    goto/16 :goto_0

    .line 445
    :pswitch_11
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-class v2, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->interactiveFeatures:Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    goto/16 :goto_0

    .line 442
    :pswitch_12
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->supportsPrePlay:Z

    goto/16 :goto_0

    .line 439
    :pswitch_13
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-class v2, Lcom/netflix/model/leafs/blades/CreditMarks;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/blades/CreditMarks;

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->creditMarks:Lcom/netflix/model/leafs/blades/CreditMarks;

    goto/16 :goto_0

    :pswitch_14
    if-eqz v2, :cond_0

    .line 434
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->interestingUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 432
    :pswitch_15
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->episodeNumberHidden:Z

    goto/16 :goto_0

    .line 431
    :pswitch_16
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isNSRE:Z

    goto/16 :goto_0

    :pswitch_17
    if-eqz v2, :cond_0

    .line 427
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-class v2, Lcom/netflix/model/leafs/originals/ContentWarning;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/originals/ContentWarning;

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->contentWarning:Lcom/netflix/model/leafs/originals/ContentWarning;

    goto/16 :goto_0

    :pswitch_18
    if-eqz v2, :cond_0

    .line 422
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->newBadge:Ljava/lang/String;

    goto/16 :goto_0

    .line 416
    :pswitch_19
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 417
    :goto_2
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v5, v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/netflix/model/leafs/Video$Detail;->episodeBadges:Ljava/util/List;

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 414
    :pswitch_1a
    invoke-static {v2}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->seasonNumLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 413
    :pswitch_1b
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->titleLogoUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 412
    :pswitch_1c
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->squareUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 411
    :pswitch_1d
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->titleUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 410
    :pswitch_1e
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v1

    iput v1, p0, Lcom/netflix/model/leafs/Video$Detail;->predictedRating:F

    goto/16 :goto_0

    .line 409
    :pswitch_1f
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isAvailableToStream:Z

    goto/16 :goto_0

    .line 408
    :pswitch_20
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isPreviewProtected:Z

    goto/16 :goto_0

    .line 407
    :pswitch_21
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isPinProtected:Z

    goto/16 :goto_0

    .line 406
    :pswitch_22
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isAgeProtected:Z

    goto/16 :goto_0

    .line 405
    :pswitch_23
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isNextPlayableEpisode:Z

    goto/16 :goto_0

    .line 404
    :pswitch_24
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    iput v1, p0, Lcom/netflix/model/leafs/Video$Detail;->autoPlayMaxCount:I

    goto/16 :goto_0

    .line 403
    :pswitch_25
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isAutoPlayEnabled:Z

    goto/16 :goto_0

    .line 402
    :pswitch_26
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->is5dot1Available:Z

    goto/16 :goto_0

    .line 401
    :pswitch_27
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isHdr10Avaiable:Z

    goto/16 :goto_0

    .line 400
    :pswitch_28
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isDolbyVisionAvailable:Z

    goto/16 :goto_0

    .line 399
    :pswitch_29
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isUhdAvailable:Z

    goto/16 :goto_0

    .line 398
    :pswitch_2a
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isNonSerializedTv:Z

    goto/16 :goto_0

    .line 397
    :pswitch_2b
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isHdAvailable:Z

    goto/16 :goto_0

    .line 396
    :pswitch_2c
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    iput v1, p0, Lcom/netflix/model/leafs/Video$Detail;->logicalStart:I

    goto/16 :goto_0

    .line 395
    :pswitch_2d
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    iput v1, p0, Lcom/netflix/model/leafs/Video$Detail;->endtime:I

    goto/16 :goto_0

    .line 394
    :pswitch_2e
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    iput v1, p0, Lcom/netflix/model/leafs/Video$Detail;->runtime:I

    goto/16 :goto_0

    .line 393
    :pswitch_2f
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    iput v1, p0, Lcom/netflix/model/leafs/Video$Detail;->seasonCount:I

    goto/16 :goto_0

    .line 392
    :pswitch_30
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    iput v1, p0, Lcom/netflix/model/leafs/Video$Detail;->episodeCount:I

    goto/16 :goto_0

    .line 391
    :pswitch_31
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->storyImgUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 390
    :pswitch_32
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->mdxVertUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 389
    :pswitch_33
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->restUrl:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_34
    if-eqz v2, :cond_0

    .line 385
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    invoke-static {v2}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->horzDispUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 383
    :pswitch_35
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isSupplementalVideo:Z

    goto/16 :goto_0

    .line 382
    :pswitch_36
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->hasTrailers:Z

    goto/16 :goto_0

    .line 381
    :pswitch_37
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isPreRelease:Z

    goto/16 :goto_0

    .line 380
    :pswitch_38
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isOriginal:Z

    goto/16 :goto_0

    .line 379
    :pswitch_39
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isEpisode:Z

    goto/16 :goto_0

    .line 378
    :pswitch_3a
    invoke-static {v2}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->supplementalMessage:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_3b
    if-eqz v2, :cond_0

    .line 373
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netflix/model/leafs/Video$Detail;->contentChangeDate:J

    goto/16 :goto_0

    .line 370
    :pswitch_3c
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    iput v1, p0, Lcom/netflix/model/leafs/Video$Detail;->maturityLevel:I

    goto/16 :goto_0

    .line 369
    :pswitch_3d
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->certification:Ljava/lang/String;

    goto/16 :goto_0

    .line 368
    :pswitch_3e
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->genres:Ljava/lang/String;

    goto/16 :goto_0

    .line 367
    :pswitch_3f
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->actors:Ljava/lang/String;

    goto/16 :goto_0

    .line 366
    :pswitch_40
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->directors:Ljava/lang/String;

    goto/16 :goto_0

    .line 365
    :pswitch_41
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->quality:Ljava/lang/String;

    goto/16 :goto_0

    .line 364
    :pswitch_42
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->copyright:Ljava/lang/String;

    goto/16 :goto_0

    .line 363
    :pswitch_43
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->synopsis:Ljava/lang/String;

    goto/16 :goto_0

    .line 362
    :pswitch_44
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    iput v1, p0, Lcom/netflix/model/leafs/Video$Detail;->year:I

    goto/16 :goto_0

    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e9cfa8f -> :sswitch_44
        -0x73e4001e -> :sswitch_43
        -0x73203c1d -> :sswitch_42
        -0x721252a5 -> :sswitch_41
        -0x719622dc -> :sswitch_40
        -0x6f761409 -> :sswitch_3f
        -0x6f2f9cef -> :sswitch_3e
        -0x6a1730e8 -> :sswitch_3d
        -0x5fbe09d8 -> :sswitch_3c
        -0x5c766bff -> :sswitch_3b
        -0x54d06ae2 -> :sswitch_3a
        -0x5417f6ca -> :sswitch_39
        -0x5118c3f4 -> :sswitch_38
        -0x50c12480 -> :sswitch_37
        -0x4d9f585e -> :sswitch_36
        -0x4a79d8b0 -> :sswitch_35
        -0x48992822 -> :sswitch_34
        -0x4659e11e -> :sswitch_33
        -0x42e2fc50 -> :sswitch_32
        -0x403c824c -> :sswitch_31
        -0x398612da -> :sswitch_30
        -0x395fe199 -> :sswitch_2f
        -0x35d4e708 -> :sswitch_2e
        -0x34c7b414 -> :sswitch_2d
        -0x33e95329 -> :sswitch_2c
        -0x33dae2cb -> :sswitch_2b
        -0x33d1eac1 -> :sswitch_2a
        -0x2fcf56ad -> :sswitch_29
        -0x266aab46 -> :sswitch_28
        -0x23e2aa27 -> :sswitch_27
        -0x1ebeea5d -> :sswitch_26
        -0x1835953d -> :sswitch_25
        -0x173cac6d -> :sswitch_24
        -0x1319d433 -> :sswitch_23
        -0xfb0bd0b -> :sswitch_22
        -0xb630cd5 -> :sswitch_21
        -0x89c31a6 -> :sswitch_20
        -0x168ce29 -> :sswitch_1f
        0xd1b -> :sswitch_1e
        0x368f3a -> :sswitch_1d
        0x38883d -> :sswitch_1c
        0x1f09f70 -> :sswitch_1b
        0x24bde73 -> :sswitch_1a
        0x6942258 -> :sswitch_19
        0x6ca7c2d -> :sswitch_18
        0x8165cae -> :sswitch_17
        0xe03fbee -> :sswitch_16
        0x17bb6d7d -> :sswitch_15
        0x18e67cc3 -> :sswitch_14
        0x22ea311b -> :sswitch_13
        0x26d0c0ff -> :sswitch_12
        0x31bc2610 -> :sswitch_11
        0x350b475e -> :sswitch_10
        0x3febc64c -> :sswitch_f
        0x416a70fb -> :sswitch_e
        0x43a818ae -> :sswitch_d
        0x44c34d97 -> :sswitch_c
        0x4e578312 -> :sswitch_b
        0x507705e3 -> :sswitch_a
        0x55046290 -> :sswitch_9
        0x5832c8e3 -> :sswitch_8
        0x5918b3b9 -> :sswitch_7
        0x5ac573c7 -> :sswitch_6
        0x5c71cfd8 -> :sswitch_5
        0x5ed127d4 -> :sswitch_4
        0x6cff1594 -> :sswitch_3
        0x73a3d409 -> :sswitch_2
        0x78d1db0b -> :sswitch_1
        0x7b90c6d4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detail{year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/Video$Detail;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", synopsis=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->synopsis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", quality=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/model/leafs/Video$Detail;->quality:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", directors=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/model/leafs/Video$Detail;->directors:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", actors=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/model/leafs/Video$Detail;->actors:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", genres=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/model/leafs/Video$Detail;->genres:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", certification=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/model/leafs/Video$Detail;->certification:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", copyright=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/model/leafs/Video$Detail;->copyright:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", horzDispUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/model/leafs/Video$Detail;->horzDispUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", restUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/model/leafs/Video$Detail;->restUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mdxVertUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/model/leafs/Video$Detail;->mdxVertUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", storyImgUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/model/leafs/Video$Detail;->storyImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", titleUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/model/leafs/Video$Detail;->titleUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", squareUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/model/leafs/Video$Detail;->squareUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", titleLogoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/model/leafs/Video$Detail;->titleLogoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", seasonNumLabel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/model/leafs/Video$Detail;->seasonNumLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", episodeCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netflix/model/leafs/Video$Detail;->episodeCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", seasonCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netflix/model/leafs/Video$Detail;->seasonCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", predictedRating="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netflix/model/leafs/Video$Detail;->predictedRating:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", maturityLevel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netflix/model/leafs/Video$Detail;->maturityLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", contentChangeDate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netflix/model/leafs/Video$Detail;->contentChangeDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", supplementalMessage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/model/leafs/Video$Detail;->supplementalMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isEpisode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isEpisode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOriginal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isOriginal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPreRelease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isPreRelease:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAvailableForDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isDownloadAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasTrailers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->hasTrailers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSupplementalVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isSupplementalVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNSRE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isNSRE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", newBadge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->newBadge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", episodeNumberHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->episodeNumberHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHdAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isHdAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNonSerializedTv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isNonSerializedTv:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUhdAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isUhdAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDolbyVisionAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isDolbyVisionAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHdr10Avaiable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isHdr10Avaiable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is5dot1Available="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->is5dot1Available:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAutoPlayEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isAutoPlayEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNextPlayableEpisode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isNextPlayableEpisode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAgeProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isAgeProtected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPinProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isPinProtected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPreviewProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isPreviewProtected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", autoPlayMaxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/Video$Detail;->autoPlayMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", episodeBadges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->episodeBadges:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAvailableToStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isAvailableToStream:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", runtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/Video$Detail;->runtime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/Video$Detail;->endtime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", logicalStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/Video$Detail;->logicalStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportsPrePlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->supportsPrePlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", interactiveFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->interactiveFeatures:Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topTenRank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/model/leafs/Video$Detail;->topTenRank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", creatorHome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->creatorHome:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
