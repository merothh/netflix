.class public final Lo/mV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zH;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/mV$TaskDescription;
    }
.end annotation


# static fields
.field public static final b:Lo/mV$TaskDescription;

# The value of this static final field might be set in the static constructor
.field private static final f:Ljava/lang/String; = "count"

# The value of this static final field might be set in the static constructor
.field private static final g:J = 0xea60L

# The value of this static final field might be set in the static constructor
.field private static final h:Ljava/lang/String; = "nf_msl_cad"


# instance fields
.field private a:Lorg/json/JSONObject;

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Lo/mw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/mV$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/mV$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/mV;->b:Lo/mV$TaskDescription;

    const-string v0, "nf_msl_cad"

    .line 33
    sput-object v0, Lo/mV;->h:Ljava/lang/String;

    const v0, 0xea60

    int-to-long v0, v0

    .line 38
    sput-wide v0, Lo/mV;->g:J

    const-string v0, "count"

    .line 43
    sput-object v0, Lo/mV;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/mw;)V
    .locals 2

    const-string v0, "mMslAgent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/mV;->e:Lo/mw;

    .line 48
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lo/mV;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lo/mV;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 53
    invoke-virtual {p0}, Lo/mV;->i()V

    return-void
.end method

.method private final f()Lorg/json/JSONObject;
    .locals 5

    .line 136
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 138
    :try_start_0
    sget-object v1, Lo/mV;->f:Ljava/lang/String;

    iget-object v2, p0, Lo/mV;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 140
    sget-object v2, Lo/mV;->h:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Failed to create CAD state JSON object."

    invoke-static {v2, v1, v4, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-object v0
.end method

.method private final g()Z
    .locals 3

    .line 125
    sget-object v0, Lo/hh;->e:Lo/hh$Application;

    invoke-virtual {v0}, Lo/hh$Application;->c()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 127
    sget-object v0, Lo/mV;->h:Ljava/lang/String;

    const-string v2, "Error count is disabled."

    invoke-static {v0, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 130
    :cond_0
    iget-object v2, p0, Lo/mV;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lt v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final declared-synchronized j()V
    .locals 3

    monitor-enter p0

    .line 148
    :try_start_0
    invoke-direct {p0}, Lo/mV;->f()Lorg/json/JSONObject;

    move-result-object v0

    .line 149
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "preference_cad"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    .line 83
    iget-object v0, p0, Lo/mV;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lo/mV;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 77
    iget-object v0, p0, Lo/mV;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 78
    invoke-direct {p0}, Lo/mV;->j()V

    .line 79
    iget-object v0, p0, Lo/mV;->e:Lo/mw;

    invoke-virtual {v0}, Lo/mw;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/amh;->c()V

    :cond_0
    invoke-interface {v0}, Lo/cz;->e()Lo/ds;

    move-result-object v0

    invoke-static {v0}, Lo/adU;->b(Lo/ds;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 8

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lo/mV;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    .line 90
    monitor-exit p0

    return v2

    .line 92
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v5, p0, Lo/mV;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v5

    sub-long/2addr v0, v5

    cmp-long v5, v0, v3

    if-ltz v5, :cond_2

    .line 93
    sget-wide v5, Lo/mV;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v7, v0, v5

    if-ltz v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 97
    monitor-exit p0

    return v0

    .line 94
    :cond_2
    :goto_0
    :try_start_2
    iget-object v0, p0, Lo/mV;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lo/mV;->e:Lo/mw;

    const-string v1, "cad"

    invoke-virtual {v0, v1}, Lo/mw;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 5

    .line 58
    sget-object v0, Lo/hh;->e:Lo/hh$Application;

    invoke-virtual {v0}, Lo/hh$Application;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lo/mV;->h:Ljava/lang/String;

    const-string v2, "CAD service token is disabled by configuration."

    invoke-static {v0, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 61
    :cond_0
    invoke-direct {p0}, Lo/mV;->g()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Lo/mV;->h:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    .line 63
    sget-object v4, Lo/hh;->e:Lo/hh$Application;

    invoke-virtual {v4}, Lo/hh$Application;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "CAD service token was requested more time than defined in FP: %d "

    .line 62
    invoke-static {v0, v2, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_1
    return v2
.end method

.method public final declared-synchronized i()V
    .locals 4

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "preference_cad"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    sget-object v0, Lo/mV;->h:Ljava/lang/String;

    const-string v1, "CAD request never done on this device."

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    monitor-exit p0

    return-void

    .line 112
    :cond_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    iput-object v1, p0, Lo/mV;->a:Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 115
    :try_start_2
    sget-object v1, Lo/mV;->h:Ljava/lang/String;

    const-string v2, "Failed to load CAD state from preferences."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CadMonitor(PreviousStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/mV;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", RequestCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/mV;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", PendingTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/mV;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
