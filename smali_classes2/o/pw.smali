.class public Lo/pw;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:Lo/zJ;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/zJ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/pw;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()I
    .locals 1

    .line 91
    sget-object v0, Lo/pw;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method static a(Lo/zJ;)V
    .locals 2

    .line 71
    sget-object v0, Lo/pw;->d:Ljava/util/List;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lo/pw;->d:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static b()Lo/zJ;
    .locals 3

    .line 77
    sget-object v0, Lo/pw;->d:Ljava/util/List;

    monitor-enter v0

    .line 78
    :try_start_0
    invoke-static {}, Lo/pw;->a()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 79
    sget-object v1, Lo/pw;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/zJ;

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 81
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static b(Lo/zJ;)V
    .locals 2

    .line 58
    invoke-static {}, Lo/dD;->C_()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-static {}, Lo/pw;->e()Lo/zJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0}, Lo/zJ;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lo/zJ;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p0}, Lo/pw;->c(Lo/zJ;)V

    .line 63
    :cond_0
    sget-object v0, Lo/pw;->d:Ljava/util/List;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lo/pw;->d:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 67
    :cond_1
    :goto_0
    invoke-static {p0}, Lo/pw;->d(Lo/zJ;)V

    return-void
.end method

.method static declared-synchronized c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/zJ;",
            ">;"
        }
    .end annotation

    const-class v0, Lo/pw;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lo/pw;->d:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c(Lo/zJ;)V
    .locals 4

    .line 29
    invoke-static {}, Lo/pw;->e()Lo/zJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {p0}, Lo/zJ;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lo/zJ;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 31
    invoke-interface {p0}, Lo/zJ;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, " lastSessionId="

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-interface {v0}, Lo/zJ;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "PlaybackSessionHolderHelper"

    const-string v2, "resetLastActiveSession currentSessionId="

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, Lo/pw;->d(Lo/zJ;)V

    .line 34
    :cond_0
    sget-object v0, Lo/pw;->d:Ljava/util/List;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lo/pw;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 36
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/zJ;

    invoke-interface {v2}, Lo/zJ;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lo/zJ;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 41
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static declared-synchronized d(Lo/zJ;)V
    .locals 1

    const-class v0, Lo/pw;

    monitor-enter v0

    .line 95
    :try_start_0
    sput-object p0, Lo/pw;->c:Lo/zJ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static d()Z
    .locals 2

    .line 46
    invoke-static {}, Lo/pw;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static declared-synchronized e()Lo/zJ;
    .locals 2

    const-class v0, Lo/pw;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lo/pw;->c:Lo/zJ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
