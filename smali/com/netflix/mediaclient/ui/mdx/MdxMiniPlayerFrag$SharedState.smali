.class Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;
.super Ljava/lang/Object;
.source "MdxMiniPlayerFrag.java"


# instance fields
.field controlsEnabled:Z

.field isEpisodeReady:Z

.field isVolumeEnabled:Z

.field mostRecentVolume:I

.field shouldShowSelf:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "MdxMiniPlayerFrag"

    const-string/jumbo v1, "resetting shared state"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->shouldShowSelf:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->controlsEnabled:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->isEpisodeReady:Z

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerFrag$SharedState;->isVolumeEnabled:Z

    return-void
.end method
