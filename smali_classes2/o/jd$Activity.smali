.class Lo/jd$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/jd$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/jd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field private c:Ljava/lang/String;

.field final synthetic d:Lo/jd;


# direct methods
.method public constructor <init>(Lo/jd;Ljava/lang/String;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lo/jd$Activity;->d:Lo/jd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput-object p2, p0, Lo/jd$Activity;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .line 453
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "nf_pds_logs"

    if-nez v0, :cond_1

    .line 454
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v5, Lcom/netflix/mediaclient/StatusCode;->aK:Lcom/netflix/mediaclient/StatusCode;

    if-eq v0, v5, :cond_1

    .line 455
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v5, Lcom/netflix/mediaclient/StatusCode;->bM:Lcom/netflix/mediaclient/StatusCode;

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 460
    iget-object p1, p0, Lo/jd$Activity;->c:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "pds events are NOT successfully sent to backend, do NOT remove them status: %s,  %s"

    invoke-static {v4, p1, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 461
    iget-object p1, p0, Lo/jd$Activity;->d:Lo/jd;

    invoke-static {p1}, Lo/jd;->j(Lo/jd;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lo/jd$Activity;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 457
    iget-object p1, p0, Lo/jd$Activity;->c:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "Pds events are successfully sent to backend status: %s, %s"

    invoke-static {v4, p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 458
    iget-object p1, p0, Lo/jd$Activity;->d:Lo/jd;

    iget-object v0, p0, Lo/jd$Activity;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/jd;->e(Lo/jd;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
