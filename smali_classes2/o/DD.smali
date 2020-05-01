.class public final Lo/DD;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DD$ActionBar;,
        Lo/DD$StateListAnimator;
    }
.end annotation


# static fields
.field public static final a:Lo/DD$StateListAnimator;

.field private static final k:Z


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lo/DB;

.field private f:Lo/DD$ActionBar;

.field private final g:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private h:J

.field private i:Lo/DD$ActionBar;

.field private j:I

.field private final o:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/DD$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/DD$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/DD;->a:Lo/DD$StateListAnimator;

    .line 26
    sget-object v0, Lo/bH;->c:Lo/bH$TaskDescription;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lo/bH$TaskDescription;->a(I)Z

    move-result v0

    sput-boolean v0, Lo/DD;->k:Z

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastVideoType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/DD;->g:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lo/DD;->o:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lo/DD;->h:J

    .line 48
    invoke-direct {p0}, Lo/DD;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    new-instance p1, Lo/DB;

    invoke-direct {p1}, Lo/DB;-><init>()V

    iput-object p1, p0, Lo/DD;->e:Lo/DB;

    .line 51
    :cond_0
    iget-object p1, p0, Lo/DD;->e:Lo/DB;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lo/DB;->a()V

    .line 53
    :cond_1
    invoke-direct {p0}, Lo/DD;->g()V

    .line 55
    invoke-direct {p0}, Lo/DD;->a()V

    return-void
.end method

.method private final a(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;
    .locals 0

    .line 112
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    goto :goto_0

    .line 115
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    :goto_0
    return-object p1
.end method

.method private final a()V
    .locals 2

    .line 131
    iget-boolean v0, p0, Lo/DD;->d:Z

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lo/DD;->a:Lo/DD$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 133
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/DD;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lo/DD;->d:Z

    .line 137
    iget-object v0, p0, Lo/DD;->g:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startRenderNavigationLevelSession()V

    .line 138
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->p:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->e(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 141
    iget-object v0, p0, Lo/DD;->g:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Lo/DD$Activity;

    invoke-direct {v1, p0}, Lo/DD$Activity;-><init>(Lo/DD;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method private final a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 1

    .line 170
    sget-object v0, Lo/DD;->a:Lo/DD$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 171
    iget-object v0, p0, Lo/DD;->e:Lo/DB;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/DB;->j(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 172
    :cond_0
    iget-boolean v0, p0, Lo/DD;->d:Z

    if-eqz v0, :cond_1

    .line 173
    invoke-direct {p0, p1}, Lo/DD;->c(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    :cond_1
    return-void
.end method

.method private final b()Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;
    .locals 1

    .line 181
    new-instance v0, Lo/DD$TaskDescription;

    invoke-direct {v0, p0}, Lo/DD$TaskDescription;-><init>(Lo/DD;)V

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;

    return-object v0
.end method

.method public static final synthetic b(Lo/DD;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/DD;->e()Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;

    move-result-object p0

    return-object p0
.end method

.method private final b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 1

    .line 188
    sget-object v0, Lo/DD;->a:Lo/DD$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 189
    iget-object v0, p0, Lo/DD;->e:Lo/DB;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/DB;->h(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 190
    :cond_0
    iget-boolean v0, p0, Lo/DD;->d:Z

    if-eqz v0, :cond_1

    .line 191
    invoke-direct {p0, p1}, Lo/DD;->c(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    :cond_1
    return-void
.end method

.method private final b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 196
    iget-boolean v0, p0, Lo/DD;->d:Z

    if-nez v0, :cond_0

    .line 197
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Received a end DP TTR session while not tracking any"

    .line 198
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 201
    :cond_0
    iget-boolean v0, p0, Lo/DD;->c:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lo/DD;->b:Z

    .line 203
    sget-object p1, Lo/DD;->a:Lo/DD$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lo/DD;->b:Z

    .line 208
    iput-boolean v0, p0, Lo/DD;->d:Z

    .line 209
    iput v0, p0, Lo/DD;->j:I

    .line 210
    iget-object v0, p0, Lo/DD;->g:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->endRenderNavigationLevelSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 211
    sget-object p2, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->p:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-direct {p0, p1}, Lo/DD;->d(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 212
    sget-object p2, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->b()V

    .line 215
    iget-object p2, p0, Lo/DD;->e:Lo/DB;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lo/DB;->e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 217
    :cond_2
    iget-object p1, p0, Lo/DD;->f:Lo/DD$ActionBar;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 218
    invoke-virtual {p1}, Lo/DD$ActionBar;->a()V

    .line 219
    move-object p1, p2

    check-cast p1, Lo/DD$ActionBar;

    iput-object p1, p0, Lo/DD;->f:Lo/DD$ActionBar;

    .line 221
    :cond_3
    iget-object p1, p0, Lo/DD;->i:Lo/DD$ActionBar;

    if-eqz p1, :cond_4

    .line 222
    invoke-virtual {p1}, Lo/DD$ActionBar;->a()V

    .line 223
    check-cast p2, Lo/DD$ActionBar;

    iput-object p2, p0, Lo/DD;->i:Lo/DD$ActionBar;

    .line 225
    :cond_4
    sget-object p1, Lo/DD;->a:Lo/DD$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public static final synthetic b(Lo/DD;Lo/DD$ActionBar;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lo/DD;->i:Lo/DD$ActionBar;

    return-void
.end method

.method private final c(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 3

    .line 276
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    invoke-direct {p0, p1, v1}, Lo/DD;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_1

    .line 282
    :cond_1
    :goto_0
    iget v0, p0, Lo/DD;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/DD;->j:I

    iget v0, p0, Lo/DD;->j:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 283
    invoke-direct {p0, p1, v1}, Lo/DD;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static final synthetic c(Lo/DD;Lo/DD$ActionBar;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lo/DD;->f:Lo/DD$ActionBar;

    return-void
.end method

.method public static final synthetic d(Lo/DD;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/DD;->b()Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;

    move-result-object p0

    return-object p0
.end method

.method private final d(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)Ljava/util/Map;
    .locals 2
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

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 269
    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "reason"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object p1, p0, Lo/DD;->o:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "videoType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic d(Lo/DD;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lo/DD;->a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method private final e()Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;
    .locals 1

    .line 163
    new-instance v0, Lo/DD$Application;

    invoke-direct {v0, p0}, Lo/DD$Application;-><init>(Lo/DD;)V

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;

    return-object v0
.end method

.method private final e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 4

    .line 238
    iget-boolean v0, p0, Lo/DD;->c:Z

    if-nez v0, :cond_0

    .line 239
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Received a end DP TTI session while not tracking any"

    .line 240
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lo/DD;->c:Z

    .line 243
    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->t:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-direct {p0, p1}, Lo/DD;->d(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 244
    iget-object v1, p0, Lo/DD;->g:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->logMetadataRenderedEvent(Z)V

    .line 246
    sget-object v1, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v1}, Lo/eG$Application;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    iget-object v1, p0, Lo/DD;->e:Lo/DB;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lo/DB;->i(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 250
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    if-ne p1, v1, :cond_3

    .line 251
    invoke-direct {p0, p1}, Lo/DD;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v1, p0, Lo/DD;->e:Lo/DB;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lo/DB;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 259
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lo/DD;->b:Z

    if-eqz v1, :cond_4

    .line 260
    iput-boolean v0, p0, Lo/DD;->b:Z

    const/4 v0, 0x0

    .line 261
    invoke-direct {p0, p1, v0}, Lo/DD;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 264
    :cond_4
    sget-object p1, Lo/DD;->a:Lo/DD$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public static final synthetic e(Lo/DD;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lo/DD;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method private final g()V
    .locals 2

    .line 229
    iget-boolean v0, p0, Lo/DD;->c:Z

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lo/DD;->a:Lo/DD$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 231
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lo/DD;->e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    :cond_0
    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lo/DD;->c:Z

    .line 234
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->t:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->e(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    return-void
.end method

.method private final i()Z
    .locals 1

    .line 293
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    sget-boolean v0, Lo/DD;->k:Z

    return v0

    .line 298
    :cond_0
    sget-object v0, Lo/Tj;->a:Lo/Tj;

    invoke-virtual {v0}, Lo/Tj;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final c()V
    .locals 1

    .line 82
    iget-boolean v0, p0, Lo/DD;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/DD;->i:Lo/DD$ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DD$ActionBar;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lo/DD;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0, p1}, Lo/DD;->a(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lo/DD;->e:Lo/DB;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/DB;->d(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 105
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    if-ne p1, v0, :cond_1

    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-direct {p0, p1}, Lo/DD;->a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 2

    .line 119
    iget-boolean v0, p0, Lo/DD;->c:Z

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-direct {p0, v0}, Lo/DD;->e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 123
    :cond_0
    iget-boolean v0, p0, Lo/DD;->d:Z

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/DD;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 127
    :cond_1
    iget-object v0, p0, Lo/DD;->e:Lo/DB;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v0, v1}, Lo/DB;->a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    :cond_2
    return-void
.end method

.method public final d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "status"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, p1}, Lo/DD;->a(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v0

    .line 61
    iget-boolean v1, p0, Lo/DD;->c:Z

    if-eqz v1, :cond_0

    .line 62
    invoke-direct {p0, v0}, Lo/DD;->e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 65
    :cond_0
    iget-boolean v1, p0, Lo/DD;->d:Z

    if-eqz v1, :cond_1

    .line 66
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    sget-object v1, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v1}, Lo/eG$Application;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    invoke-direct {p0, v0, p1}, Lo/DD;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 74
    :cond_1
    iget-object v0, p0, Lo/DD;->g:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lo/DD;->g:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleFalkorAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_2
    return-void
.end method

.method public final e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "status"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0, p1}, Lo/DD;->a(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v1, p0, Lo/DD;->e:Lo/DB;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lo/DB;->a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 92
    :cond_0
    invoke-direct {p0, v0, p1}, Lo/DD;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lo/DD;->e:Lo/DB;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lo/DB;->c(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    :cond_2
    :goto_0
    return-void
.end method
