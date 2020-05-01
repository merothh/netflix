.class public final Lo/MT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;


# instance fields
.field private a:Ljava/lang/Long;

.field private final b:Lcom/netflix/cl/Logger;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/Logger;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/MT;->b:Lcom/netflix/cl/Logger;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 20
    iget-object v0, p0, Lo/MT;->b:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/command/ViewLegalTermsCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/ViewLegalTermsCommand;-><init>()V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lo/MT;->b:Lcom/netflix/cl/Logger;

    invoke-virtual {v1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    return-void
.end method

.method public b()V
    .locals 3

    .line 44
    iget-object v0, p0, Lo/MT;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 45
    iget-object v2, p0, Lo/MT;->b:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 46
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/MT;->a:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public b(ZLo/AnalogClock;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "shareTarget"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareable"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v1, Lo/ActionMenuPresenter;->e:Lo/ActionMenuPresenter;

    .line 52
    iget-object v2, p0, Lo/MT;->b:Lcom/netflix/cl/Logger;

    .line 54
    invoke-virtual {p2}, Lo/AnalogClock;->b()Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-interface {p3, p2}, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;->d(Lo/AnalogClock;)Ljava/lang/String;

    move-result-object v5

    .line 56
    sget-object p2, Lo/MT$StateListAnimator;->a:Lo/MT$StateListAnimator;

    move-object v6, p2

    check-cast v6, Lcom/netflix/cl/model/TrackingInfo;

    move v3, p1

    .line 51
    invoke-virtual/range {v1 .. v6}, Lo/ActionMenuPresenter;->a(Lcom/netflix/cl/Logger;ZLjava/lang/String;Ljava/lang/String;Lcom/netflix/cl/model/TrackingInfo;)V

    return-void
.end method

.method public c()V
    .locals 5

    .line 25
    iget-object v0, p0, Lo/MT;->b:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/discrete/Presented;

    sget-object v2, Lcom/netflix/cl/model/AppView;->referralCodeError:Lcom/netflix/cl/model/AppView;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/cl/model/event/discrete/Presented;-><init>(Lcom/netflix/cl/model/AppView;Ljava/lang/Boolean;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lo/MT;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 37
    new-instance v0, Lo/MT$TaskDescription;

    invoke-direct {v0, p1}, Lo/MT$TaskDescription;-><init>(I)V

    check-cast v0, Lcom/netflix/cl/model/TrackingInfo;

    .line 40
    iget-object p1, p0, Lo/MT;->b:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v2, Lcom/netflix/cl/model/AppView;->referFriends:Lcom/netflix/cl/model/AppView;

    invoke-direct {v1, v2, v0}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/MT;->a:Ljava/lang/Long;

    return-void
.end method

.method public e()V
    .locals 2

    .line 29
    iget-object v0, p0, Lo/MT;->b:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/command/RetryCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/RetryCommand;-><init>()V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lo/MT;->b:Lcom/netflix/cl/Logger;

    invoke-virtual {v1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    return-void
.end method
