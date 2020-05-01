.class public Lo/rH;
.super Lo/qy;
.source ""


# instance fields
.field private a:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/pt;Landroid/os/Handler;)V
    .locals 0

    .line 40
    invoke-direct {p0, p2, p1}, Lo/qy;-><init>(Landroid/os/Handler;Lo/pt;)V

    const/4 p1, 0x0

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lo/rH;->a:Landroid/util/Pair;

    return-void
.end method

.method static synthetic a(Lo/rH;)Lo/pt;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/rH;->b:Lo/pt;

    return-object p0
.end method

.method static synthetic b(Lo/rH;)Lo/pt;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/rH;->b:Lo/pt;

    return-object p0
.end method

.method static synthetic c(Lo/rH;)Lo/pt;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/rH;->b:Lo/pt;

    return-object p0
.end method

.method static synthetic d(Lo/rH;)Lo/pt;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/rH;->b:Lo/pt;

    return-object p0
.end method

.method static synthetic e(Lo/rH;)Lo/pt;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/rH;->b:Lo/pt;

    return-object p0
.end method


# virtual methods
.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lo/rH;->d:Landroid/os/Handler;

    new-instance v1, Lo/rH$4;

    invoke-direct {v1, p0, p1}, Lo/rH$4;-><init>(Lo/rH;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 2

    .line 49
    iget-object v0, p0, Lo/rH;->d:Landroid/os/Handler;

    new-instance v1, Lo/rH$2;

    invoke-direct {v1, p0, p2, p1}, Lo/rH$2;-><init>(Lo/rH;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0

    .line 86
    iput-object p1, p0, Lo/rH;->c:Ljava/lang/String;

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lo/rH;->a:Landroid/util/Pair;

    return-void
.end method
