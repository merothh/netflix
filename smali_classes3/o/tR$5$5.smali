.class Lo/tR$5$5;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/tR$5;->a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic c:Lo/tR$5;

.field final synthetic d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;


# direct methods
.method constructor <init>(Lo/tR$5;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lo/tR$5$5;->c:Lo/tR$5;

    iput-object p2, p0, Lo/tR$5$5;->b:Lcom/netflix/mediaclient/android/app/Status;

    iput-object p3, p0, Lo/tR$5$5;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method

.method private b(Lo/AK;)V
    .locals 10

    const/4 v0, 0x2

    const-string v1, "nf_cache"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 240
    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 245
    invoke-interface {p1}, Lo/AK;->N()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {p1}, Lo/AK;->P()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    iget-object v5, p0, Lo/tR$5$5;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v0, "creating prepare request for %s: mid %s @ bookmark %s (title in %s)"

    .line 244
    invoke-static {v1, v0, v4}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 246
    iget-object v0, p0, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object v0, v0, Lo/tR$5;->b:Ljava/util/List;

    new-instance v1, Lo/Ae;

    .line 247
    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 248
    invoke-interface {p1}, Lo/AK;->P()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->k:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 250
    invoke-interface {p1}, Lo/AK;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Lo/AK;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->playbackGraph()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lo/Ae;-><init>(Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Z)V

    .line 246
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 241
    iget-object p1, p0, Lo/tR$5$5;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "unable to create prepare request for %s (title in %s)"

    invoke-static {v1, p1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method static synthetic b(Lo/tR$5$5;Ljava/lang/String;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lo/tR$5$5;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lo/tR$5$5;Lo/AK;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lo/tR$5$5;->b(Lo/AK;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "nf_cache"

    if-nez p1, :cond_0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 223
    iget-object p1, p0, Lo/tR$5$5;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "unable to create fetch details request for %s (title in %s)"

    invoke-static {v3, p1, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 226
    :cond_0
    iget-object v4, p0, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object v4, v4, Lo/tR$5;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 227
    iget-object v1, p0, Lo/tR$5$5;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "fetching video details for %s (title in %s)"

    invoke-static {v3, v0, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 228
    iget-object v0, p0, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object v0, v0, Lo/tR$5;->j:Lo/tR;

    invoke-static {v0}, Lo/tR;->e(Lo/tR;)Lo/hY;

    move-result-object v0

    new-instance v1, Lo/tR$5$5$5;

    invoke-direct {v1, p0}, Lo/tR$5$5$5;-><init>(Lo/tR$5$5;)V

    invoke-virtual {v0, p1, v1}, Lo/hY;->b(Ljava/lang/String;Lo/ci;)V

    return-void
.end method

.method private p(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/AR;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 199
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 200
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/AR;

    .line 201
    invoke-interface {p2}, Lo/AR;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object v0, v0, Lo/tR$5;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 203
    invoke-interface {p2}, Lo/AR;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lo/tR$5$5;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "nf_cache"

    const-string v2, "fetching show details for %s (title in %s)"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 204
    iget-object v0, p0, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object v0, v0, Lo/tR$5;->j:Lo/tR;

    invoke-static {v0}, Lo/tR;->e(Lo/tR;)Lo/hY;

    move-result-object v0

    invoke-interface {p2}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    new-instance v3, Lo/tR$5$5$2;

    invoke-direct {v3, p0}, Lo/tR$5$5$2;-><init>(Lo/tR$5$5;)V

    invoke-virtual {v0, p2, v1, v2, v3}, Lo/hY;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-interface {p2}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lo/tR$5$5;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object p1, p0, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object p1, p1, Lo/tR$5;->j:Lo/tR;

    iget-object p2, p0, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object p2, p2, Lo/tR$5;->e:Ljava/lang/String;

    iget-object v0, p0, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object v0, v0, Lo/tR$5;->c:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    iget-object v1, p0, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object v1, v1, Lo/tR$5;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object v2, v2, Lo/tR$5;->b:Ljava/util/List;

    invoke-static {p1, p2, v0, v1, v2}, Lo/tR;->e(Lo/tR;Ljava/lang/String;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;)V

    return-void
.end method

.method private t(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/AK;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 190
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 191
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/AK;

    .line 192
    invoke-direct {p0, p2}, Lo/tR$5$5;->b(Lo/AK;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object p1, p1, Lo/tR$5;->j:Lo/tR;

    iget-object p2, p0, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object p2, p2, Lo/tR$5;->e:Ljava/lang/String;

    iget-object v0, p0, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object v0, v0, Lo/tR$5;->c:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    iget-object v1, p0, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object v1, v1, Lo/tR$5;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lo/tR$5$5;->c:Lo/tR$5;

    iget-object v2, v2, Lo/tR$5;->b:Ljava/util/List;

    invoke-static {p1, p2, v0, v1, v2}, Lo/tR;->e(Lo/tR;Ljava/lang/String;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AM;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Lo/tR$5$5;->p(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public c(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Az;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2}, Lo/tR$5$5;->t(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public d(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ax;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1, p2}, Lo/tR$5$5;->t(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public e(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AB;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1, p2}, Lo/tR$5$5;->t(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public g(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AT;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1, p2}, Lo/tR$5$5;->t(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Lo/tR$5$5;->p(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public m(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Aw;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 181
    iget-object p2, p0, Lo/tR$5$5;->b:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0, p1, p2}, Lo/tR$5$5;->t(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
