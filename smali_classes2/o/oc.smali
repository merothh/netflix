.class public Lo/oc;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:J

.field private static final c:J

.field private static final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/oc;->c:J

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/oc;->e:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 34
    sput-wide v0, Lo/oc;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)J
    .locals 6

    .line 63
    sget-object v0, Lo/oc;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-wide v1, Lo/oc;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, "last_contact_netflix_ms"

    const-wide/16 v2, -0x1

    .line 66
    invoke-static {p0, v1, v2, v3}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lo/oc;->b:J

    .line 72
    :cond_0
    sget-wide v1, Lo/oc;->b:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Lo/oC;)Z
    .locals 4

    .line 99
    invoke-interface {p0}, Lo/oC;->L()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static b(Landroid/content/Context;Lo/oC;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 5

    .line 175
    invoke-interface {p1}, Lo/oC;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lo/oC;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 176
    invoke-interface {p1}, Lo/oC;->G()V

    .line 177
    invoke-interface {p1}, Lo/oC;->M()V

    .line 178
    sget-object p0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    goto :goto_0

    .line 180
    :cond_0
    new-instance p0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->bi:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    :goto_0
    return-object p0
.end method

.method public static c(Lo/oC;)Z
    .locals 7

    .line 159
    invoke-static {}, Lo/aey;->b()J

    move-result-wide v0

    .line 160
    invoke-interface {p0}, Lo/oC;->R()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-interface {p0}, Lo/oC;->S()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 162
    :cond_0
    invoke-interface {p0}, Lo/oC;->P()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 163
    invoke-interface {p0}, Lo/oC;->P()J

    move-result-wide v2

    const-wide/32 v4, 0x337f9800

    add-long/2addr v0, v4

    cmp-long p0, v2, v0

    if-gtz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 7

    .line 46
    sget-object v0, Lo/oc;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 48
    sget-wide v3, Lo/oc;->b:J

    sget-wide v5, Lo/oc;->c:J

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const-string v3, "last_contact_netflix_ms"

    .line 49
    invoke-static {p0, v3, v1, v2}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;J)V

    .line 51
    sput-wide v1, Lo/oc;->b:J

    .line 56
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static d(Landroid/content/Context;Lo/oC;)Z
    .locals 10

    .line 113
    invoke-interface {p1}, Lo/oC;->K()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lo/oC;->J()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 123
    invoke-interface {p1}, Lo/oC;->J()J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-interface {p1}, Lo/oC;->Q()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-ltz v0, :cond_2

    .line 126
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 131
    :cond_0
    invoke-static {p0}, Lo/oc;->a(Landroid/content/Context;)J

    move-result-wide v6

    .line 132
    invoke-interface {p1}, Lo/oC;->I()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lo/oC;->H()J

    move-result-wide v8

    cmp-long p0, v8, v4

    if-lez p0, :cond_1

    cmp-long p0, v6, v4

    if-lez p0, :cond_1

    sub-long/2addr v2, v6

    .line 133
    invoke-interface {p1}, Lo/oC;->Q()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-gez p0, :cond_1

    .line 134
    invoke-interface {p1}, Lo/oC;->G()V

    .line 135
    monitor-enter p1

    .line 136
    :try_start_0
    invoke-interface {p1}, Lo/oC;->M()V

    .line 137
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "nf_PlayabilityEnforcer"

    const-string p1, "reset play window"

    .line 138
    invoke-static {p0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_0
    move-exception p0

    .line 137
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 6

    .line 86
    invoke-static {p0}, Lo/oc;->a(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0x2

    .line 87
    sget-wide v4, Lo/oc;->c:J

    mul-long v4, v4, v2

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 88
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Lo/oC;)Z
    .locals 4

    .line 152
    invoke-interface {p0}, Lo/oC;->P()J

    move-result-wide v0

    invoke-static {}, Lo/aey;->b()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
