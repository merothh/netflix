.class public final enum Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;

.field private static final synthetic g:[Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;


# instance fields
.field private a:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;

.field private final c:Lo/zj;

.field private final d:Landroid/net/ConnectivityManager;

.field private e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

.field private j:Landroid/net/NetworkInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->b:Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;

    .line 24
    sget-object v2, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->b:Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->g:[Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    new-instance p1, Lo/zj;

    invoke-direct {p1}, Lo/zj;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->c:Lo/zj;

    .line 55
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string p2, "connectivity"

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->d:Landroid/net/ConnectivityManager;

    const-string p2, "ftl_config"

    const/4 v0, 0x0

    .line 59
    invoke-static {p1, p2, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    :try_start_0
    const-class p2, Lcom/google/gson/Gson;

    invoke-static {p2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/Gson;

    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "nf_ftl"

    const-string v1, "unable to deserialize FTL config"

    .line 63
    invoke-static {v0, p1, v1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 66
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->a()Landroid/net/NetworkInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->j:Landroid/net/NetworkInfo;

    .line 68
    sget-object p1, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->e:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->a(Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;)V

    return-void
.end method

.method private a()Landroid/net/NetworkInfo;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->d:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private declared-synchronized a(Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;)V
    .locals 4

    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->a:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->a:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->d()V

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "nf_ftl"

    const-string v1, "starting FTL session (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 142
    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 143
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->c:Lo/zj;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-direct {v0, v1, p1, v2}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;-><init>(Lo/zj;Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->a:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;

    .line 145
    iget-object p1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->c:Lo/zj;

    new-instance v0, Lo/zg;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->a:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;

    invoke-direct {v0, v1}, Lo/zg;-><init>(Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;)V

    invoke-virtual {p1, v0}, Lo/zj;->a(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->a:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static d(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    if-eq p0, p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method private e()Z
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    invoke-static {}, Lo/gl;->a()Z

    move-result v3

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;
    .locals 1

    .line 24
    const-class v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;
    .locals 1

    .line 24
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->g:[Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 98
    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->a()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->j:Landroid/net/NetworkInfo;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->d(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->j:Landroid/net/NetworkInfo;

    .line 101
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->a:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->a(Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lo/zS;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->c:Lo/zj;

    invoke-virtual {v0, p1}, Lo/zj;->b(Lo/zS;)V

    return-void
.end method

.method public declared-synchronized c(Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;)V
    .locals 3

    monitor-enter p0

    .line 84
    :try_start_0
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "ftl_config"

    invoke-static {v1, v2, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/FtlConfig;

    .line 90
    sget-object p1, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;->c:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->a(Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession$Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->a:Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;

    return-object v0
.end method
