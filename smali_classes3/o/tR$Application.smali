.class Lo/tR$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field private final a:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/lang/String;

.field final synthetic e:Lo/tR;


# direct methods
.method public constructor <init>(Lo/tR;Ljava/lang/String;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lo/tR$Application;->e:Lo/tR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p2, p0, Lo/tR$Application;->d:Ljava/lang/String;

    .line 293
    iput-object p3, p0, Lo/tR$Application;->a:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 294
    iput-object p4, p0, Lo/tR$Application;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 299
    iget-object v1, p0, Lo/tR$Application;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_cache"

    const-string v3, "timeout - remaining = %s"

    invoke-static {v1, v3, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 300
    iget-object v0, p0, Lo/tR$Application;->e:Lo/tR;

    invoke-static {v0}, Lo/tR;->c(Lo/tR;)Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/tR$Application;->e:Lo/tR;

    invoke-static {v0}, Lo/tR;->c(Lo/tR;)Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/tR$Application;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 301
    iget-object v0, p0, Lo/tR$Application;->e:Lo/tR;

    invoke-static {v0}, Lo/tR;->c(Lo/tR;)Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v0

    new-instance v1, Lo/tR$TaskDescription;

    iget-object v3, p0, Lo/tR$Application;->d:Ljava/lang/String;

    invoke-direct {v1, v3}, Lo/tR$TaskDescription;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/tR$Application;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v1, v3}, Lo/tR$TaskDescription;->e(I)Lo/tR$TaskDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lo/tR$Application;->e:Lo/tR;

    iget-object v1, p0, Lo/tR$Application;->a:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-static {v0, v1, v2}, Lo/tR;->d(Lo/tR;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V

    .line 304
    iget-object v0, p0, Lo/tR$Application;->e:Lo/tR;

    invoke-static {v0}, Lo/tR;->b(Lo/tR;)V

    return-void
.end method
