.class public Lo/rk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/rh;


# instance fields
.field private a:Lo/iU;

.field private b:Landroid/os/Looper;

.field private c:Lo/sD;

.field private d:Lo/pM;

.field private e:Z

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/rb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lo/sD;Lo/pM;ZLo/iU;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/rk;->f:Ljava/util/Map;

    .line 43
    iput-object p3, p0, Lo/rk;->d:Lo/pM;

    .line 44
    iput-object p2, p0, Lo/rk;->c:Lo/sD;

    .line 45
    iput-object p1, p0, Lo/rk;->b:Landroid/os/Looper;

    .line 46
    iput-boolean p4, p0, Lo/rk;->e:Z

    .line 47
    iput-object p5, p0, Lo/rk;->a:Lo/iU;

    .line 48
    invoke-direct {p0}, Lo/rk;->j()V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lo/rk;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/rb;

    .line 114
    invoke-virtual {v1, p1}, Lo/rb;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized e(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/StreamProfileType;)I
    .locals 2

    monitor-enter p0

    .line 183
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->c:Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;->b:Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/configuration/MediaDrmTypeProvider;->b(Lcom/netflix/mediaclient/service/configuration/MediaDrmConsumer;Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/StreamProfileType;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0, v0}, Lo/rk;->a(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/StreamProfileType;)Lo/rb;

    return-void
.end method


# virtual methods
.method protected declared-synchronized a(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/StreamProfileType;)Lo/rb;
    .locals 6

    monitor-enter p0

    .line 163
    :try_start_0
    invoke-direct {p0, p1, p2}, Lo/rk;->e(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/StreamProfileType;)I

    move-result p2

    .line 164
    iget-object v0, p0, Lo/rk;->f:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/rb;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    const-string v0, "NfDrmManager"

    const-string v4, "Expected controller for media drm type %d does NOT exist for movie %d. Create it."

    new-array v3, v3, [Ljava/lang/Object;

    .line 167
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    aput-object p1, v3, v1

    invoke-static {v0, v4, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 168
    new-instance v0, Lo/rb;

    iget-object p1, p0, Lo/rk;->b:Landroid/os/Looper;

    invoke-direct {v0, p2, p1, p0}, Lo/rb;-><init>(ILandroid/os/Looper;Lo/rk;)V

    .line 169
    iget-object p1, p0, Lo/rk;->f:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v4, "NfDrmManager"

    const-string v5, "Expected controller for media drm type %d found for movie %d. Returns it."

    new-array v3, v3, [Ljava/lang/Object;

    .line 171
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v2

    aput-object p1, v3, v1

    invoke-static {v4, v5, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()V
    .locals 3

    .line 134
    iget-object v0, p0, Lo/rk;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/rb;

    const/4 v2, 0x0

    .line 135
    invoke-virtual {v1, v2}, Lo/rb;->c(Z)V

    .line 136
    invoke-virtual {v1}, Lo/rb;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Lo/re;
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0, v0}, Lo/rk;->a(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/StreamProfileType;)Lo/rb;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lo/rb;->d()Lo/re;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Long;Lo/rf;Lcom/netflix/mediaclient/service/player/StreamProfileType;Lo/rn$StateListAnimator;)Lo/rn;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/rk;->e(Ljava/lang/Long;Lo/rf;Lcom/netflix/mediaclient/service/player/StreamProfileType;Lo/rn$StateListAnimator;)Lo/rp;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 142
    invoke-direct {p0, v0}, Lo/rk;->a(Z)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ae;",
            ">;)V"
        }
    .end annotation

    .line 91
    iget-boolean v0, p0, Lo/rk;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-static {}, Lo/eR;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 99
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Ae;

    .line 100
    iget-wide v1, v0, Lo/Ae;->e:J

    .line 101
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lo/rk;->a(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/StreamProfileType;)Lo/rb;

    move-result-object v1

    .line 102
    invoke-virtual {v1, v0}, Lo/rb;->a(Lo/Ae;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d()Landroid/os/Looper;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/rk;->b:Landroid/os/Looper;

    return-object v0
.end method

.method public d(Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, p1, v0}, Lo/rk;->a(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/StreamProfileType;)Lo/rb;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p1}, Lo/rb;->d(Ljava/lang/Long;)V

    return-void
.end method

.method public e(JLcom/netflix/mediaclient/service/player/StreamProfileType;)Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;
    .locals 0

    .line 78
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lo/rk;->a(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/StreamProfileType;)Lo/rb;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Lo/rb;->a()Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public declared-synchronized e(Ljava/lang/Long;Lo/rf;Lcom/netflix/mediaclient/service/player/StreamProfileType;Lo/rn$StateListAnimator;)Lo/rp;
    .locals 0

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lo/rk;->a(Ljava/lang/Long;Lcom/netflix/mediaclient/service/player/StreamProfileType;)Lo/rb;

    move-result-object p3

    .line 73
    invoke-virtual {p3, p1, p2, p4}, Lo/rb;->d(Ljava/lang/Long;Lo/rf;Lo/rn$StateListAnimator;)Lo/rp;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 108
    :try_start_0
    invoke-direct {p0, v0}, Lo/rk;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method f()Lo/iU;
    .locals 1

    .line 158
    iget-object v0, p0, Lo/rk;->a:Lo/iU;

    return-object v0
.end method

.method g()Lo/sD;
    .locals 1

    .line 150
    iget-object v0, p0, Lo/rk;->c:Lo/sD;

    return-object v0
.end method

.method h()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lo/rk;->e:Z

    return v0
.end method

.method i()Lo/pM;
    .locals 1

    .line 146
    iget-object v0, p0, Lo/rk;->d:Lo/pM;

    return-object v0
.end method
