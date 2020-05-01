.class Lo/hY$9;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hY;->b(IILjava/lang/String;ZLo/ci;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/hY;


# direct methods
.method constructor <init>(Lo/hY;)V
    .locals 0

    .line 1455
    iput-object p1, p0, Lo/hY$9;->c:Lo/hY;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 1458
    iget-object v0, p0, Lo/hY$9;->c:Lo/hY;

    invoke-static {v0}, Lo/hY;->n(Lo/hY;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1459
    const-class v0, Lo/kg;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/kg;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->f:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    .line 1460
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/StatusCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-class v2, Lo/kg;

    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/kg;

    invoke-interface {v2}, Lo/kg;->d()Ljava/util/Map;

    move-result-object v2

    .line 1459
    :goto_0
    invoke-interface {v0, v1, v2}, Lo/kg;->d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 1461
    iget-object v0, p0, Lo/hY$9;->c:Lo/hY;

    invoke-static {v0}, Lo/hY;->m(Lo/hY;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ci;

    if-eqz v1, :cond_1

    .line 1463
    invoke-interface {v1, p1, p2}, Lo/ci;->c(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_1

    .line 1466
    :cond_2
    iget-object p1, p0, Lo/hY$9;->c:Lo/hY;

    invoke-static {p1}, Lo/hY;->m(Lo/hY;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
