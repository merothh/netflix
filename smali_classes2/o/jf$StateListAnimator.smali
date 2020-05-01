.class Lo/jf$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/jf$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/jf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field private c:Ljava/lang/String;

.field final synthetic e:Lo/jf;


# direct methods
.method public constructor <init>(Lo/jf;Ljava/lang/String;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lo/jf$StateListAnimator;->e:Lo/jf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p2, p0, Lo/jf$StateListAnimator;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 325
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    const-string v1, "nf_releaseLicense"

    if-nez v0, :cond_1

    .line 326
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/NqErrorStatus;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->bM:Lcom/netflix/mediaclient/StatusCode;

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "releaseLicense events are NOT successfully sent to backend, do NOT remove them"

    .line 332
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object p1, p0, Lo/jf$StateListAnimator;->e:Lo/jf;

    invoke-static {p1}, Lo/jf;->h(Lo/jf;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lo/jf$StateListAnimator;->c:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    const-string v2, "releaseLicense events are successfully sent to backend %s"

    .line 328
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 329
    iget-object v0, p0, Lo/jf$StateListAnimator;->e:Lo/jf;

    iget-object v1, p0, Lo/jf$StateListAnimator;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/jf;->b(Lo/jf;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lo/jf$StateListAnimator;->e:Lo/jf;

    invoke-static {v0, p1, p2}, Lo/jf;->d(Lo/jf;Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_1
    return-void
.end method
