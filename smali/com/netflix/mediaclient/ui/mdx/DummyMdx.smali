.class public Lcom/netflix/mediaclient/ui/mdx/DummyMdx;
.super Ljava/lang/Object;
.source "DummyMdx.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IMdx;


# instance fields
.field private final bifMan:Lcom/netflix/mediaclient/media/BifManager;

.field private final dummyDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "http://tp.akam.nflximg.com/tpa2/799/1190182799.bif"

    .line 27
    new-instance v1, Lcom/netflix/mediaclient/media/BifManager;

    invoke-direct {v1, p1, v0}, Lcom/netflix/mediaclient/media/BifManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/DummyMdx;->bifMan:Lcom/netflix/mediaclient/media/BifManager;

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx/DummyMdxVideoDetails;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/mdx/DummyMdxVideoDetails;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/DummyMdx;->dummyDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 30
    return-void
.end method


# virtual methods
.method public getBifFrame(I)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/DummyMdx;->bifMan:Lcom/netflix/mediaclient/media/BifManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/media/BifManager;->getIndexFrame(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "Dummy_UUID"

    return-object v0
.end method

.method public getCurrentTargetCapabilities()Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetList()[Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    return-object v0
.end method

.method public getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/DummyMdx;->dummyDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    return-object v0
.end method

.method public getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBifReady()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/DummyMdx;->bifMan:Lcom/netflix/mediaclient/media/BifManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/BifManager;->isBifReady()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public isTargetLaunchingOrLaunched()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public prefetchVideo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    return-void
.end method

.method public setCurrentTarget(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public setDialUuidAsCurrentTarget(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public switchPlaybackFromTarget(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public transferPlaybackFromLocal()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method
