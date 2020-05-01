.class public abstract Lcom/netflix/cl/model/event/session/action/Action;
.super Lcom/netflix/cl/model/event/session/Session;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/netflix/cl/model/event/session/Session;-><init>()V

    const-string v0, "Action"

    .line 30
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/event/session/action/Action;->addContextType(Ljava/lang/String;)V

    return-void
.end method

.method public static createActionFailedEvent(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Lcom/netflix/cl/model/event/session/action/ActionFailed;
    .locals 3

    .line 42
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0}, Lcom/netflix/cl/Logger;->isDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 46
    :cond_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p0}, Lcom/netflix/cl/Logger;->getSession(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/Session;

    move-result-object v0

    .line 47
    instance-of v2, v0, Lcom/netflix/cl/model/event/session/action/Action;

    if-eqz v2, :cond_1

    .line 48
    new-instance p0, Lcom/netflix/cl/model/event/session/action/ActionFailed;

    invoke-direct {p0, v0, p1}, Lcom/netflix/cl/model/event/session/action/ActionFailed;-><init>(Lcom/netflix/cl/model/event/session/Session;Lcom/netflix/cl/model/Error;)V

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    .line 51
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    const-string v0, "Action::createActionFailedEvent: sessionId %d does not identifies Action! It should NOT happen!"

    invoke-interface {p0, v0, p1}, Lcom/netflix/cl/Platform$LocalLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_2
    invoke-static {}, Lcom/netflix/cl/Platform;->getLocalLogger()Lcom/netflix/cl/Platform$LocalLogger;

    move-result-object p0

    const-string p1, "Action::createActionFailedEvent: sessionId is null! It should NOT happen if CLv2 is used for logging!"

    invoke-interface {p0, p1}, Lcom/netflix/cl/Platform$LocalLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method
