.class Lo/nI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/nI$ActionBar;,
        Lo/nI$Activity;
    }
.end annotation


# static fields
.field private static final k:I

.field private static final n:I

.field private static final o:[J

.field private static final p:[J


# instance fields
.field private final A:Ljava/lang/Runnable;

.field private B:Z

.field private C:J

.field private final D:Ljava/lang/Runnable;

.field private final E:Ljava/lang/Runnable;

.field private final a:Lo/iw;

.field private final b:Lo/iu;

.field private final c:Landroid/os/Handler;

.field private final d:Lo/iy;

.field private final e:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private f:Lcom/netflix/mediaclient/service/job/NetflixJob;

.field private final g:Landroid/content/Context;

.field private h:Z

.field private i:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

.field private final j:Lo/nI$Activity;

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ov;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:I

.field private final y:J

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [J

    const/4 v2, 0x0

    const-wide/32 v3, 0xea60

    aput-wide v3, v1, v2

    .line 84
    sput-object v1, Lo/nI;->o:[J

    .line 87
    sget-object v1, Lo/nI;->o:[J

    array-length v1, v1

    sput v1, Lo/nI;->n:I

    .line 92
    sget v1, Lo/nI;->n:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v1, v0

    sput v1, Lo/nI;->k:I

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 95
    fill-array-data v0, :array_0

    sput-object v0, Lo/nI;->p:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x36ee80
        0xdbba00
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lo/iu;Lo/iw;Ljava/util/List;Landroid/os/Looper;Lo/nI$Activity;ZLcom/netflix/mediaclient/servicemgr/IClientLogging;Lo/SmartSelectSprite;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/iu;",
            "Lo/iw;",
            "Ljava/util/List<",
            "Lo/ov;",
            ">;",
            "Landroid/os/Looper;",
            "Lo/nI$Activity;",
            "Z",
            "Lcom/netflix/mediaclient/servicemgr/IClientLogging;",
            "Lo/SmartSelectSprite;",
            "Z)V"
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/nI;->l:Ljava/util/Map;

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lo/nI;->t:I

    const/4 v1, 0x1

    .line 131
    iput-boolean v1, p0, Lo/nI;->w:Z

    .line 132
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iput-wide v1, p0, Lo/nI;->y:J

    .line 242
    new-instance v1, Lo/nI$1;

    invoke-direct {v1, p0}, Lo/nI$1;-><init>(Lo/nI;)V

    iput-object v1, p0, Lo/nI;->A:Ljava/lang/Runnable;

    .line 249
    new-instance v1, Lo/nI$4;

    invoke-direct {v1, p0}, Lo/nI$4;-><init>(Lo/nI;)V

    iput-object v1, p0, Lo/nI;->D:Ljava/lang/Runnable;

    .line 261
    new-instance v1, Lo/nI$5;

    invoke-direct {v1, p0}, Lo/nI$5;-><init>(Lo/nI;)V

    iput-object v1, p0, Lo/nI;->E:Ljava/lang/Runnable;

    .line 312
    iput-object p1, p0, Lo/nI;->g:Landroid/content/Context;

    .line 313
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lo/CarrierIdentifier;->h()Lo/iy;

    move-result-object p1

    iput-object p1, p0, Lo/nI;->d:Lo/iy;

    .line 314
    iput-object p2, p0, Lo/nI;->b:Lo/iu;

    .line 315
    iput-object p3, p0, Lo/nI;->a:Lo/iw;

    .line 316
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/nI;->c:Landroid/os/Handler;

    .line 317
    iput-object p6, p0, Lo/nI;->j:Lo/nI$Activity;

    .line 318
    iput-object p4, p0, Lo/nI;->q:Ljava/util/List;

    .line 319
    iput-object p8, p0, Lo/nI;->e:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 320
    invoke-virtual {p0}, Lo/nI;->l()Z

    move-result p1

    invoke-static {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->c(Z)Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object p1

    iput-object p1, p0, Lo/nI;->f:Lcom/netflix/mediaclient/service/job/NetflixJob;

    .line 321
    sget-object p1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->c:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    new-instance p2, Lo/nI$ActionBar;

    invoke-direct {p2, p0}, Lo/nI$ActionBar;-><init>(Lo/nI;)V

    invoke-interface {p9, p1, p2}, Lo/SmartSelectSprite;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lo/iB;)V

    if-eqz p10, :cond_0

    .line 328
    invoke-direct {p0}, Lo/nI;->x()V

    goto :goto_0

    .line 330
    :cond_0
    invoke-direct {p0}, Lo/nI;->q()V

    .line 332
    :goto_0
    iput-boolean v0, p0, Lo/nI;->h:Z

    .line 333
    iput-boolean p7, p0, Lo/nI;->m:Z

    return-void
.end method

.method private A()V
    .locals 3

    .line 717
    iget-object v0, p0, Lo/nI;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    .line 718
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private B()V
    .locals 1

    const/4 v0, 0x0

    .line 712
    iput v0, p0, Lo/nI;->t:I

    .line 713
    invoke-direct {p0}, Lo/nI;->A()V

    return-void
.end method

.method private C()V
    .locals 2

    const-string v0, "nf_downloadController"

    const-string v1, "resetDLWindow"

    .line 662
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 663
    iput v0, p0, Lo/nI;->s:I

    .line 664
    invoke-direct {p0}, Lo/nI;->z()V

    return-void
.end method

.method private D()V
    .locals 6

    .line 674
    invoke-direct {p0}, Lo/nI;->B()V

    const/4 v0, 0x0

    .line 675
    iput v0, p0, Lo/nI;->s:I

    .line 676
    iget-object v1, p0, Lo/nI;->g:Landroid/content/Context;

    const-string v2, "download_back_off_window_index"

    invoke-static {v1, v2, v0}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lo/nI;->r:I

    .line 679
    iget v1, p0, Lo/nI;->r:I

    sget-object v3, Lo/nI;->p:[J

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v1, v4, :cond_0

    .line 680
    aget-wide v0, v3, v1

    .line 681
    invoke-direct {p0, v0, v1}, Lo/nI;->c(J)J

    move-result-wide v0

    .line 680
    invoke-direct {p0, v0, v1}, Lo/nI;->b(J)V

    .line 683
    iget v0, p0, Lo/nI;->r:I

    add-int/2addr v0, v5

    iput v0, p0, Lo/nI;->r:I

    .line 685
    iget-object v0, p0, Lo/nI;->g:Landroid/content/Context;

    iget v1, p0, Lo/nI;->r:I

    invoke-static {v0, v2, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    .line 688
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "nf_downloadController"

    const-string v1, "scheduleNextDLWindow exhausted all DL windows mIndexOfDlWindowBackOffTime=%d"

    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method static synthetic a(Lo/nI;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/nI;->g:Landroid/content/Context;

    return-object p0
.end method

.method private b(Ljava/lang/String;)I
    .locals 2

    .line 697
    invoke-direct {p0, p1}, Lo/nI;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 698
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 699
    iget-object v1, p0, Lo/nI;->l:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private b(J)V
    .locals 3

    .line 579
    iget-object v0, p0, Lo/nI;->d:Lo/iy;

    iget-object v1, p0, Lo/nI;->f:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->h()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/iy;->c(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lo/nI;->d:Lo/iy;

    iget-object v1, p0, Lo/nI;->f:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->h()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/iy;->a(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 582
    :cond_0
    iget-object v0, p0, Lo/nI;->f:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/job/NetflixJob;->e(J)V

    .line 583
    iget-object v0, p0, Lo/nI;->d:Lo/iy;

    iget-object v1, p0, Lo/nI;->f:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-interface {v0, v1}, Lo/iy;->b(Lcom/netflix/mediaclient/service/job/NetflixJob;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 584
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "nf_downloadController"

    const-string p2, "DownloadResumeJob scheduled minimumDelay=%d"

    invoke-static {p1, p2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method static synthetic b(Lo/nI;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lo/nI;->z()V

    return-void
.end method

.method private c(J)J
    .locals 4

    .line 649
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/16 v2, 0x64

    .line 650
    div-long/2addr v0, v2

    add-long/2addr p1, v0

    return-wide p1
.end method

.method static synthetic c(Lo/nI;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lo/nI;->m()V

    return-void
.end method

.method private d(J)V
    .locals 3

    .line 655
    iget-object v0, p0, Lo/nI;->c:Landroid/os/Handler;

    iget-object v1, p0, Lo/nI;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 656
    invoke-direct {p0, p1, p2}, Lo/nI;->c(J)J

    move-result-wide p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 657
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_downloadController"

    const-string v2, "scheduleBackOffTimer for seconds=%d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 658
    iget-object v0, p0, Lo/nI;->c:Landroid/os/Handler;

    iget-object v1, p0, Lo/nI;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic d(Lo/nI;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lo/nI;->o()V

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 704
    iget-object v0, p0, Lo/nI;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 706
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static synthetic e(Lo/nI;)Lo/nI$Activity;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/nI;->j:Lo/nI$Activity;

    return-object p0
.end method

.method static synthetic f(Lo/nI;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lo/nI;->t()V

    return-void
.end method

.method static synthetic i(Lo/nI;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Lo/nI;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic j(Lo/nI;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lo/nI;->p()V

    return-void
.end method

.method private m()V
    .locals 1

    .line 188
    iget-boolean v0, p0, Lo/nI;->B:Z

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lo/nI;->j:Lo/nI$Activity;

    invoke-interface {v0}, Lo/nI$Activity;->c()V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 1

    .line 153
    iget-boolean v0, p0, Lo/nI;->B:Z

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lo/eY;->d:Lo/eY$Application;

    invoke-virtual {v0}, Lo/eY$Application;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    sget-object v0, Lo/eY;->d:Lo/eY$Application;

    invoke-virtual {v0}, Lo/eY$Application;->b()I

    move-result v0

    iput v0, p0, Lo/nI;->z:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 158
    iput v0, p0, Lo/nI;->z:I

    .line 160
    :cond_1
    :goto_0
    iget v0, p0, Lo/nI;->z:I

    invoke-static {v0}, Lo/NotificationChannel;->c(I)V

    return-void
.end method

.method private o()V
    .locals 1

    .line 194
    iget-object v0, p0, Lo/nI;->j:Lo/nI$Activity;

    invoke-interface {v0}, Lo/nI$Activity;->f()V

    return-void
.end method

.method private p()V
    .locals 3

    .line 281
    invoke-direct {p0}, Lo/nI;->w()V

    .line 283
    iget-object v0, p0, Lo/nI;->i:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    const-string v1, "nf_downloadController"

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lo/nI;->f:Lcom/netflix/mediaclient/service/job/NetflixJob;

    iget-object v2, p0, Lo/nI;->g:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/job/NetflixJob;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    invoke-direct {p0}, Lo/nI;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lo/nI;->f:Lcom/netflix/mediaclient/service/job/NetflixJob;

    iget-object v2, p0, Lo/nI;->g:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/job/NetflixJob;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    iget-object v0, p0, Lo/nI;->j:Lo/nI$Activity;

    invoke-interface {v0}, Lo/nI$Activity;->b()V

    const-string v0, "handleNetworkChanged, can\'t execute the job, stop downloads."

    .line 291
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "handleNetworkChanged, this shouldn\'t happen."

    .line 293
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "handleNetworkChanged, retry the download."

    .line 286
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lo/nI;->j:Lo/nI$Activity;

    invoke-interface {v0}, Lo/nI$Activity;->d()V

    goto :goto_1

    .line 297
    :cond_3
    iget-object v0, p0, Lo/nI;->j:Lo/nI$Activity;

    invoke-interface {v0}, Lo/nI$Activity;->e()V

    const-string v0, "mNetworkChangeRunnable, no network."

    .line 298
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private q()V
    .locals 2

    .line 567
    iget-object v0, p0, Lo/nI;->b:Lo/iu;

    iget-object v1, p0, Lo/nI;->a:Lo/iw;

    invoke-interface {v0, v1}, Lo/iu;->b(Lo/iw;)V

    return-void
.end method

.method private r()Z
    .locals 2

    .line 368
    iget-object v0, p0, Lo/nI;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ov;

    .line 369
    invoke-interface {v1}, Lo/ov;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private s()V
    .locals 2

    .line 560
    iget-object v0, p0, Lo/nI;->d:Lo/iy;

    iget-object v1, p0, Lo/nI;->f:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->h()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/iy;->c(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lo/nI;->d:Lo/iy;

    iget-object v1, p0, Lo/nI;->f:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->h()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/iy;->a(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    const-string v0, "nf_downloadController"

    const-string v1, "cancelDownloadResumeJob cancelled"

    .line 562
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private t()V
    .locals 4

    .line 269
    iget-boolean v0, p0, Lo/nI;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lo/nI;->w:Z

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkChangeRunnable delaying the first network change event by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lo/nI;->y:J

    .line 272
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_downloadController"

    .line 271
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lo/nI;->c:Landroid/os/Handler;

    iget-object v1, p0, Lo/nI;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    iget-object v0, p0, Lo/nI;->c:Landroid/os/Handler;

    iget-object v1, p0, Lo/nI;->D:Ljava/lang/Runnable;

    iget-wide v2, p0, Lo/nI;->y:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 277
    :cond_0
    invoke-direct {p0}, Lo/nI;->p()V

    return-void
.end method

.method private u()V
    .locals 0

    .line 613
    invoke-direct {p0}, Lo/nI;->p()V

    return-void
.end method

.method private v()V
    .locals 4

    const/4 v0, 0x0

    .line 617
    iput v0, p0, Lo/nI;->v:I

    .line 618
    iput v0, p0, Lo/nI;->u:I

    .line 619
    iput v0, p0, Lo/nI;->x:I

    .line 620
    iget-object v0, p0, Lo/nI;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ov;

    .line 621
    invoke-interface {v1}, Lo/ov;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v2, v3, :cond_1

    .line 622
    iget v1, p0, Lo/nI;->v:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo/nI;->v:I

    goto :goto_0

    .line 623
    :cond_1
    invoke-interface {v1}, Lo/ov;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v1, v2, :cond_0

    .line 624
    iget v1, p0, Lo/nI;->u:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo/nI;->u:I

    goto :goto_0

    .line 627
    :cond_2
    iget-object v0, p0, Lo/nI;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lo/nI;->v:I

    sub-int/2addr v0, v1

    iput v0, p0, Lo/nI;->x:I

    return-void
.end method

.method private w()V
    .locals 1

    .line 641
    iget-object v0, p0, Lo/nI;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lo/nI;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->n(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v0

    iput-object v0, p0, Lo/nI;->i:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 644
    iput-object v0, p0, Lo/nI;->i:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    :goto_0
    return-void
.end method

.method private x()V
    .locals 2

    .line 571
    iget-object v0, p0, Lo/nI;->b:Lo/iu;

    iget-object v1, p0, Lo/nI;->a:Lo/iw;

    invoke-interface {v0, v1}, Lo/iu;->a(Lo/iw;)V

    return-void
.end method

.method private y()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 575
    invoke-direct {p0, v0, v1}, Lo/nI;->b(J)V

    return-void
.end method

.method private z()V
    .locals 3

    const-string v0, "nf_downloadController"

    const-string v1, "resetDownloadResumeJobBackOffTime"

    .line 668
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 669
    iput v0, p0, Lo/nI;->r:I

    .line 670
    iget-object v1, p0, Lo/nI;->g:Landroid/content/Context;

    const-string v2, "download_back_off_window_index"

    invoke-static {v1, v2, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 203
    iget-object v0, p0, Lo/nI;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 204
    invoke-direct {p0}, Lo/nI;->s()V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 6

    .line 512
    invoke-direct {p0}, Lo/nI;->w()V

    .line 513
    iget-object v0, p0, Lo/nI;->i:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    const-string v1, "nf_downloadController"

    if-eqz v0, :cond_4

    .line 514
    iget v0, p0, Lo/nI;->s:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lo/nI;->s:I

    new-array v0, v2, [Ljava/lang/Object;

    .line 515
    iget v3, p0, Lo/nI;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v3, "onNetworkError mNumberOfNetworkErrorsInCurrentDLWindow=%d"

    invoke-static {v1, v3, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 517
    invoke-direct {p0}, Lo/nI;->v()V

    .line 519
    iget v0, p0, Lo/nI;->x:I

    sget v3, Lo/nI;->n:I

    add-int/2addr v3, v2

    mul-int v0, v0, v3

    sub-int/2addr v0, v2

    .line 520
    sget v3, Lo/nI;->k:I

    if-le v0, v3, :cond_0

    move v0, v3

    :cond_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    const/4 v0, 0x2

    :cond_1
    new-array v3, v2, [Ljava/lang/Object;

    .line 526
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "maxErrorsInDlWindow=%d"

    invoke-static {v1, v4, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 527
    iget v1, p0, Lo/nI;->s:I

    if-gt v1, v0, :cond_3

    .line 528
    invoke-direct {p0, p1}, Lo/nI;->b(Ljava/lang/String;)I

    move-result v0

    .line 529
    sget v1, Lo/nI;->n:I

    if-le v0, v1, :cond_2

    .line 531
    iget v0, p0, Lo/nI;->t:I

    add-int/2addr v0, v2

    iput v0, p0, Lo/nI;->t:I

    .line 532
    iget-object v0, p0, Lo/nI;->l:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 536
    :cond_2
    sget-object p1, Lo/nI;->o:[J

    sub-int/2addr v0, v2

    array-length v1, p1

    rem-int/2addr v0, v1

    aget-wide v0, p1, v0

    .line 539
    invoke-direct {p0, v0, v1}, Lo/nI;->d(J)V

    goto :goto_0

    .line 541
    :cond_3
    invoke-direct {p0}, Lo/nI;->D()V

    goto :goto_0

    .line 544
    :cond_4
    iget-object p1, p0, Lo/nI;->d:Lo/iy;

    iget-object v0, p0, Lo/nI;->f:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob;->h()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/iy;->c(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "onNetworkError networkConnected=no, download resume job already scheduled."

    .line 545
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string p1, "onNetworkError networkConnected=no, scheduling download resume job"

    .line 547
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-direct {p0}, Lo/nI;->y()V

    :goto_0
    return-void
.end method

.method a(Z)V
    .locals 4

    .line 593
    invoke-virtual {p0}, Lo/nI;->l()Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 594
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "nf_downloadController"

    const-string v3, "setRequiresUnmeteredNetwork oldValue=%b newValue=%b"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eq v0, p1, :cond_1

    .line 596
    iget-object v0, p0, Lo/nI;->g:Landroid/content/Context;

    const-string v1, "download_requires_unmetered_network"

    invoke-static {v0, v1, p1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 600
    invoke-static {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->c(Z)Lcom/netflix/mediaclient/service/job/NetflixJob;

    move-result-object p1

    iput-object p1, p0, Lo/nI;->f:Lcom/netflix/mediaclient/service/job/NetflixJob;

    .line 603
    iget-object p1, p0, Lo/nI;->d:Lo/iy;

    iget-object v0, p0, Lo/nI;->f:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob;->h()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/iy;->c(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 604
    iget-object p1, p0, Lo/nI;->d:Lo/iy;

    iget-object v0, p0, Lo/nI;->f:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob;->h()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/iy;->a(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 605
    invoke-direct {p0}, Lo/nI;->y()V

    .line 607
    :cond_0
    invoke-direct {p0}, Lo/nI;->u()V

    :cond_1
    return-void
.end method

.method a(Lo/ov;)Z
    .locals 5

    .line 342
    invoke-interface {p1}, Lo/ov;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const-string v2, "nf_downloadController"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canThisPlayableBeResumedByUser no, state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/ov;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 346
    :cond_0
    invoke-direct {p0}, Lo/nI;->v()V

    .line 348
    iget v0, p0, Lo/nI;->u:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    .line 349
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    const-string v0, "canThisPlayableBeResumedByUser no, mInProgressCount=%d"

    invoke-static {v2, v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v3

    .line 354
    :cond_1
    iget-object v0, p0, Lo/nI;->f:Lcom/netflix/mediaclient/service/job/NetflixJob;

    iget-object v4, p0, Lo/nI;->g:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/service/job/NetflixJob;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 355
    invoke-interface {p1}, Lo/ov;->F()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "canThisPlayableBeResumedByUser no, downloadResumeJob says no."

    .line 356
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lo/nI;->f:Lcom/netflix/mediaclient/service/job/NetflixJob;

    iget-object v1, p0, Lo/nI;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 358
    invoke-interface {p1}, Lo/ov;->e()Lo/oC;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-interface {p1, v0}, Lo/oC;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 360
    :cond_2
    invoke-direct {p0}, Lo/nI;->y()V

    return v3

    :cond_3
    return v1
.end method

.method b()V
    .locals 0

    .line 198
    invoke-direct {p0}, Lo/nI;->s()V

    .line 199
    invoke-direct {p0}, Lo/nI;->q()V

    return-void
.end method

.method c()V
    .locals 4

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lo/nI;->B:Z

    .line 177
    invoke-direct {p0}, Lo/nI;->n()V

    .line 178
    iget-object v0, p0, Lo/nI;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lo/nI;->c:Landroid/os/Handler;

    new-instance v1, Lo/nI$2;

    invoke-direct {v1, p0}, Lo/nI$2;-><init>(Lo/nI;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 1

    .line 488
    iget-object v0, p0, Lo/nI;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    invoke-direct {p0}, Lo/nI;->B()V

    .line 490
    invoke-direct {p0}, Lo/nI;->C()V

    .line 491
    invoke-direct {p0}, Lo/nI;->s()V

    .line 492
    invoke-direct {p0}, Lo/nI;->x()V

    .line 493
    iget-object p1, p0, Lo/nI;->c:Landroid/os/Handler;

    iget-object v0, p0, Lo/nI;->A:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method c(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method c(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lo/nI;->m:Z

    .line 146
    iget-boolean p1, p0, Lo/nI;->m:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lo/nI;->B:Z

    .line 148
    invoke-direct {p0}, Lo/nI;->n()V

    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lo/nI;->B:Z

    const/16 v0, 0x1388

    .line 165
    invoke-static {v0}, Lo/NotificationChannel;->c(I)V

    .line 166
    iget-object v0, p0, Lo/nI;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lo/nI;->c:Landroid/os/Handler;

    new-instance v1, Lo/nI$3;

    invoke-direct {v1, p0}, Lo/nI$3;-><init>(Lo/nI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 1

    .line 497
    iget-object v0, p0, Lo/nI;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object p1, p0, Lo/nI;->q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 500
    invoke-direct {p0}, Lo/nI;->s()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lo/nI;->B:Z

    return v0
.end method

.method f()V
    .locals 2

    .line 377
    iget-boolean v0, p0, Lo/nI;->h:Z

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lo/nI;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 379
    iput-boolean v0, p0, Lo/nI;->h:Z

    :cond_0
    return-void
.end method

.method g()Lo/ov;
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 398
    iget v2, p0, Lo/nI;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_downloadController"

    const-string v4, "getNextPlayableForDownload mIndexOfNextPlayable=%d"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 402
    iget-boolean v1, p0, Lo/nI;->m:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const-string v0, "getNextPlayableForDownload mDownloadsAreStoppedByUser=true"

    .line 403
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 406
    :cond_0
    iget-boolean v1, p0, Lo/nI;->B:Z

    if-eqz v1, :cond_1

    const-string v0, "getNextPlayableForDownload mIsStreaming=true"

    .line 407
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 410
    :cond_1
    iget-object v1, p0, Lo/nI;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    new-array v0, v0, [Ljava/lang/Object;

    .line 411
    iget-object v1, p0, Lo/nI;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "getNextPlayableForDownload all done. mOfflinePlayableList.size=%d"

    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v4

    .line 415
    :cond_2
    invoke-direct {p0}, Lo/nI;->v()V

    .line 416
    iget v1, p0, Lo/nI;->v:I

    iget-object v5, p0, Lo/nI;->q:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v1, v5, :cond_3

    new-array v0, v0, [Ljava/lang/Object;

    .line 417
    iget v1, p0, Lo/nI;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "getNextPlayableForDownload all downloaded, mCompletedCount=%d"

    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v4

    .line 422
    :cond_3
    iget v1, p0, Lo/nI;->u:I

    if-lez v1, :cond_4

    new-array v0, v0, [Ljava/lang/Object;

    .line 423
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "getNextPlayableForDownload already downloading, mInProgressCount=%d"

    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v4

    .line 429
    :cond_4
    iget-object v1, p0, Lo/nI;->f:Lcom/netflix/mediaclient/service/job/NetflixJob;

    iget-object v5, p0, Lo/nI;->g:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/netflix/mediaclient/service/job/NetflixJob;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 430
    invoke-direct {p0}, Lo/nI;->r()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v0, "getNextPlayableForDownload can\'t execute, downloadResumeJob says no."

    .line 431
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-direct {p0}, Lo/nI;->y()V

    return-object v4

    .line 437
    :cond_5
    iget-object v1, p0, Lo/nI;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_b

    .line 438
    iget v5, p0, Lo/nI;->t:I

    iget-object v6, p0, Lo/nI;->q:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_6

    .line 439
    iput v3, p0, Lo/nI;->t:I

    .line 442
    :cond_6
    iget-object v5, p0, Lo/nI;->q:Ljava/util/List;

    iget v6, p0, Lo/nI;->t:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/ov;

    invoke-static {v5}, Lo/ph;->e(Lo/ov;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 443
    iget-object v5, p0, Lo/nI;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->n(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v5

    .line 444
    iget-object v6, p0, Lo/nI;->q:Ljava/util/List;

    iget v7, p0, Lo/nI;->t:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/ov;

    .line 446
    sget-object v7, Lo/he;->a:Lo/he$Application;

    invoke-virtual {v7}, Lo/he$Application;->e()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 448
    invoke-virtual {p0}, Lo/nI;->l()Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->e:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    if-ne v5, v7, :cond_7

    .line 450
    invoke-interface {v6}, Lo/ov;->F()Z

    move-result v7

    if-nez v7, :cond_7

    .line 452
    iget v5, p0, Lo/nI;->t:I

    add-int/2addr v5, v0

    iput v5, p0, Lo/nI;->t:I

    goto :goto_1

    :cond_7
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 458
    invoke-interface {v6}, Lo/ov;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lo/nI;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-interface {v6}, Lo/ov;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const-string v8, "getNextPlayableForDownload found with errorCount=%d playableId=%s"

    .line 457
    invoke-static {v2, v8, v7}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 460
    invoke-interface {v6}, Lo/ov;->D()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 462
    invoke-static {v5}, Lo/ph;->d(Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)Z

    move-result v5

    if-eqz v5, :cond_a

    return-object v6

    .line 469
    :cond_8
    invoke-interface {v6}, Lo/ov;->A()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 471
    invoke-static {v5}, Lo/ph;->b(Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    return-object v6

    .line 482
    :cond_a
    iget v5, p0, Lo/nI;->t:I

    add-int/2addr v5, v0

    iput v5, p0, Lo/nI;->t:I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_b
    return-object v4
.end method

.method public h()V
    .locals 0

    .line 223
    invoke-direct {p0}, Lo/nI;->n()V

    return-void
.end method

.method i()V
    .locals 3

    .line 208
    iget-object v0, p0, Lo/nI;->e:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->e()Lo/zu;

    move-result-object v0

    const-string v1, "onDownloadResumeJobDone"

    invoke-interface {v0, v1}, Lo/zu;->d(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lo/nI;->d:Lo/iy;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->c:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lo/iy;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    return-void
.end method

.method public j()V
    .locals 7

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 215
    iget-wide v2, p0, Lo/nI;->C:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x3e8

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 216
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v3

    const-string v3, "nf_downloadController"

    const-string v6, "handleConnectivityChange delay by=%d"

    invoke-static {v3, v6, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 217
    iput-wide v0, p0, Lo/nI;->C:J

    .line 218
    iget-object v0, p0, Lo/nI;->c:Landroid/os/Handler;

    iget-object v1, p0, Lo/nI;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    iget-object v0, p0, Lo/nI;->c:Landroid/os/Handler;

    iget-object v1, p0, Lo/nI;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method k()V
    .locals 2

    const-string v0, "nf_downloadController"

    const-string v1, "onStorageError removing the back-off timer"

    .line 554
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v0, p0, Lo/nI;->c:Landroid/os/Handler;

    iget-object v1, p0, Lo/nI;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method l()Z
    .locals 3

    .line 636
    iget-object v0, p0, Lo/nI;->g:Landroid/content/Context;

    const-string v1, "download_requires_unmetered_network"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
