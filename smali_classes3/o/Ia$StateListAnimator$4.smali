.class final Lo/Ia$StateListAnimator$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ia$StateListAnimator;-><init>(Landroid/view/View;Lo/UpdateEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Ia$StateListAnimator;


# direct methods
.method constructor <init>(Lo/Ia$StateListAnimator;)V
    .locals 0

    iput-object p1, p0, Lo/Ia$StateListAnimator$4;->a:Lo/Ia$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
    .locals 5

    .line 496
    iget-object v0, p0, Lo/Ia$StateListAnimator$4;->a:Lo/Ia$StateListAnimator;

    invoke-static {v0}, Lo/Ia$StateListAnimator;->e(Lo/Ia$StateListAnimator;)Lo/ServiceManagerNative;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Playback error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ServiceManagerNative;->b(Ljava/lang/String;)V

    .line 498
    :cond_0
    iget-object v0, p0, Lo/Ia$StateListAnimator$4;->a:Lo/Ia$StateListAnimator;

    invoke-static {v0}, Lo/Ia$StateListAnimator;->d(Lo/Ia$StateListAnimator;)Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->q()V

    .line 499
    iget-object v0, p0, Lo/Ia$StateListAnimator$4;->a:Lo/Ia$StateListAnimator;

    invoke-virtual {v0}, Lo/Ia$StateListAnimator;->g()Lo/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lo/Ia$StateListAnimator$4;->a:Lo/Ia$StateListAnimator;

    invoke-static {v0}, Lo/Ia$StateListAnimator;->f(Lo/Ia$StateListAnimator;)Lcom/netflix/cl/model/event/session/action/StartPlay;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 503
    new-instance v2, Lcom/netflix/cl/model/event/session/action/ActionFailed;

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    new-instance v3, Lcom/netflix/cl/model/Error;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lcom/netflix/cl/model/event/session/action/ActionFailed;-><init>(Lcom/netflix/cl/model/event/session/Session;Lcom/netflix/cl/model/Error;)V

    .line 504
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast v2, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 505
    iget-object v0, p0, Lo/Ia$StateListAnimator$4;->a:Lo/Ia$StateListAnimator;

    move-object v2, v1

    check-cast v2, Lcom/netflix/cl/model/event/session/action/StartPlay;

    invoke-static {v0, v2}, Lo/Ia$StateListAnimator;->d(Lo/Ia$StateListAnimator;Lcom/netflix/cl/model/event/session/action/StartPlay;)V

    .line 508
    :cond_1
    iget-object v0, p0, Lo/Ia$StateListAnimator$4;->a:Lo/Ia$StateListAnimator;

    invoke-static {v0}, Lo/Ia$StateListAnimator;->n(Lo/Ia$StateListAnimator;)Lcom/netflix/cl/model/event/session/action/Play;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 510
    new-instance v2, Lcom/netflix/cl/model/event/session/action/ActionFailed;

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    new-instance v3, Lcom/netflix/cl/model/Error;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lcom/netflix/cl/model/event/session/action/ActionFailed;-><init>(Lcom/netflix/cl/model/event/session/Session;Lcom/netflix/cl/model/Error;)V

    .line 511
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast v2, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {p1, v2}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 512
    iget-object p1, p0, Lo/Ia$StateListAnimator$4;->a:Lo/Ia$StateListAnimator;

    check-cast v1, Lcom/netflix/cl/model/event/session/action/Play;

    invoke-static {p1, v1}, Lo/Ia$StateListAnimator;->a(Lo/Ia$StateListAnimator;Lcom/netflix/cl/model/event/session/action/Play;)V

    :cond_2
    return-void
.end method
