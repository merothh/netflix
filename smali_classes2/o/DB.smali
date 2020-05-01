.class public final Lo/DB;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DB$Activity;
    }
.end annotation


# static fields
.field public static final b:Lo/DB$Activity;


# instance fields
.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/DB$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/DB$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/DB;->b:Lo/DB$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lo/DB;->c:Ljava/util/Set;

    return-void
.end method

.method private final b()V
    .locals 3

    .line 125
    iget-object v0, p0, Lo/DB;->e:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    if-eqz v0, :cond_0

    const-string v1, "detailsPageResponseLatency"

    .line 126
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->c(Ljava/lang/String;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    .line 128
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->e()Lcom/netflix/cl/model/event/discrete/PerformanceTraceReported;

    move-result-object v0

    const-string v1, "it.build()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    sget-object v1, Lo/DB;->b:Lo/DB$Activity;

    check-cast v1, Lo/MessagePdu;

    .line 131
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast v0, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    invoke-virtual {v1, v0}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    goto :goto_0

    .line 132
    :cond_0
    move-object v0, p0

    check-cast v0, Lo/DB;

    .line 133
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lo/DB;->b:Lo/DB$Activity;

    invoke-virtual {v2}, Lo/DB$Activity;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Builder is null inside end() function"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 136
    :goto_0
    iget-object v0, p0, Lo/DB;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 137
    check-cast v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    iput-object v0, p0, Lo/DB;->e:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const-wide/16 v0, 0x0

    .line 138
    iput-wide v0, p0, Lo/DB;->d:J

    return-void
.end method

.method private final c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 8

    .line 105
    iget-object v0, p0, Lo/DB;->e:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    if-eqz v0, :cond_1

    .line 106
    iget-object v1, p0, Lo/DB;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-wide v3, p0, Lo/DB;->d:J

    .line 113
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v5, p0, Lo/DB;->d:J

    sub-long v5, v1, v5

    .line 114
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "completionReason"

    invoke-direct {p0, v1, p2}, Lo/DB;->d(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v2, "detailsPageResponseLatency"

    move-object v1, p1

    .line 109
    invoke-virtual/range {v0 .. v7}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    .line 118
    :cond_0
    iget-object p1, p0, Lo/DB;->c:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 119
    invoke-direct {p0}, Lo/DB;->b()V

    :cond_1
    return-void
.end method

.method private final d(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .line 142
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 143
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 51
    iget-object v0, p0, Lo/DB;->e:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/DB;->c:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;-><init>(J)V

    const-string v1, "detailsPageResponseLatency"

    .line 58
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    .line 59
    iput-object v0, p0, Lo/DB;->e:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;

    .line 61
    iget-object v0, p0, Lo/DB;->c:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    const-string v1, "dpTTIPrePrimary"

    const-string v2, "dpTTIPrimary"

    const-string v3, "dpTTISecondary"

    const-string v4, "dpTTRPrimary"

    const-string v5, "dpTTRSecondary"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akz;->c(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 62
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/DB;->d:J

    return-void

    .line 52
    :cond_1
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {p0, v0}, Lo/DB;->a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 53
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lo/DB;->b:Lo/DB$Activity;

    invoke-virtual {v2}, Lo/DB$Activity;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Trying to execute duplicate begin() function"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 1

    const-string v0, "completionReason"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1}, Lo/DB;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 70
    invoke-virtual {p0, p1}, Lo/DB;->e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method public final b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 1

    const-string v0, "completionReason"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p1}, Lo/DB;->c(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 75
    invoke-virtual {p0, p1}, Lo/DB;->d(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 76
    invoke-virtual {p0, p1}, Lo/DB;->i(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method public final c(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 1

    const-string v0, "completionReason"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dpTTIPrePrimary"

    .line 85
    invoke-direct {p0, v0, p1}, Lo/DB;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method public final d(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 1

    const-string v0, "completionReason"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dpTTIPrimary"

    .line 89
    invoke-direct {p0, v0, p1}, Lo/DB;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method public final e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 1

    const-string v0, "completionReason"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p1}, Lo/DB;->j(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 81
    invoke-virtual {p0, p1}, Lo/DB;->h(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method public final h(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 1

    const-string v0, "completionReason"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dpTTRSecondary"

    .line 101
    invoke-direct {p0, v0, p1}, Lo/DB;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method public final i(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 1

    const-string v0, "completionReason"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dpTTISecondary"

    .line 93
    invoke-direct {p0, v0, p1}, Lo/DB;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method public final j(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 1

    const-string v0, "completionReason"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dpTTRPrimary"

    .line 97
    invoke-direct {p0, v0, p1}, Lo/DB;->c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method
