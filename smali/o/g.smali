.class public final Lo/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ViewSwitcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/g$Activity;
    }
.end annotation


# static fields
.field public static final a:Lo/g$Activity;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

.field public e:Lcom/netflix/cl/model/AppView;

.field private f:Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;

.field private final g:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

.field private h:Lo/d;

.field private final i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/g$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/g$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/g;->a:Lo/g$Activity;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "latencyMarker"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/g;->g:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    iput-object p2, p0, Lo/g;->i:Landroid/content/Context;

    .line 30
    new-instance p1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;-><init>(J)V

    iput-object p1, p0, Lo/g;->d:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 63
    iget-object v0, p0, Lo/g;->h:Lo/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/d;->c()V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lo/g;->c:Z

    return-void
.end method

.method public b(Z)Lo/ViewAnimator;
    .locals 1

    .line 56
    new-instance v0, Lo/d;

    invoke-direct {v0, p0, p1}, Lo/d;-><init>(Lo/g;Z)V

    .line 57
    iput-object v0, p0, Lo/g;->h:Lo/d;

    .line 58
    check-cast v0, Lo/ViewAnimator;

    return-object v0
.end method

.method public b()Lo/ViewSwitcher;
    .locals 3

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;-><init>(J)V

    iput-object v0, p0, Lo/g;->d:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lo/g;->b:Z

    .line 42
    iput-boolean v0, p0, Lo/g;->c:Z

    .line 43
    move-object v0, p0

    check-cast v0, Lo/ViewSwitcher;

    return-object v0
.end method

.method public final c(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lo/g;->b:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lo/g;->b:Z

    return v0
.end method

.method public final d()Lcom/netflix/cl/model/AppView;
    .locals 2

    .line 31
    iget-object v0, p0, Lo/g;->e:Lcom/netflix/cl/model/AppView;

    if-nez v0, :cond_0

    const-string v1, "appView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public d(Lcom/netflix/cl/model/AppView;Lo/UnicodeScript;)Lo/WrapperListAdapter;
    .locals 1

    const-string v0, "appView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lo/g;->e:Lcom/netflix/cl/model/AppView;

    .line 49
    new-instance p1, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;

    invoke-direct {p1, p2, p0}, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;-><init>(Lo/UnicodeScript;Lo/g;)V

    iput-object p1, p0, Lo/g;->f:Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;

    .line 51
    iget-object p1, p0, Lo/g;->f:Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;

    if-nez p1, :cond_0

    const-string p2, "starter"

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    check-cast p1, Lo/WrapperListAdapter;

    return-object p1
.end method

.method public final d(Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lo/Ap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiLatencyStatus"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object v1, Lo/g;->a:Lo/g$Activity;

    check-cast v1, Lo/MessagePdu;

    .line 87
    iget-boolean v1, p0, Lo/g;->c:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 88
    iput-boolean v1, p0, Lo/g;->c:Z

    .line 89
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "status"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 90
    sget-object p2, Lo/dN;->d:Lo/dN$ActionBar;

    invoke-virtual {p2}, Lo/dN$ActionBar;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 91
    iget-object p2, p0, Lo/g;->h:Lo/d;

    const-string v0, "args"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lo/d;->d()Ljava/util/Collection;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 92
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "first_scrolled_images"

    invoke-static {p1, v2, p2}, Lo/ZoomButtonsController;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Collection;)V

    .line 93
    invoke-static {p1, v2, p2}, Lo/ZoomButtonsController;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Collection;)V

    .line 95
    :cond_0
    iget-object p2, p0, Lo/g;->h:Lo/d;

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lo/d;->b()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    move-wide v4, v2

    :goto_0
    const-string p2, "did_scroll"

    cmp-long v6, v4, v2

    if-lez v6, :cond_3

    .line 97
    iget-object v1, p0, Lo/g;->f:Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;

    if-nez v1, :cond_2

    const-string v2, "starter"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->i()J

    move-result-wide v1

    sub-long/2addr v4, v1

    const-string v1, "scroll_start_time_millis"

    invoke-virtual {p1, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v1, 0x1

    .line 98
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 100
    :cond_3
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :goto_1
    if-eqz p3, :cond_4

    .line 103
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "ttr_images"

    invoke-static {p1, p2, p3}, Lo/ZoomButtonsController;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Collection;)V

    .line 104
    invoke-static {p1, p2, p3}, Lo/ZoomButtonsController;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Collection;)V

    .line 107
    :cond_4
    iget-object p2, p0, Lo/g;->d:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const-string p3, "ttr"

    invoke-virtual {p2, p3, p1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    .line 109
    :cond_5
    iget-object p1, p0, Lo/g;->h:Lo/d;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lo/d;->e()Lo/ViewFlipper;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 110
    invoke-virtual {p1}, Lo/ViewFlipper;->a()V

    .line 111
    iget-object p1, p0, Lo/g;->h:Lo/d;

    if-eqz p1, :cond_6

    const/4 p2, 0x0

    check-cast p2, Lo/ViewFlipper;

    invoke-virtual {p1, p2}, Lo/d;->e(Lo/ViewFlipper;)V

    :cond_6
    return-void
.end method

.method public final e()Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/g;->d:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    return-object v0
.end method

.method public final e(Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiLatencyStatus"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalArgs"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lo/g;->a:Lo/g$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 75
    iget-boolean v0, p0, Lo/g;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lo/g;->b:Z

    .line 77
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;->a()Ljava/lang/String;

    move-result-object p1

    const-string p3, "status"

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string p3, "fetchStatus"

    .line 79
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    :cond_0
    iget-object p2, p0, Lo/g;->d:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const-string p3, "tti"

    invoke-virtual {p2, p3, p1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    :cond_1
    return-void
.end method

.method public final f()Landroid/content/Context;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/g;->i:Landroid/content/Context;

    return-object v0
.end method

.method public final h()V
    .locals 2

    .line 67
    iget-boolean v0, p0, Lo/g;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/g;->c:Z

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lo/g;->d:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const-string v1, "UiLatencyTracker"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->c(Ljava/lang/String;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    .line 69
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/g;->d:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e()Lcom/netflix/cl/model/event/discrete/PerformanceTraceReported;

    move-result-object v1

    check-cast v1, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    :cond_0
    return-void
.end method

.method public final i()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lo/g;->c:Z

    return v0
.end method

.method public final j()Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;
    .locals 1

    .line 20
    iget-object v0, p0, Lo/g;->g:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    return-object v0
.end method
