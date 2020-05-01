.class public final Lo/CameraPrewarmService;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Z

.field private b:Lo/zN;

.field private c:Lo/pz;

.field private d:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private e:Lo/cz;

.field private f:Lo/zF;

.field private g:Lo/nS;

.field private h:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private i:Lo/Ac;

.field private j:Lo/xZ;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo/CameraPrewarmService;->m:Ljava/util/List;

    return-void
.end method

.method private final m()V
    .locals 2

    .line 70
    :goto_0
    iget-object v0, p0, Lo/CameraPrewarmService;->m:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lo/CameraPrewarmService;->m:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lo/zN;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/CameraPrewarmService;->b:Lo/zN;

    return-object v0
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "runnable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lo/CameraPrewarmService;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-boolean p1, p0, Lo/CameraPrewarmService;->a:Z

    if-eqz p1, :cond_0

    .line 60
    invoke-direct {p0}, Lo/CameraPrewarmService;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Lo/pz;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/CameraPrewarmService;->c:Lo/pz;

    return-object v0
.end method

.method public final declared-synchronized b(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "runnable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lo/CameraPrewarmService;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Lo/zF;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lo/CameraPrewarmService;->f:Lo/zF;

    return-void
.end method

.method public final c()Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/CameraPrewarmService;->d:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-object v0
.end method

.method public final c(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lo/CameraPrewarmService;->d:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-void
.end method

.method public final c(Lo/cz;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lo/CameraPrewarmService;->e:Lo/cz;

    return-void
.end method

.method public final c(Lo/nS;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lo/CameraPrewarmService;->g:Lo/nS;

    return-void
.end method

.method public final c(Lo/pz;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lo/CameraPrewarmService;->c:Lo/pz;

    return-void
.end method

.method public final d(Lo/xZ;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lo/CameraPrewarmService;->j:Lo/xZ;

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lo/CameraPrewarmService;->a:Z

    return v0
.end method

.method public final e()Lo/cz;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/CameraPrewarmService;->e:Lo/cz;

    return-object v0
.end method

.method public final e(Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lo/CameraPrewarmService;->h:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    return-void
.end method

.method public final e(Lo/Ac;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lo/CameraPrewarmService;->i:Lo/Ac;

    return-void
.end method

.method public final e(Lo/zN;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lo/CameraPrewarmService;->b:Lo/zN;

    return-void
.end method

.method public final f()Lo/zF;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/CameraPrewarmService;->f:Lo/zF;

    return-object v0
.end method

.method public final g()Lo/Ac;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/CameraPrewarmService;->i:Lo/Ac;

    return-object v0
.end method

.method public final h()Lo/xZ;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/CameraPrewarmService;->j:Lo/xZ;

    return-object v0
.end method

.method public final i()Lo/nS;
    .locals 1

    .line 39
    iget-object v0, p0, Lo/CameraPrewarmService;->g:Lo/nS;

    return-object v0
.end method

.method public final j()Lcom/netflix/mediaclient/servicemgr/IClientLogging;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/CameraPrewarmService;->h:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    return-object v0
.end method

.method public final declared-synchronized k()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 53
    :try_start_0
    iput-boolean v0, p0, Lo/CameraPrewarmService;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized o()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 47
    :try_start_0
    iput-boolean v0, p0, Lo/CameraPrewarmService;->a:Z

    .line 48
    invoke-direct {p0}, Lo/CameraPrewarmService;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
