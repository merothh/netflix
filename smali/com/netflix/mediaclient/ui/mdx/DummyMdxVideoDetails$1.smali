.class Lcom/netflix/mediaclient/ui/mdx/DummyMdxVideoDetails$1;
.super Ljava/lang/Object;
.source "DummyMdxVideoDetails.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Playable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/DummyMdxVideoDetails;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/DummyMdxVideoDetails;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/DummyMdxVideoDetails$1;->this$0:Lcom/netflix/mediaclient/ui/mdx/DummyMdxVideoDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoPlayMaxCount()I
    .locals 1

    .prologue
    .line 312
    const/4 v0, -0x1

    return v0
.end method

.method public getEndtime()I
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public getEpisodeNumber()I
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 292
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLogicalStart()I
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    const-string/jumbo v0, "70178217"

    return-object v0
.end method

.method public getParentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    const-string/jumbo v0, "Dummy parent title - extra long version of the string to test textView ellipsize functionality"

    return-object v0
.end method

.method public getPlayableBookmarkPosition()I
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayableBookmarkUpdateTime()J
    .locals 2

    .prologue
    .line 337
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPlayableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const-string/jumbo v0, "70178217"

    return-object v0
.end method

.method public getPlayableTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    const-string/jumbo v0, "Dummy playable title"

    return-object v0
.end method

.method public getRuntime()I
    .locals 1

    .prologue
    .line 357
    const/16 v0, 0x1374

    return v0
.end method

.method public getSeasonAbbrSeqLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeasonNumber()I
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method public isAdvisoryDisabled()Z
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public isAgeProtected()Z
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoPlayEnabled()Z
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailableOffline()Z
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailableToStream()Z
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public isExemptFromInterrupterLimit()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public isNSRE()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public isNextPlayableEpisode()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public isPinProtected()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayableEpisode()Z
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public isSupplementalVideo()Z
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method
