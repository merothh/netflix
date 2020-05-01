.class Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;
.super Ljava/lang/Object;
.source "MiniPlayerControlsFrag.java"


# instance fields
.field controlsEnabled:Z

.field isEpisodeReady:Z

.field isVolumeEnabled:Z

.field mostRecentVolume:I

.field shouldShowSelf:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$1;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    const-string/jumbo v0, "MdxMiniPlayerFrag"

    const-string/jumbo v1, "resetting shared state"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->shouldShowSelf:Z

    .line 139
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->controlsEnabled:Z

    .line 140
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->isEpisodeReady:Z

    .line 141
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->isVolumeEnabled:Z

    .line 142
    return-void
.end method
