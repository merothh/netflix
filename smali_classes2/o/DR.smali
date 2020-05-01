.class public final Lo/DR;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DR$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lo/DR$TaskDescription;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private e:Z

.field private final j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/DR$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/DR$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/DR;->d:Lo/DR$TaskDescription;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/DR;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method

.method private final a()V
    .locals 2

    .line 129
    iget-boolean v0, p0, Lo/DR;->e:Z

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lo/DR;->d:Lo/DR$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 131
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lo/DR;->d(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    :cond_0
    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lo/DR;->e:Z

    .line 134
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->t:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->e(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    return-void
.end method

.method private final a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 110
    iget-boolean v0, p0, Lo/DR;->a:Z

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Received a end DP TTR session while not tracking any"

    .line 112
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 115
    :cond_0
    iget-boolean v0, p0, Lo/DR;->e:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lo/DR;->b:Z

    .line 117
    sget-object p1, Lo/DR;->d:Lo/DR$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lo/DR;->b:Z

    .line 122
    iput-boolean v0, p0, Lo/DR;->a:Z

    .line 123
    iget-object v0, p0, Lo/DR;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->endRenderNavigationLevelSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 124
    sget-object p2, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->p:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-direct {p0, p1}, Lo/DR;->e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 125
    sget-object p1, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->b()V

    return-void
.end method

.method public static final synthetic a(Lo/DR;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lo/DR;->a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public static final synthetic b(Lo/DR;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/DR;->e()Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;

    move-result-object p0

    return-object p0
.end method

.method private final c()V
    .locals 2

    .line 72
    iget-boolean v0, p0, Lo/DR;->a:Z

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lo/DR;->d:Lo/DR$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 74
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/DR;->a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lo/DR;->a:Z

    .line 78
    iget-object v0, p0, Lo/DR;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startRenderNavigationLevelSession()V

    .line 79
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->p:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->e(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 80
    iget-object v0, p0, Lo/DR;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Lo/DR$StateListAnimator;

    invoke-direct {v1, p0}, Lo/DR$StateListAnimator;-><init>(Lo/DR;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method private final d(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 4

    .line 138
    iget-boolean v0, p0, Lo/DR;->e:Z

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Received a end DP TTI session while not tracking any"

    .line 140
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lo/DR;->e:Z

    .line 143
    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->t:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-direct {p0, p1}, Lo/DR;->e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 144
    iget-object v1, p0, Lo/DR;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->logMetadataRenderedEvent(Z)V

    .line 146
    iget-boolean v1, p0, Lo/DR;->b:Z

    if-eqz v1, :cond_1

    .line 147
    iput-boolean v0, p0, Lo/DR;->b:Z

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1, v0}, Lo/DR;->a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    return-void
.end method

.method public static final synthetic d(Lo/DR;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lo/DR;->a:Z

    return p0
.end method

.method private final e()Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;
    .locals 1

    .line 99
    new-instance v0, Lo/DR$Application;

    invoke-direct {v0, p0}, Lo/DR$Application;-><init>(Lo/DR;)V

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;

    return-object v0
.end method

.method private final e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object p1

    const-string v2, "reason"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object p1, p0, Lo/DR;->c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->name()Ljava/lang/String;

    move-result-object p1

    const-string v2, "videoType"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 62
    iget-boolean v0, p0, Lo/DR;->e:Z

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lo/DR;->d(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 66
    :cond_0
    iget-boolean v0, p0, Lo/DR;->a:Z

    if-eqz v0, :cond_1

    .line 67
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/DR;->a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    return-void
.end method

.method public final c(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 1

    const-string v0, "videoType"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lo/DR;->c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 35
    invoke-direct {p0}, Lo/DR;->a()V

    .line 36
    invoke-direct {p0}, Lo/DR;->c()V

    return-void
.end method

.method public final d()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/DR;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method public final e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "res"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 45
    :goto_0
    iget-boolean v1, p0, Lo/DR;->e:Z

    if-eqz v1, :cond_1

    .line 46
    invoke-direct {p0, v0}, Lo/DR;->d(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 49
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lo/DR;->a:Z

    if-eqz v1, :cond_2

    .line 50
    invoke-direct {p0, v0, p1}, Lo/DR;->a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 53
    :cond_2
    iget-object v0, p0, Lo/DR;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 54
    sget-object v0, Lo/DR;->d:Lo/DR$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 55
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lo/DR;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleFalkorAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_3
    return-void
.end method
