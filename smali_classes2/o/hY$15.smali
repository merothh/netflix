.class Lo/hY$15;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hY;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lo/hY;


# direct methods
.method constructor <init>(Lo/hY;Ljava/lang/String;)V
    .locals 0

    .line 1023
    iput-object p1, p0, Lo/hY$15;->d:Lo/hY;

    iput-object p2, p0, Lo/hY$15;->c:Ljava/lang/String;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 1028
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->ch:Lcom/netflix/mediaclient/StatusCode;

    if-eq p1, p2, :cond_1

    .line 1029
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "fetchEpisodesForSeason - fetchFalkorVideo - video is null"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1034
    :cond_2
    iget-object p2, p0, Lo/hY$15;->c:Ljava/lang/String;

    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {p1}, Lo/agg;->d()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lo/agg;->Q()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 1041
    :cond_3
    iget-object p2, p0, Lo/hY$15;->d:Lo/hY;

    invoke-interface {p1}, Lo/agg;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lo/agg;->ax()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    new-instance v2, Lo/hY$15$3;

    invoke-direct {v2, p0}, Lo/hY$15$3;-><init>(Lo/hY$15;)V

    invoke-virtual {p2, v0, p1, v1, v2}, Lo/hY;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    :cond_4
    :goto_0
    return-void
.end method
