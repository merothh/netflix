.class Lo/hY$13;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hY;->d(IIIIIIZZZLo/ci;IIZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/hY;

.field final synthetic d:Lo/ci;


# direct methods
.method constructor <init>(Lo/hY;Lo/ci;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lo/hY$13;->b:Lo/hY;

    iput-object p2, p0, Lo/hY$13;->d:Lo/ci;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 491
    iget-object v0, p0, Lo/hY$13;->d:Lo/ci;

    if-eqz v0, :cond_0

    .line 492
    invoke-interface {v0, p1, p2}, Lo/ci;->c(Lo/AH;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    const/4 v0, 0x0

    .line 496
    instance-of v1, p2, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    const-string v2, "FalkorAgent"

    if-eqz v1, :cond_1

    .line 497
    move-object v0, p2

    check-cast v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->m()Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v1, "status is not FalkorAgentStatus"

    .line 500
    invoke-static {v2, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v0, :cond_4

    const-string v0, "nf_preapp notifying of  prefetch done"

    .line 504
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lo/hY$13;->b:Lo/hY;

    invoke-virtual {v0}, Lo/hY;->getPreAppAgent()Lo/xR;

    move-result-object v0

    iget-object v1, p0, Lo/hY$13;->b:Lo/hY;

    invoke-virtual {v1}, Lo/hY;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/xR;->d(Landroid/content/Context;)V

    .line 506
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/StatusCode;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "nf_preapp prefetch failed"

    .line 507
    invoke-static {v2, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 510
    iget-object p2, p0, Lo/hY$13;->b:Lo/hY;

    invoke-virtual {p2}, Lo/hY;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "prefs_prefetch_lolomo_fetch_time_ms"

    invoke-static {p2, v2, v0, v1}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;J)V

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_3

    .line 513
    invoke-interface {p1}, Lo/AH;->getExpiryTimeStamp()J

    move-result-wide v0

    .line 515
    :cond_3
    iget-object p1, p0, Lo/hY$13;->b:Lo/hY;

    invoke-virtual {p1}, Lo/hY;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "prefs_cache_installed_lolomo_expiry_time_stamp"

    invoke-static {p1, p2, v0, v1}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_4
    return-void
.end method
