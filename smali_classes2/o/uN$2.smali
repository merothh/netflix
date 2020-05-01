.class Lo/uN$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/uI$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/uN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/uN;


# direct methods
.method constructor <init>(Lo/uN;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lo/uN$2;->b:Lo/uN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLo/uC;)V
    .locals 4

    .line 365
    iget-object p1, p0, Lo/uN$2;->b:Lo/uN;

    invoke-static {p1}, Lo/uN;->b(Lo/uN;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 366
    iget-object p1, p0, Lo/uN$2;->b:Lo/uN;

    invoke-static {p1}, Lo/uN;->b(Lo/uN;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    iget-object v2, p0, Lo/uN$2;->b:Lo/uN;

    const/16 v3, 0x1001

    invoke-direct {v1, v2, v3, p3}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v1, p2, v0

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    :cond_0
    return-void
.end method

.method public b(JLjava/io/IOException;)V
    .locals 4

    .line 372
    iget-object p1, p0, Lo/uN$2;->b:Lo/uN;

    invoke-static {p1}, Lo/uN;->b(Lo/uN;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 373
    iget-object p1, p0, Lo/uN$2;->b:Lo/uN;

    invoke-static {p1}, Lo/uN;->b(Lo/uN;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    iget-object v2, p0, Lo/uN$2;->b:Lo/uN;

    const/16 v3, 0x1000

    invoke-direct {v1, v2, v3, p3}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v1, p2, v0

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    :cond_0
    return-void
.end method
