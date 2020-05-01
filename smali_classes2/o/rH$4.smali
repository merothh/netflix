.class Lo/rH$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/rH;->onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/google/android/exoplayer2/ExoPlaybackException;

.field final synthetic d:Lo/rH;


# direct methods
.method constructor <init>(Lo/rH;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lo/rH$4;->d:Lo/rH;

    iput-object p2, p0, Lo/rH$4;->c:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 78
    iget-object v0, p0, Lo/rH$4;->d:Lo/rH;

    invoke-static {v0}, Lo/rH;->b(Lo/rH;)Lo/pt;

    move-result-object v0

    new-instance v1, Lo/sZ;

    iget-object v2, p0, Lo/rH$4;->c:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils;->c(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lo/xD;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/sZ;-><init>(Lo/xD;)V

    invoke-interface {v0, v1}, Lo/pt;->b(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    return-void
.end method
