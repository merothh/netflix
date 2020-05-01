.class Lo/tR$5;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/tR;->b(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic e:Ljava/lang/String;

.field final synthetic j:Lo/tR;


# direct methods
.method constructor <init>(Lo/tR;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Ljava/util/List;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lo/tR$5;->j:Lo/tR;

    iput-object p2, p0, Lo/tR$5;->a:Ljava/util/List;

    iput-object p3, p0, Lo/tR$5;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lo/tR$5;->e:Ljava/lang/String;

    iput-object p5, p0, Lo/tR$5;->c:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    iput-object p6, p0, Lo/tR$5;->b:Ljava/util/List;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 143
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    const-string v1, "nf_cache"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    const-string v4, "fetched %s lomos"

    invoke-static {v1, v4, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    .line 145
    :goto_0
    iget-object v4, p0, Lo/tR$5;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 146
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 147
    iget-object v4, p0, Lo/tR$5;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 151
    invoke-interface {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "fetching details for row %s (max %s videos)"

    invoke-static {v1, v7, v5}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 152
    iget-object v5, p0, Lo/tR$5;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 153
    iget-object v5, p0, Lo/tR$5;->j:Lo/tR;

    invoke-static {v5}, Lo/tR;->e(Lo/tR;)Lo/hY;

    move-result-object v5

    const/4 v7, 0x0

    add-int/lit8 v8, v4, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Lo/tR$5$5;

    invoke-direct {v11, p0, p2, v6}, Lo/tR$5$5;-><init>(Lo/tR$5;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V

    invoke-virtual/range {v5 .. v11}, Lo/hY;->e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/ci;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v3, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "unable to videos for prefetch: %s"

    .line 256
    invoke-static {v1, p2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 258
    :cond_2
    iget-object p1, p0, Lo/tR$5;->j:Lo/tR;

    iget-object p2, p0, Lo/tR$5;->e:Ljava/lang/String;

    iget-object v0, p0, Lo/tR$5;->c:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    iget-object v1, p0, Lo/tR$5;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lo/tR$5;->b:Ljava/util/List;

    invoke-static {p1, p2, v0, v1, v2}, Lo/tR;->e(Lo/tR;Ljava/lang/String;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;)V

    return-void
.end method
