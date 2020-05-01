.class public Lo/zj;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lo/zS;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/Logblob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/zj;->c:Ljava/util/List;

    return-void
.end method

.method private d(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lo/zj;->a:Lo/zS;

    invoke-interface {v0, p1}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    .locals 1

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lo/zj;->a:Lo/zS;

    if-eqz v0, :cond_0

    .line 31
    invoke-direct {p0, p1}, Lo/zj;->d(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lo/zj;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lo/zS;)V
    .locals 1

    monitor-enter p0

    .line 22
    :try_start_0
    iput-object p1, p0, Lo/zj;->a:Lo/zS;

    .line 23
    iget-object p1, p0, Lo/zj;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/Logblob;

    .line 24
    invoke-direct {p0, v0}, Lo/zj;->d(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lo/zj;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
