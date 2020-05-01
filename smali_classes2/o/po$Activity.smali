.class Lo/po$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/po;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field private final a:Lo/xZ;

.field private final c:[Lo/sP;

.field private final d:Landroid/content/Context;

.field final synthetic e:Lo/po;


# direct methods
.method public constructor <init>(Lo/po;Landroid/content/Context;Lo/xZ;[Lo/sP;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lo/po$Activity;->e:Lo/po;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lo/po$Activity;->d:Landroid/content/Context;

    .line 105
    iput-object p3, p0, Lo/po$Activity;->a:Lo/xZ;

    .line 106
    iput-object p4, p0, Lo/po$Activity;->c:[Lo/sP;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 111
    iget-object v0, p0, Lo/po$Activity;->e:Lo/po;

    invoke-static {v0}, Lo/po;->d(Lo/po;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lo/po$Activity;->e:Lo/po;

    invoke-static {v0}, Lo/po;->b(Lo/po;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/po$Activity;->e:Lo/po;

    invoke-static {v0}, Lo/po;->b(Lo/po;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 113
    :goto_0
    iget-object v2, p0, Lo/po$Activity;->e:Lo/po;

    invoke-static {v2, v0}, Lo/po;->c(Lo/po;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    invoke-static {}, Lo/po;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "availableBandwidth: %d, downloading bif ..."

    invoke-static {v2, v0, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 115
    iget-object v0, p0, Lo/po$Activity;->e:Lo/po;

    new-instance v1, Lo/pJ;

    iget-object v2, p0, Lo/po$Activity;->a:Lo/xZ;

    iget-object v3, p0, Lo/po$Activity;->c:[Lo/sP;

    invoke-direct {v1, v2, v3}, Lo/pJ;-><init>(Lo/xZ;[Lo/sP;)V

    invoke-static {v0, v1}, Lo/po;->a(Lo/po;Lo/pK;)Lo/pK;

    .line 118
    :cond_1
    iget-object v0, p0, Lo/po$Activity;->e:Lo/po;

    invoke-static {v0}, Lo/po;->c(Lo/po;)Lo/pK;

    move-result-object v0

    if-nez v0, :cond_2

    .line 119
    iget-object v0, p0, Lo/po$Activity;->e:Lo/po;

    invoke-static {v0}, Lo/po;->e(Lo/po;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
