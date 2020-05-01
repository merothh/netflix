.class final Lo/Nl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Nl;-><init>(Landroid/view/View;Lo/UpdateEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Nl;


# direct methods
.method constructor <init>(Lo/Nl;)V
    .locals 0

    iput-object p1, p0, Lo/Nl$1;->d:Lo/Nl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
    .locals 5

    .line 293
    iget-object v0, p0, Lo/Nl$1;->d:Lo/Nl;

    invoke-static {v0}, Lo/Nl;->d(Lo/Nl;)Lo/ServiceManagerNative;

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

    .line 295
    :cond_0
    iget-object v0, p0, Lo/Nl$1;->d:Lo/Nl;

    invoke-static {v0}, Lo/Nl;->c(Lo/Nl;)Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->q()V

    .line 296
    iget-object v0, p0, Lo/Nl$1;->d:Lo/Nl;

    invoke-virtual {v0}, Lo/Nl;->b()Lo/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lo/Nl$1;->d:Lo/Nl;

    invoke-static {v0}, Lo/Nl;->h(Lo/Nl;)Lcom/netflix/cl/model/event/session/action/StartPlay;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 299
    sget-object v2, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v2, Lo/MessagePdu;

    .line 300
    new-instance v2, Lcom/netflix/cl/model/event/session/action/ActionFailed;

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    new-instance v3, Lcom/netflix/cl/model/Error;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lcom/netflix/cl/model/event/session/action/ActionFailed;-><init>(Lcom/netflix/cl/model/event/session/Session;Lcom/netflix/cl/model/Error;)V

    .line 301
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast v2, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 302
    iget-object v0, p0, Lo/Nl$1;->d:Lo/Nl;

    move-object v2, v1

    check-cast v2, Lcom/netflix/cl/model/event/session/action/StartPlay;

    invoke-static {v0, v2}, Lo/Nl;->a(Lo/Nl;Lcom/netflix/cl/model/event/session/action/StartPlay;)V

    .line 305
    :cond_1
    iget-object v0, p0, Lo/Nl$1;->d:Lo/Nl;

    invoke-static {v0}, Lo/Nl;->g(Lo/Nl;)Lcom/netflix/cl/model/event/session/action/Play;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 306
    sget-object v2, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast v2, Lo/MessagePdu;

    .line 307
    new-instance v2, Lcom/netflix/cl/model/event/session/action/ActionFailed;

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    new-instance v3, Lcom/netflix/cl/model/Error;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lcom/netflix/cl/model/event/session/action/ActionFailed;-><init>(Lcom/netflix/cl/model/event/session/Session;Lcom/netflix/cl/model/Error;)V

    .line 308
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast v2, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {p1, v2}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 309
    iget-object p1, p0, Lo/Nl$1;->d:Lo/Nl;

    check-cast v1, Lcom/netflix/cl/model/event/session/action/Play;

    invoke-static {p1, v1}, Lo/Nl;->b(Lo/Nl;Lcom/netflix/cl/model/event/session/action/Play;)V

    :cond_2
    return-void
.end method
