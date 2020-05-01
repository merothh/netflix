.class Lo/iT$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/iT$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/iT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field final synthetic e:Lo/iT;


# direct methods
.method public constructor <init>(Lo/iT;Ljava/lang/String;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lo/iT$TaskDescription;->e:Lo/iT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-object p2, p0, Lo/iT$TaskDescription;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 503
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    const-string v1, "nf_logblob"

    if-nez v0, :cond_1

    .line 504
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->aK:Lcom/netflix/mediaclient/StatusCode;

    if-eq v0, v2, :cond_1

    .line 505
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->bM:Lcom/netflix/mediaclient/StatusCode;

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Logblobs are NOT successfully sent to backend, do NOT remove them"

    .line 510
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object p1, p0, Lo/iT$TaskDescription;->e:Lo/iT;

    invoke-static {p1}, Lo/iT;->d(Lo/iT;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lo/iT$TaskDescription;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string p1, "Logblobs are successfully sent to backend %s"

    .line 507
    invoke-static {v1, p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 508
    iget-object p1, p0, Lo/iT$TaskDescription;->e:Lo/iT;

    iget-object v0, p0, Lo/iT$TaskDescription;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/iT;->d(Lo/iT;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
