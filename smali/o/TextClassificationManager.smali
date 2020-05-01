.class public final Lo/TextClassificationManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/netflix/cl/ExtLogger;

.field private final b:Lcom/netflix/cl/Logger;

.field private final e:Lo/SpellCheckerSubtype;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/Logger;Lcom/netflix/cl/ExtLogger;Lo/SpellCheckerSubtype;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "logger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extlogger"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceManagerRunner"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TextClassificationManager;->b:Lcom/netflix/cl/Logger;

    iput-object p2, p0, Lo/TextClassificationManager;->a:Lcom/netflix/cl/ExtLogger;

    iput-object p3, p0, Lo/TextClassificationManager;->e:Lo/SpellCheckerSubtype;

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/cl/model/Error;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lo/TextClassificationManager;->a:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/ExtLogger;->logError(Lcom/netflix/cl/model/Error;)V

    return-void
.end method

.method public final a(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V
    .locals 2

    const-string v0, "focus"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lo/TextClassificationManager;->b:Lcom/netflix/cl/Logger;

    check-cast p1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lo/TextClassificationManager;->b:Lcom/netflix/cl/Logger;

    check-cast p2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, p2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 46
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object p2, p0, Lo/TextClassificationManager;->b:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 47
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iget-object v0, p0, Lo/TextClassificationManager;->b:Lcom/netflix/cl/Logger;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    :cond_1
    return-void
.end method

.method public final a(Lcom/netflix/cl/model/event/session/SessionEnded;)Z
    .locals 1

    const-string v0, "sessionEnded"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lo/TextClassificationManager;->b:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lo/TextClassificationManager;->b:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final b(J)Z
    .locals 1

    .line 58
    iget-object v0, p0, Lo/TextClassificationManager;->b:Lcom/netflix/cl/Logger;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/ValidateInputRejected;
    .locals 2

    .line 69
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->getSession(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/Session;

    move-result-object p1

    .line 70
    instance-of v0, p1, Lcom/netflix/cl/model/event/session/action/ValidateInput;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/cl/model/event/session/ValidateInputRejected;

    check-cast p1, Lcom/netflix/cl/model/event/session/action/ValidateInput;

    invoke-direct {v0, p1, v1}, Lcom/netflix/cl/model/event/session/ValidateInputRejected;-><init>(Lcom/netflix/cl/model/event/session/action/ValidateInput;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lo/TextClassificationManager;->a:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/cl/ExtLogger;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(JLcom/netflix/cl/model/Error;)Z
    .locals 1

    const-string v0, "error"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lo/TextClassificationManager;->a:Lcom/netflix/cl/ExtLogger;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 30
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_rejoin"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->d:Ljava/lang/Object;

    .line 33
    :cond_0
    iget-object p1, p0, Lo/TextClassificationManager;->e:Lo/SpellCheckerSubtype;

    new-instance p2, Lo/TextClassificationManager$Application;

    invoke-direct {p2, v0}, Lo/TextClassificationManager$Application;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-interface {p1, p2}, Lo/SpellCheckerSubtype;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method public final d(Lcom/netflix/cl/model/event/session/command/Command;)Z
    .locals 2

    const-string v0, "command"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    check-cast p1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p0, p1}, Lo/TextClassificationManager;->b(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lo/TextClassificationManager;->b(J)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final e(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V
    .locals 1

    const-string v0, "discreteEvent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lo/TextClassificationManager;->b:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    return-void
.end method
