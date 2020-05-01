.class public final Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WrapperListAdapter;
.implements Lo/ClassCircularityError;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private c:J

.field private final d:Lo/g;


# direct methods
.method public constructor <init>(Lo/UnicodeScript;Lo/g;)V
    .locals 2

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiLatencyTracker"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->d:Lo/g;

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->c:J

    .line 20
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->a:Lorg/json/JSONObject;

    .line 23
    invoke-interface {p1}, Lo/UnicodeScript;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lo/ClassCircularityError;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->a(Lo/ClassCircularityError;)V

    .line 24
    iget-object p1, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->a:Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->d:Lo/g;

    invoke-virtual {p2}, Lo/g;->d()Lcom/netflix/cl/model/AppView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/cl/model/AppView;->name()Ljava/lang/String;

    move-result-object p2

    const-string v0, "uiId"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a(Z)Lo/WrapperListAdapter;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->a:Lorg/json/JSONObject;

    const-string v1, "isColdStart"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 29
    move-object p1, p0

    check-cast p1, Lo/WrapperListAdapter;

    return-object p1
.end method

.method public a()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 66
    invoke-static {v0, v1, v2, v0}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 67
    sget-object v1, Lo/g;->a:Lo/g$Activity;

    check-cast v1, Lo/MessagePdu;

    .line 69
    iget-object v1, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->d:Lo/g;

    invoke-virtual {v1}, Lo/g;->e()Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->a:Lorg/json/JSONObject;

    const-string v3, "UiLatencyTracker"

    .line 69
    invoke-virtual {v1, v3, v2}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->c(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    .line 73
    iget-object v1, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->d:Lo/g;

    invoke-virtual {v1}, Lo/g;->e()Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    move-result-object v1

    const-string v2, "tti"

    invoke-virtual {v1, v2, v3, v0}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    .line 74
    iget-object v1, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->d:Lo/g;

    invoke-virtual {v1}, Lo/g;->e()Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    move-result-object v1

    const-string v2, "ttr"

    invoke-virtual {v1, v2, v3, v0}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->d:Lo/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/g;->c(Z)V

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->d:Lo/g;

    invoke-virtual {v0, v1}, Lo/g;->a(Z)V

    return-void
.end method

.method public b()Lo/WrapperListAdapter;
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->d:Lo/g;

    invoke-virtual {v0}, Lo/g;->j()Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "latencyMarkerJson.keys()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 60
    iget-object v3, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 62
    :cond_0
    move-object v0, p0

    check-cast v0, Lo/WrapperListAdapter;

    return-object v0
.end method

.method public c()Lo/WrapperListAdapter;
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->a:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->d:Lo/g;

    invoke-virtual {v1}, Lo/g;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/aek;->a(Landroid/content/Context;)J

    move-result-wide v1

    const-string v3, "deviceMemory"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 49
    move-object v0, p0

    check-cast v0, Lo/WrapperListAdapter;

    return-object v0
.end method

.method public c(Z)Lo/WrapperListAdapter;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->a:Lorg/json/JSONObject;

    const-string v1, "isFirstLaunch"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 34
    move-object p1, p0

    check-cast p1, Lo/WrapperListAdapter;

    return-object p1
.end method

.method public d()Lo/WrapperListAdapter;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->a:Lorg/json/JSONObject;

    invoke-static {}, Lo/aek;->h()Z

    move-result v1

    const-string v2, "isLiteDevice"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 44
    move-object v0, p0

    check-cast v0, Lo/WrapperListAdapter;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lo/WrapperListAdapter;
    .locals 2

    const-string v0, "navigationSource"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    move-object p1, p0

    check-cast p1, Lo/WrapperListAdapter;

    return-object p1
.end method

.method public e()Lo/WrapperListAdapter;
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->a:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->d:Lo/g;

    invoke-virtual {v1}, Lo/g;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/aek;->e(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "isTablet"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 54
    move-object v0, p0

    check-cast v0, Lo/WrapperListAdapter;

    return-object v0
.end method

.method public final i()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->c:J

    return-wide v0
.end method

.method public final onStopped()V
    .locals 4
    .annotation runtime Lo/Double;
        c = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 81
    sget-object v0, Lo/g;->a:Lo/g$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->d:Lo/g;

    invoke-virtual {v0}, Lo/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->d:Lo/g;

    invoke-virtual {v0}, Lo/g;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->d:Lo/g;

    sget-object v1, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;->e:Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Collections.emptyMap()"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "UI Stopped"

    invoke-virtual {v0, v1, v3, v2}, Lo/g;->e(Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->d:Lo/g;

    sget-object v1, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;->e:Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lo/g;->d(Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;Ljava/lang/String;Ljava/util/Collection;)V

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyTrackerStarterImpl;->d:Lo/g;

    invoke-virtual {v0}, Lo/g;->h()V

    :cond_1
    return-void
.end method
