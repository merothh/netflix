.class Lo/TC$18;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TC;->e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

.field final synthetic c:Lo/TC;


# direct methods
.method constructor <init>(Lo/TC;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
    .locals 0

    .line 3254
    iput-object p1, p0, Lo/TC$18;->c:Lo/TC;

    iput-object p2, p0, Lo/TC$18;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3257
    iget-object v0, p0, Lo/TC$18;->c:Lo/TC;

    invoke-virtual {v0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3258
    iget-object v1, p0, Lo/TC$18;->c:Lo/TC;

    invoke-virtual {v1}, Lo/TC;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3261
    :cond_0
    invoke-static {}, Lo/adq;->c()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3262
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setRequestedOrientation(I)V

    .line 3264
    :cond_1
    iget-object v1, p0, Lo/TC$18;->c:Lo/TC;

    invoke-virtual {v1}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v3, p0, Lo/TC$18;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    check-cast v3, Lo/sN;

    invoke-virtual {v3}, Lo/sN;->b()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v3

    invoke-static {v1, v3}, Lo/abV;->b(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)Lo/abV;

    move-result-object v1

    .line 3265
    invoke-virtual {v1, v2}, Lo/abV;->setCancelable(Z)V

    .line 3266
    new-instance v2, Lo/TC$18$1;

    invoke-direct {v2, p0}, Lo/TC$18$1;-><init>(Lo/TC$18;)V

    invoke-virtual {v1, v2}, Lo/abV;->e(Lo/WebChromeClient$Application;)V

    .line 3271
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Lo/PushbackReader;)Z

    :cond_2
    :goto_0
    return-void
.end method
