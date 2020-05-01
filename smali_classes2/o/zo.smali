.class public Lo/zo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zl;


# static fields
.field private static b:Lo/zo;

.field private static final e:Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/zm;",
            "Lo/zk;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/zk;

.field private d:Lo/zm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/zo;->e:Ljava/lang/Object;

    .line 37
    new-instance v0, Lo/zo;

    invoke-direct {v0}, Lo/zo;-><init>()V

    sput-object v0, Lo/zo;->b:Lo/zo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/zo;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lo/zo;
    .locals 1

    .line 40
    sget-object v0, Lo/zo;->b:Lo/zo;

    return-object v0
.end method

.method public static b()V
    .locals 2

    .line 84
    sget-object v0, Lo/zo;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-static {}, Lo/zo;->c()V

    .line 86
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static c()V
    .locals 7

    .line 93
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/zm;->c(Landroid/content/Context;)Lo/zm;

    move-result-object v0

    .line 94
    sget-object v1, Lo/zo;->b:Lo/zo;

    iget-object v1, v1, Lo/zo;->d:Lo/zm;

    invoke-virtual {v0, v1}, Lo/zm;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "nf_networkaware"

    if-eqz v1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "no network switch. key %s"

    .line 95
    invoke-static {v4, v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 99
    :cond_0
    sget-object v1, Lo/zo;->b:Lo/zo;

    iget-object v5, v1, Lo/zo;->a:Ljava/util/Map;

    iget-object v6, v1, Lo/zo;->d:Lo/zm;

    iget-object v1, v1, Lo/zo;->c:Lo/zk;

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lo/zo;->b:Lo/zo;

    iget-object v1, v1, Lo/zo;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    sget-object v1, Lo/zo;->b:Lo/zo;

    iput-object v0, v1, Lo/zo;->d:Lo/zm;

    .line 103
    iget-object v2, v1, Lo/zo;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zk;

    iput-object v0, v1, Lo/zo;->c:Lo/zk;

    return-void

    .line 107
    :cond_1
    sget-object v1, Lo/zo;->b:Lo/zo;

    iput-object v0, v1, Lo/zo;->d:Lo/zm;

    .line 108
    new-instance v5, Lo/zk;

    invoke-direct {v5}, Lo/zk;-><init>()V

    iput-object v5, v1, Lo/zo;->c:Lo/zk;

    .line 109
    sget-object v1, Lo/zo;->b:Lo/zo;

    iget-object v5, v1, Lo/zo;->a:Ljava/util/Map;

    iget-object v1, v1, Lo/zo;->c:Lo/zk;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 110
    sget-object v5, Lo/zo;->b:Lo/zo;

    iget-object v5, v5, Lo/zo;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    aput-object v0, v1, v3

    const-string v0, "(total: %d) switching to new network, %s"

    invoke-static {v4, v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 6

    .line 65
    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    sget-object v0, Lo/zo;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lo/zo;->b:Lo/zo;

    iget-object v1, v1, Lo/zo;->c:Lo/zk;

    iget-object v1, v1, Lo/zk;->b:Ljava/lang/String;

    invoke-static {p0, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    sget-object p0, Lo/zo;->b:Lo/zo;

    iget-object p0, p0, Lo/zo;->c:Lo/zk;

    invoke-virtual {p0}, Lo/zk;->a()V

    .line 73
    monitor-exit v0

    return-void

    :cond_1
    const-string v1, "nf_networkaware"

    const-string v2, "changing public ip addr from %s to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 75
    sget-object v5, Lo/zo;->b:Lo/zo;

    iget-object v5, v5, Lo/zo;->c:Lo/zk;

    iget-object v5, v5, Lo/zk;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 76
    invoke-static {}, Lo/zo;->c()V

    .line 78
    sget-object v1, Lo/zo;->b:Lo/zo;

    iget-object v1, v1, Lo/zo;->c:Lo/zk;

    iput-object p0, v1, Lo/zk;->b:Ljava/lang/String;

    .line 79
    sget-object p0, Lo/zo;->b:Lo/zo;

    iget-object p0, p0, Lo/zo;->a:Ljava/util/Map;

    sget-object v1, Lo/zo;->b:Lo/zo;

    iget-object v1, v1, Lo/zo;->d:Lo/zm;

    sget-object v2, Lo/zo;->b:Lo/zo;

    iget-object v2, v2, Lo/zo;->c:Lo/zk;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static e()V
    .locals 2

    .line 115
    sget-object v0, Lo/zo;->b:Lo/zo;

    iget-object v0, v0, Lo/zo;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 116
    sget-object v0, Lo/zo;->b:Lo/zo;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/zo;->d:Lo/zm;

    .line 117
    iput-object v1, v0, Lo/zo;->c:Lo/zk;

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 2

    .line 44
    sget-object v0, Lo/zo;->b:Lo/zo;

    invoke-static {p0}, Lo/zm;->c(Landroid/content/Context;)Lo/zm;

    move-result-object p0

    iput-object p0, v0, Lo/zo;->d:Lo/zm;

    .line 45
    sget-object p0, Lo/zo;->b:Lo/zo;

    new-instance v0, Lo/zk;

    invoke-direct {v0}, Lo/zk;-><init>()V

    iput-object v0, p0, Lo/zo;->c:Lo/zk;

    .line 46
    sget-object p0, Lo/zo;->b:Lo/zo;

    iget-object v0, p0, Lo/zo;->a:Ljava/util/Map;

    iget-object v1, p0, Lo/zo;->d:Lo/zm;

    iget-object p0, p0, Lo/zo;->c:Lo/zk;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 2

    .line 55
    sget-object v0, Lo/zo;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lo/zo;->b:Lo/zo;

    iget-object v1, v1, Lo/zo;->c:Lo/zk;

    if-eqz v1, :cond_0

    sget-object v1, Lo/zo;->b:Lo/zo;

    iget-object v1, v1, Lo/zo;->c:Lo/zk;

    invoke-virtual {v1}, Lo/zk;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
