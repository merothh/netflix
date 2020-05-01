.class Lo/Kf$1;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Kf;->d(Landroid/content/Context;Lo/Am;IILo/zU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Kf;

.field final synthetic c:Lo/zU;


# direct methods
.method constructor <init>(Lo/Kf;Lo/zU;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lo/Kf$1;->a:Lo/Kf;

    iput-object p2, p0, Lo/Kf$1;->c:Lo/zU;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public p(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/agg;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-super {p0, p1, p2}, Lo/Ai;->p(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 59
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    if-nez v0, :cond_0

    .line 60
    sget-object p2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const/4 v0, 0x0

    const-string v1, "FetchSimsTask"

    invoke-static {p2, v1, v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->d(Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    .line 62
    :cond_0
    iget-object v0, p0, Lo/Kf$1;->c:Lo/zU;

    invoke-interface {v0, p1, p2}, Lo/zU;->c(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
