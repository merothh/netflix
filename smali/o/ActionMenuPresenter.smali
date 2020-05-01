.class public final Lo/ActionMenuPresenter;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final e:Lo/ActionMenuPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lo/ActionMenuPresenter;

    invoke-direct {v0}, Lo/ActionMenuPresenter;-><init>()V

    sput-object v0, Lo/ActionMenuPresenter;->e:Lo/ActionMenuPresenter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Ljava/lang/Long;[Lcom/netflix/cl/model/ShareInfo;)Lcom/netflix/cl/model/event/session/ShareEnded;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 48
    :cond_0
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v1, p1}, Lcom/netflix/cl/Logger;->getSession(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/Session;

    move-result-object p1

    .line 49
    instance-of v1, p1, Lcom/netflix/cl/model/event/session/action/Share;

    if-eqz v1, :cond_1

    .line 50
    new-instance v0, Lcom/netflix/cl/model/event/session/ShareEnded;

    check-cast p1, Lcom/netflix/cl/model/event/session/action/Share;

    invoke-direct {v0, p1, p2}, Lcom/netflix/cl/model/event/session/ShareEnded;-><init>(Lcom/netflix/cl/model/event/session/action/Share;[Lcom/netflix/cl/model/ShareInfo;)V

    :cond_1
    return-object v0
.end method

.method private final d(Lcom/netflix/cl/Logger;Lcom/netflix/cl/model/TrackingInfo;)Lkotlin/Triple;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/cl/Logger;",
            "Lcom/netflix/cl/model/TrackingInfo;",
            ")",
            "Lkotlin/Triple<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v1, Lcom/netflix/cl/model/AppView;->shareButton:Lcom/netflix/cl/model/AppView;

    invoke-direct {v0, v1, p2}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p2

    .line 37
    new-instance v0, Lcom/netflix/cl/model/event/session/command/ShareCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/ShareCommand;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/netflix/cl/model/event/session/action/Share;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/action/Share;-><init>()V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 39
    new-instance v1, Lkotlin/Triple;

    invoke-direct {v1, p2, v0, p1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final d(Lcom/netflix/cl/Logger;Ljava/lang/String;Ljava/lang/String;Lkotlin/Triple;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/cl/Logger;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/Triple<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-virtual {p4}, Lkotlin/Triple;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/netflix/cl/model/ShareInfo;

    new-instance v2, Lcom/netflix/cl/model/ShareInfo;

    invoke-direct {v2, p2, p3}, Lcom/netflix/cl/model/ShareInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    aput-object v2, v1, p2

    invoke-direct {p0, v0, v1}, Lo/ActionMenuPresenter;->c(Ljava/lang/Long;[Lcom/netflix/cl/model/ShareInfo;)Lcom/netflix/cl/model/event/session/ShareEnded;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 64
    check-cast p2, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 67
    :cond_0
    invoke-virtual {p4}, Lkotlin/Triple;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 68
    invoke-virtual {p4}, Lkotlin/Triple;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    return-void
.end method

.method private final d(Lcom/netflix/cl/Logger;Lkotlin/Triple;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/cl/Logger;",
            "Lkotlin/Triple<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-virtual {p2}, Lkotlin/Triple;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    new-instance v1, Lcom/netflix/cl/model/Error;

    invoke-direct {v1, p3}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/netflix/cl/model/event/session/action/Action;->createActionFailedEvent(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Lcom/netflix/cl/model/event/session/action/ActionFailed;

    move-result-object p3

    check-cast p3, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {p1, p3}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 73
    invoke-virtual {p2}, Lkotlin/Triple;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p1, p3}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 74
    invoke-virtual {p2}, Lkotlin/Triple;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/cl/Logger;ZLjava/lang/String;Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingInfo"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p5}, Lo/ActionMenuPresenter;->d(Lcom/netflix/cl/Logger;Lcom/netflix/cl/model/TrackingInfo;)Lkotlin/Triple;

    move-result-object p5

    if-eqz p2, :cond_0

    .line 25
    invoke-direct {p0, p1, p3, p4, p5}, Lo/ActionMenuPresenter;->d(Lcom/netflix/cl/Logger;Ljava/lang/String;Ljava/lang/String;Lkotlin/Triple;)V

    goto :goto_0

    .line 30
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to launch share app: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-direct {p0, p1, p5, p2}, Lo/ActionMenuPresenter;->d(Lcom/netflix/cl/Logger;Lkotlin/Triple;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
