.class Lo/cG$5$1;
.super Lo/cW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/cG$5;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/cG$5;


# direct methods
.method constructor <init>(Lo/cG$5;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lo/cG$5$1;->c:Lo/cG$5;

    invoke-direct {p0}, Lo/cW;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    .line 469
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_configurationagent"

    const-string v3, "onConfigDataFetched statusCode=%d"

    invoke-static {v1, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 470
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object p1, p0, Lo/cG$5$1;->c:Lo/cG$5;

    iget-object p1, p1, Lo/cG$5;->b:Lo/cG;

    iget-object v0, p0, Lo/cG$5$1;->c:Lo/cG$5;

    iget-boolean v0, v0, Lo/cG$5;->e:Z

    invoke-static {p1, p2, v0}, Lo/cG;->d(Lo/cG;Lcom/netflix/mediaclient/android/app/Status;Z)V

    goto :goto_0

    :cond_0
    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "error in fetching esnDependentConfigs status: %s"

    .line 473
    invoke-static {v1, p2, p1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 474
    iget-object p1, p0, Lo/cG$5$1;->c:Lo/cG$5;

    iget-object p1, p1, Lo/cG$5;->b:Lo/cG;

    sget-object p2, Lo/LegacyErrorStrings;->t:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iget-object v0, p0, Lo/cG$5$1;->c:Lo/cG$5;

    iget-boolean v0, v0, Lo/cG$5;->e:Z

    invoke-static {p1, p2, v0}, Lo/cG;->d(Lo/cG;Lcom/netflix/mediaclient/android/app/Status;Z)V

    :goto_0
    return-void
.end method
