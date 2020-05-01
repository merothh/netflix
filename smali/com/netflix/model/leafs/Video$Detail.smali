.class public Lcom/netflix/model/leafs/Video$Detail;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;


# static fields
.field private static final TAG:Ljava/lang/String; = "Detail"


# instance fields
.field public actors:Ljava/lang/String;

.field public autoPlayMaxCount:I

.field public baseUrl:Ljava/lang/String;

.field public baseUrlBig:Ljava/lang/String;

.field public bifUrl:Ljava/lang/String;

.field public certification:Ljava/lang/String;

.field public copyright:Ljava/lang/String;

.field public directors:Ljava/lang/String;

.field public endtime:I

.field public episodeBadges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public episodeCount:I

.field public expirationTime:J

.field public genres:Ljava/lang/String;

.field public hasTrailers:Z

.field public hasWatched:Z

.field public hiResHorzUrl:Ljava/lang/String;

.field public horzDispUrl:Ljava/lang/String;

.field public interestingUrl:Ljava/lang/String;

.field public is3DAvailable:Z

.field public is5dot1Available:Z

.field public isAgeProtected:Z

.field public isAutoPlayEnabled:Z

.field public isAvailableToStream:Z

.field public isDolbyVisionAvailable:Z

.field public isDownloadAvailable:Z

.field public isExemptFromInterrupterLimit:Z

.field public isHdAvailable:Z

.field public isHdr10Avaiable:Z

.field public isNSRE:Z

.field public isNextPlayableEpisode:Z

.field public isOriginal:Z

.field public isPinProtected:Z

.field public isPreRelease:Z

.field public isSupplementalVideo:Z

.field public isUhdAvailable:Z

.field public logicalStart:I

.field public maturityLevel:I

.field public mdxVertUrl:Ljava/lang/String;

.field public predictedRating:F

.field public quality:Ljava/lang/String;

.field public restUrl:Ljava/lang/String;

.field public runtime:I

.field public seasonCount:I

.field public seasonNumLabel:Ljava/lang/String;

.field public storyImgUrl:Ljava/lang/String;

.field public supplementalMessage:Ljava/lang/String;

.field public synopsis:Ljava/lang/String;

.field public synopsisNarrative:Ljava/lang/String;

.field public titleCroppedUrl:Ljava/lang/String;

.field public titleUrl:Ljava/lang/String;

.field public tvCardUrl:Ljava/lang/String;

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->autoPlayMaxCount:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->episodeBadges:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getInterestingUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->interestingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    sget-boolean v1, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Detail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Populating with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    move v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->year:I

    goto :goto_0

    :sswitch_0
    const-string/jumbo v5, "year"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "synopsis"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "copyright"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v5, "synopsisNarrative"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v5, "quality"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v5, "directors"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v5, "actors"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v5, "genres"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v5, "certification"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string/jumbo v5, "maturityLevel"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string/jumbo v5, "expirationTime"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v5, "supplementalMessage"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v5, "isOriginal"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v5, "isPreRelease"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v5, "hasTrailers"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v5, "isSupplementalVideo"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v5, "horzDispUrl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v5, "restUrl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v5, "bifUrl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v5, "baseUrl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v5, "baseUrlBig"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v5, "tvCardUrl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v5, "hiResHorzUrl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v5, "mdxVertUrl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string/jumbo v5, "storyImgUrl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string/jumbo v5, "episodeCount"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string/jumbo v5, "seasonCount"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_1b
    const-string/jumbo v5, "runtime"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_1c
    const-string/jumbo v5, "endtime"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_1d
    const-string/jumbo v5, "logicalStart"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_1e
    const-string/jumbo v5, "isHdAvailable"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_1f
    const-string/jumbo v5, "isUhdAvailable"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_20
    const-string/jumbo v5, "is3DAvailable"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_21
    const-string/jumbo v5, "isDolbyVisionAvailable"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_22
    const-string/jumbo v5, "isHdr10Avaiable"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_23
    const-string/jumbo v5, "is5dot1Available"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_24
    const-string/jumbo v5, "isAutoPlayEnabled"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_25
    const-string/jumbo v5, "isExemptFromInterrupterLimit"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_26
    const-string/jumbo v5, "autoPlayMaxCount"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_27
    const-string/jumbo v5, "isNextPlayableEpisode"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_28
    const-string/jumbo v5, "isAgeProtected"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_29
    const-string/jumbo v5, "isPinProtected"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_2a
    const-string/jumbo v5, "isAvailableForED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_2b
    const-string/jumbo v5, "predictedRating"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2b

    goto/16 :goto_1

    :sswitch_2c
    const-string/jumbo v5, "titleUrl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2c

    goto/16 :goto_1

    :sswitch_2d
    const-string/jumbo v5, "titleCroppedUrl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2d

    goto/16 :goto_1

    :sswitch_2e
    const-string/jumbo v5, "seasonNumLabel"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2e

    goto/16 :goto_1

    :sswitch_2f
    const-string/jumbo v5, "episodeBadges"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2f

    goto/16 :goto_1

    :sswitch_30
    const-string/jumbo v5, "hasWatched"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x30

    goto/16 :goto_1

    :sswitch_31
    const-string/jumbo v5, "isNSRE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x31

    goto/16 :goto_1

    :sswitch_32
    const-string/jumbo v5, "interestingUrl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x32

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->synopsis:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->copyright:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->synopsisNarrative:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->quality:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->directors:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->actors:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->genres:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->certification:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->maturityLevel:I

    goto/16 :goto_0

    :pswitch_a
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/model/leafs/Video$Detail;->expirationTime:J

    goto/16 :goto_0

    :pswitch_b
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->supplementalMessage:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isOriginal:Z

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isPreRelease:Z

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->hasTrailers:Z

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isSupplementalVideo:Z

    goto/16 :goto_0

    :pswitch_10
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->horzDispUrl:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->restUrl:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->bifUrl:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->baseUrl:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->baseUrlBig:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->tvCardUrl:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->hiResHorzUrl:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->mdxVertUrl:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->storyImgUrl:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->episodeCount:I

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->seasonCount:I

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->runtime:I

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->endtime:I

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->logicalStart:I

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isHdAvailable:Z

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isUhdAvailable:Z

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->is3DAvailable:Z

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isDolbyVisionAvailable:Z

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isHdr10Avaiable:Z

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->is5dot1Available:Z

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isAutoPlayEnabled:Z

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isExemptFromInterrupterLimit:Z

    goto/16 :goto_0

    :pswitch_26
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->autoPlayMaxCount:I

    goto/16 :goto_0

    :pswitch_27
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isNextPlayableEpisode:Z

    goto/16 :goto_0

    :pswitch_28
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isAgeProtected:Z

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isPinProtected:Z

    goto/16 :goto_0

    :pswitch_2a
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isAvailableToStream:Z

    goto/16 :goto_0

    :pswitch_2b
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->predictedRating:F

    goto/16 :goto_0

    :pswitch_2c
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->titleUrl:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2d
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->titleCroppedUrl:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2e
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->seasonNumLabel:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2f
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    move v0, v2

    :goto_2
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/netflix/model/leafs/Video$Detail;->episodeBadges:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_30
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->hasWatched:Z

    goto/16 :goto_0

    :pswitch_31
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isNSRE:Z

    goto/16 :goto_0

    :pswitch_32
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->interestingUrl:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x73e4001e -> :sswitch_1f
        -0x73203c1d -> :sswitch_29
        -0x6f761409 -> :sswitch_2c
        -0x6f2f9cef -> :sswitch_2e
        -0x6af634a3 -> :sswitch_15
        -0x5fbe09d8 -> :sswitch_1c
        -0x5c766bff -> :sswitch_18
        -0x54d06ae2 -> :sswitch_6
        -0x5417f6ca -> :sswitch_23
        -0x52cdc410 -> :sswitch_12
        -0x4d9f585e -> :sswitch_22
        -0x4a79d8b0 -> :sswitch_7
        -0x48992822 -> :sswitch_10
        -0x4659e11e -> :sswitch_31
        -0x43bf624c -> :sswitch_30
        -0x403c824c -> :sswitch_24
        -0x395fe199 -> :sswitch_5
        -0x34c7b414 -> :sswitch_1a
        -0x2d7398be -> :sswitch_14
        -0x27d5dde4 -> :sswitch_a
        -0x266aab46 -> :sswitch_8
        -0x23e2aa27 -> :sswitch_1d
        -0x1ebeea5d -> :sswitch_1e
        -0x1d9a26c2 -> :sswitch_3
        -0x173cac6d -> :sswitch_21
        -0x13d37722 -> :sswitch_13
        -0xfb0bd0b -> :sswitch_2b
        -0x89c31a6 -> :sswitch_e
        -0x168ce29 -> :sswitch_32
        0x38883d -> :sswitch_0
        0x24bde73 -> :sswitch_9
        0x6ca7c2d -> :sswitch_f
        0x8165cae -> :sswitch_d
        0x17bb6d7d -> :sswitch_17
        0x18e67cc3 -> :sswitch_b
        0x215047ee -> :sswitch_20
        0x22ea311b -> :sswitch_c
        0x26d0c0ff -> :sswitch_4
        0x2adce9a9 -> :sswitch_2a
        0x3f4f8081 -> :sswitch_16
        0x416a70fb -> :sswitch_11
        0x43a818ae -> :sswitch_26
        0x55046290 -> :sswitch_27
        0x55da4ce8 -> :sswitch_2d
        0x5918b3b9 -> :sswitch_28
        0x5ac573c7 -> :sswitch_2
        0x5c71cfd8 -> :sswitch_1b
        0x5ed127d4 -> :sswitch_19
        0x65eb2a5e -> :sswitch_25
        0x6cff1594 -> :sswitch_1
        0x78d1db0b -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
    .end packed-switch
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Detail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Populating with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    return v0

    :sswitch_0
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "synopsis"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "copyright"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "synopsisNarrative"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "quality"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v3, "directors"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v3, "actors"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v3, "genres"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v3, "certification"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v3, "maturityLevel"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v3, "expirationTime"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xa

    goto :goto_0

    :sswitch_b
    const-string/jumbo v3, "supplementalMessage"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v3, "isOriginal"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v3, "isPreRelease"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v3, "hasTrailers"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v3, "isSupplementalVideo"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v3, "horzDispUrl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v3, "restUrl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v3, "bifUrl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v3, "interestingUrl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v3, "baseUrl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v3, "baseUrlBig"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v3, "tvCardUrl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v3, "hiResHorzUrl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v3, "mdxVertUrl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v3, "storyImgUrl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v3, "episodeCount"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v3, "seasonCount"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v3, "runtime"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v3, "endtime"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string/jumbo v3, "logicalStart"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v3, "isHdAvailable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string/jumbo v3, "isUhdAvailable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x20

    goto/16 :goto_0

    :sswitch_21
    const-string/jumbo v3, "is3DAvailable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x21

    goto/16 :goto_0

    :sswitch_22
    const-string/jumbo v3, "isDolbyVisionAvailable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x22

    goto/16 :goto_0

    :sswitch_23
    const-string/jumbo v3, "isHdr10Avaiable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x23

    goto/16 :goto_0

    :sswitch_24
    const-string/jumbo v3, "is5dot1Available"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x24

    goto/16 :goto_0

    :sswitch_25
    const-string/jumbo v3, "isAutoPlayEnabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x25

    goto/16 :goto_0

    :sswitch_26
    const-string/jumbo v3, "isExemptFromInterrupterLimit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x26

    goto/16 :goto_0

    :sswitch_27
    const-string/jumbo v3, "autoPlayMaxCount"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x27

    goto/16 :goto_0

    :sswitch_28
    const-string/jumbo v3, "isNextPlayableEpisode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x28

    goto/16 :goto_0

    :sswitch_29
    const-string/jumbo v3, "isAgeProtected"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x29

    goto/16 :goto_0

    :sswitch_2a
    const-string/jumbo v3, "isPinProtected"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x2a

    goto/16 :goto_0

    :sswitch_2b
    const-string/jumbo v3, "isAvailableToStream"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x2b

    goto/16 :goto_0

    :sswitch_2c
    const-string/jumbo v3, "predictedRating"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x2c

    goto/16 :goto_0

    :sswitch_2d
    const-string/jumbo v3, "titleUrl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x2d

    goto/16 :goto_0

    :sswitch_2e
    const-string/jumbo v3, "titleCroppedUrl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x2e

    goto/16 :goto_0

    :sswitch_2f
    const-string/jumbo v3, "seasonNumLabel"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x2f

    goto/16 :goto_0

    :sswitch_30
    const-string/jumbo v3, "episodeBadges"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x30

    goto/16 :goto_0

    :sswitch_31
    const-string/jumbo v3, "hasWatched"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x31

    goto/16 :goto_0

    :sswitch_32
    const-string/jumbo v3, "isNSRE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x32

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->year:I

    :cond_2
    :goto_2
    move v0, v1

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->synopsis:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->copyright:Ljava/lang/String;

    goto :goto_2

    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->synopsisNarrative:Ljava/lang/String;

    goto :goto_2

    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->quality:Ljava/lang/String;

    goto :goto_2

    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->directors:Ljava/lang/String;

    goto :goto_2

    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->actors:Ljava/lang/String;

    goto :goto_2

    :pswitch_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->genres:Ljava/lang/String;

    goto :goto_2

    :pswitch_8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->certification:Ljava/lang/String;

    goto :goto_2

    :pswitch_9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->maturityLevel:I

    goto :goto_2

    :pswitch_a
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/model/leafs/Video$Detail;->expirationTime:J

    goto :goto_2

    :pswitch_b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->supplementalMessage:Ljava/lang/String;

    goto :goto_2

    :pswitch_c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isOriginal:Z

    goto :goto_2

    :pswitch_d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isPreRelease:Z

    goto :goto_2

    :pswitch_e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->hasTrailers:Z

    goto :goto_2

    :pswitch_f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isSupplementalVideo:Z

    goto :goto_2

    :pswitch_10
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->horzDispUrl:Ljava/lang/String;

    goto :goto_2

    :pswitch_11
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->restUrl:Ljava/lang/String;

    goto :goto_2

    :pswitch_12
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->bifUrl:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_13
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->interestingUrl:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_14
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->baseUrl:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_15
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->baseUrlBig:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_16
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->tvCardUrl:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_17
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->hiResHorzUrl:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_18
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->mdxVertUrl:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_19
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->storyImgUrl:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_1a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->episodeCount:I

    goto/16 :goto_2

    :pswitch_1b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->seasonCount:I

    goto/16 :goto_2

    :pswitch_1c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->runtime:I

    goto/16 :goto_2

    :pswitch_1d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->endtime:I

    goto/16 :goto_2

    :pswitch_1e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->logicalStart:I

    goto/16 :goto_2

    :pswitch_1f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isHdAvailable:Z

    goto/16 :goto_2

    :pswitch_20
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isUhdAvailable:Z

    goto/16 :goto_2

    :pswitch_21
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->is3DAvailable:Z

    goto/16 :goto_2

    :pswitch_22
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isDolbyVisionAvailable:Z

    goto/16 :goto_2

    :pswitch_23
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isHdr10Avaiable:Z

    goto/16 :goto_2

    :pswitch_24
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->is5dot1Available:Z

    goto/16 :goto_2

    :pswitch_25
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isAutoPlayEnabled:Z

    goto/16 :goto_2

    :pswitch_26
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isExemptFromInterrupterLimit:Z

    goto/16 :goto_2

    :pswitch_27
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->autoPlayMaxCount:I

    goto/16 :goto_2

    :pswitch_28
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isNextPlayableEpisode:Z

    goto/16 :goto_2

    :pswitch_29
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isAgeProtected:Z

    goto/16 :goto_2

    :pswitch_2a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isPinProtected:Z

    goto/16 :goto_2

    :pswitch_2b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isAvailableToStream:Z

    goto/16 :goto_2

    :pswitch_2c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble()D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lcom/netflix/model/leafs/Video$Detail;->predictedRating:F

    goto/16 :goto_2

    :pswitch_2d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->titleUrl:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_2e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->titleCroppedUrl:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_2f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->seasonNumLabel:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_30
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {p2, v0, v1}, Lcom/netflix/falkor/BranchNodeUtils;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$Detail;->episodeBadges:Ljava/util/List;

    goto/16 :goto_2

    :pswitch_31
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->hasWatched:Z

    goto/16 :goto_2

    :pswitch_32
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/Video$Detail;->isNSRE:Z

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73e4001e -> :sswitch_20
        -0x73203c1d -> :sswitch_2a
        -0x6f761409 -> :sswitch_2d
        -0x6f2f9cef -> :sswitch_2f
        -0x6af634a3 -> :sswitch_16
        -0x5fbe09d8 -> :sswitch_1d
        -0x5c766bff -> :sswitch_19
        -0x54d06ae2 -> :sswitch_6
        -0x5417f6ca -> :sswitch_24
        -0x52cdc410 -> :sswitch_12
        -0x4d9f585e -> :sswitch_23
        -0x4a79d8b0 -> :sswitch_7
        -0x48992822 -> :sswitch_10
        -0x4659e11e -> :sswitch_32
        -0x43bf624c -> :sswitch_31
        -0x403c824c -> :sswitch_25
        -0x395fe199 -> :sswitch_5
        -0x34c7b414 -> :sswitch_1b
        -0x2d7398be -> :sswitch_15
        -0x27d5dde4 -> :sswitch_a
        -0x266aab46 -> :sswitch_8
        -0x23e2aa27 -> :sswitch_1e
        -0x1ebeea5d -> :sswitch_1f
        -0x1d9a26c2 -> :sswitch_3
        -0x173cac6d -> :sswitch_22
        -0x13d37722 -> :sswitch_14
        -0xfb0bd0b -> :sswitch_2c
        -0x89c31a6 -> :sswitch_e
        -0x168ce29 -> :sswitch_13
        0x38883d -> :sswitch_0
        0x24bde73 -> :sswitch_9
        0x6ca7c2d -> :sswitch_f
        0x8165cae -> :sswitch_d
        0x17bb6d7d -> :sswitch_18
        0x18e67cc3 -> :sswitch_b
        0x215047ee -> :sswitch_21
        0x22ea311b -> :sswitch_c
        0x26d0c0ff -> :sswitch_4
        0x3f4f8081 -> :sswitch_17
        0x416a70fb -> :sswitch_11
        0x43a818ae -> :sswitch_27
        0x55046290 -> :sswitch_28
        0x55da4ce8 -> :sswitch_2e
        0x5918b3b9 -> :sswitch_29
        0x5ac573c7 -> :sswitch_2
        0x5c71cfd8 -> :sswitch_1c
        0x5ed127d4 -> :sswitch_1a
        0x65eb2a5e -> :sswitch_26
        0x6cff1594 -> :sswitch_1
        0x78d1db0b -> :sswitch_30
        0x7df243ba -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Detail{year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/model/leafs/Video$Detail;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", synopsis=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->synopsis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", synopsisNarrative=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->synopsisNarrative:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", quality=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->quality:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", directors=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->directors:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", actors=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->actors:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", genres=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->genres:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", certification=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->certification:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", copyright=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->copyright:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", horzDispUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->horzDispUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", restUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->restUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bifUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->bifUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", baseUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", baseUrlBig=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->baseUrlBig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tvCardUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->tvCardUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hiResHorzUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->hiResHorzUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mdxVertUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->mdxVertUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", storyImgUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->storyImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", titleUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->titleUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", titleCroppedUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->titleCroppedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", seasonNumLabel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->seasonNumLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", episodeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/model/leafs/Video$Detail;->episodeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", seasonCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/model/leafs/Video$Detail;->seasonCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", predictedRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/model/leafs/Video$Detail;->predictedRating:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maturityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/model/leafs/Video$Detail;->maturityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", expirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/model/leafs/Video$Detail;->expirationTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", supplementalMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->supplementalMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isOriginal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isOriginal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isPreRelease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isPreRelease:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isAvailableForDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isDownloadAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasTrailers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->hasTrailers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isSupplementalVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isSupplementalVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isNSRE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isNSRE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isHdAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isHdAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isUhdAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isUhdAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", is3DAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->is3DAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isDolbyVisionAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isDolbyVisionAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isHdr10Avaiable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isHdr10Avaiable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", is5dot1Available="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->is5dot1Available:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isAutoPlayEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isAutoPlayEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isExemptFromInterrupterLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isExemptFromInterrupterLimit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isNextPlayableEpisode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isNextPlayableEpisode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isAgeProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isAgeProtected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isPinProtected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isPinProtected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasWatched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->hasWatched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", autoPlayMaxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/model/leafs/Video$Detail;->autoPlayMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", episodeBadges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/Video$Detail;->episodeBadges:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isAvailableToStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/Video$Detail;->isAvailableToStream:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", runtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/model/leafs/Video$Detail;->runtime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/model/leafs/Video$Detail;->endtime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", logicalStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/model/leafs/Video$Detail;->logicalStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
