.class public final Lo/InputConnectionWrapper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    .line 25
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 26
    new-instance v1, Lcom/netflix/cl/model/event/session/Presentation;

    .line 27
    sget-object v2, Lcom/netflix/cl/model/AppView;->nmLanding:Lcom/netflix/cl/model/AppView;

    .line 28
    new-instance v3, Lo/InputConnectionWrapper$Application;

    invoke-direct {v3, p1}, Lo/InputConnectionWrapper$Application;-><init>(Ljava/lang/String;)V

    check-cast v3, Lcom/netflix/cl/model/TrackingInfo;

    .line 26
    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    .line 25
    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 21
    new-instance v0, Lcom/netflix/cl/model/event/session/command/SignUpCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/SignUpCommand;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .locals 1

    .line 17
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    return-void
.end method

.method public d(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    .line 37
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 38
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 39
    new-instance v0, Lcom/netflix/cl/model/event/session/Presentation;

    .line 40
    sget-object v1, Lcom/netflix/cl/model/AppView;->nmLanding:Lcom/netflix/cl/model/AppView;

    .line 41
    new-instance v2, Lo/InputConnectionWrapper$StateListAnimator;

    invoke-direct {v2, p2}, Lo/InputConnectionWrapper$StateListAnimator;-><init>(Ljava/lang/String;)V

    check-cast v2, Lcom/netflix/cl/model/TrackingInfo;

    .line 39
    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    .line 38
    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
