.class public abstract Lo/lc;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected a:Lo/kH;

.field protected b:Lo/kO;

.field protected c:Lo/kI;

.field protected d:Landroid/content/Context;

.field protected e:Lo/zE;

.field protected final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/mo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/lc;->g:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lo/kI;Lo/zE;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/lc;-><init>()V

    .line 44
    iput-object p1, p0, Lo/lc;->d:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lo/lc;->e:Lo/zE;

    .line 46
    iput-object p2, p0, Lo/lc;->c:Lo/kI;

    .line 47
    invoke-virtual {p2}, Lo/kI;->e()Lo/kH;

    move-result-object p1

    iput-object p1, p0, Lo/lc;->a:Lo/kH;

    .line 48
    invoke-virtual {p2}, Lo/kI;->d()Lo/kO;

    move-result-object p1

    iput-object p1, p0, Lo/lc;->b:Lo/kO;

    return-void
.end method

.method private static synthetic a(Lo/mo;Lo/mo;)Ljava/lang/Boolean;
    .locals 0

    .line 82
    invoke-virtual {p1, p0}, Lo/mo;->d(Lo/mo;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lo/mo;Lo/mo;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lo/lc;->a(Lo/mo;Lo/mo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lo/lc;->c(Ljava/lang/String;)Lo/mo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p1}, Lo/mo;->d()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lo/kF;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/lc;->c:Lo/kI;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lo/kI;->u()Lo/kF;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/lc;->d:Landroid/content/Context;

    return-object v0
.end method

.method protected b(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, p1, v0}, Lo/lc;->c(ZLo/UserHandle;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Lo/mo;
    .locals 4

    .line 87
    iget-object v0, p0, Lo/lc;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lo/lc;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/mo;

    .line 89
    invoke-virtual {v2, p1}, Lo/mo;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    monitor-exit v0

    return-object v2

    .line 93
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected c(ZLo/UserHandle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lo/UserHandle<",
            "Lo/mo;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lo/lc;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lo/lc;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 137
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/mo;

    if-eqz p2, :cond_1

    .line 139
    invoke-interface {p2, v2}, Lo/UserHandle;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    :cond_1
    invoke-virtual {v2}, Lo/mo;->d()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "AbsMdxStack"

    const-string v4, "resetAllDeviceState, %s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 143
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 144
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->t()V

    .line 146
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 156
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract d(Ljava/lang/String;)V
.end method

.method public f()Lo/kH;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/lc;->a:Lo/kH;

    return-object v0
.end method

.method public g()Landroid/os/Handler;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/lc;->c:Lo/kI;

    invoke-virtual {v0}, Lo/kI;->b()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public h()Lo/zE;
    .locals 1

    .line 68
    iget-object v0, p0, Lo/lc;->e:Lo/zE;

    return-object v0
.end method

.method public i()Landroid/os/Looper;
    .locals 1

    .line 67
    iget-object v0, p0, Lo/lc;->c:Lo/kI;

    invoke-virtual {v0}, Lo/kI;->a()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public j()Lo/kO;
    .locals 1

    .line 70
    iget-object v0, p0, Lo/lc;->b:Lo/kO;

    return-object v0
.end method

.method protected k()Lo/mo;
    .locals 1

    .line 99
    iget-object v0, p0, Lo/lc;->c:Lo/kI;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lo/kI;->j()Lo/mo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()[Lo/mo;
    .locals 3

    .line 73
    iget-object v0, p0, Lo/lc;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lo/lc;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Lo/mo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lo/mo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lo/lc;->k()Lo/mo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lo/mo;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public o()V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lo/lc;->k()Lo/mo;

    move-result-object v0

    .line 82
    new-instance v1, Lo/ld;

    invoke-direct {v1, v0}, Lo/ld;-><init>(Lo/mo;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lo/lc;->c(ZLo/UserHandle;)V

    return-void
.end method
