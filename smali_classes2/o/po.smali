.class public Lo/po;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/po$Activity;
    }
.end annotation


# static fields
.field private static e:Ljava/lang/String; = "DelayedBifDownloader"


# instance fields
.field private a:J

.field private final b:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private g:Lo/pK;

.field private h:Lo/po$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lo/po;->c:Landroid/os/Handler;

    .line 41
    iput-object p2, p0, Lo/po;->b:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    return-void
.end method

.method static synthetic a(Lo/po;Lo/pK;)Lo/pK;
    .locals 0

    .line 26
    iput-object p1, p0, Lo/po;->g:Lo/pK;

    return-object p1
.end method

.method static synthetic b(Lo/po;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/po;->b:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lo/po;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static b([Lo/sP;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 126
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    .line 129
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    .line 130
    invoke-virtual {v4}, Lo/sP;->c()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 131
    invoke-virtual {v4}, Lo/sP;->c()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    if-eqz v7, :cond_1

    const-string v8, "file://"

    .line 132
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    return-object v7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method static synthetic c(Lo/po;)Lo/pK;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/po;->g:Lo/pK;

    return-object p0
.end method

.method static synthetic c(Lo/po;I)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lo/po;->d(I)Z

    move-result p0

    return p0
.end method

.method private d(I)Z
    .locals 6

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x1f4

    if-ge p1, v2, :cond_1

    const-wide/16 v2, 0x7530

    .line 77
    iget-wide v4, p0, Lo/po;->a:J

    add-long/2addr v4, v2

    cmp-long p1, v0, v4

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic d(Lo/po;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lo/po;->d:Z

    return p0
.end method

.method static synthetic e(Lo/po;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/po;->c:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lo/po;->d:Z

    .line 88
    iget-object v0, p0, Lo/po;->g:Lo/pK;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lo/pK;->c()V

    .line 90
    iput-object v1, p0, Lo/po;->g:Lo/pK;

    .line 92
    :cond_0
    iget-object v0, p0, Lo/po;->h:Lo/po$Activity;

    if-eqz v0, :cond_1

    .line 93
    iget-object v2, p0, Lo/po;->c:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    iput-object v1, p0, Lo/po;->h:Lo/po$Activity;

    :cond_1
    return-void
.end method

.method public c()Lo/pK;
    .locals 1

    .line 82
    iget-object v0, p0, Lo/po;->g:Lo/pK;

    return-object v0
.end method

.method public d(Landroid/content/Context;Lo/xZ;[Lo/sP;Z)V
    .locals 5

    if-eqz p3, :cond_4

    .line 50
    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_2

    .line 55
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/po;->a:J

    .line 56
    sget-object v0, Lo/po;->e:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lo/po;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "DelayedBifHandler - mStartTimeInMs :%d"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 57
    invoke-static {p3}, Lo/po;->b([Lo/sP;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    new-instance p1, Lo/pN;

    invoke-direct {p1, v0}, Lo/pN;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/po;->g:Lo/pK;

    goto :goto_1

    .line 61
    :cond_1
    iget-object v0, p0, Lo/po;->h:Lo/po$Activity;

    if-nez v0, :cond_3

    .line 62
    new-instance v0, Lo/po$Activity;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/po$Activity;-><init>(Lo/po;Landroid/content/Context;Lo/xZ;[Lo/sP;)V

    iput-object v0, p0, Lo/po;->h:Lo/po$Activity;

    .line 63
    iget-object p1, p0, Lo/po;->c:Landroid/os/Handler;

    iget-object p2, p0, Lo/po;->h:Lo/po$Activity;

    if-eqz p4, :cond_2

    const-wide/16 p3, 0x1388

    goto :goto_0

    :cond_2
    const-wide/16 p3, 0x0

    :goto_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void

    .line 51
    :cond_4
    :goto_2
    sget-object p1, Lo/po;->e:Ljava/lang/String;

    const-string p2, " bif url is not valid"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
