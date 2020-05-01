.class public Lo/tg;
.super Landroid/content/BroadcastReceiver;
.source ""

# interfaces
.implements Lo/tK;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lo/cz;

.field private final c:Lcom/google/gson/Gson;

.field private d:Lo/tC;

.field private e$781c5a46:Ljava/lang/Object;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netflix/mediaclient/service/player/StreamProfileType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/app/ActivityManager;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/tK$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/app/ActivityManager$MemoryInfo;

.field private j:I

.field private final l:Z

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/cz;Z)V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/tg;->f:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lo/tg;->h:Ljava/util/List;

    .line 66
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v0, p0, Lo/tg;->i:Landroid/app/ActivityManager$MemoryInfo;

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lo/tg;->j:I

    .line 73
    iput-object p1, p0, Lo/tg;->a:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lo/tg;->b:Lo/cz;

    .line 75
    iput-boolean p3, p0, Lo/tg;->l:Z

    .line 76
    iget-object p2, p0, Lo/tg;->b:Lo/cz;

    sget-object p3, Lo/tb;->e:Lo/tb;

    invoke-interface {p2, p3}, Lo/cz;->a(Lo/sT;)V

    .line 77
    invoke-direct {p0, p1}, Lo/tg;->b(Landroid/content/Context;)V

    .line 78
    iget-object p2, p0, Lo/tg;->a:Landroid/content/Context;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p2, "activity"

    .line 79
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lo/tg;->g:Landroid/app/ActivityManager;

    .line 81
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    const/4 p2, 0x0

    const/16 p3, 0xa4

    const/4 v0, 0x4

    :try_start_0
    invoke-static {p2, p3, v0}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    const-string p3, "a"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/TypeAdapterFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, p2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lo/tg;->c:Lcom/google/gson/Gson;

    .line 82
    invoke-direct {p0}, Lo/tg;->m$3bf225fb()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lo/tg;->e$781c5a46:Ljava/lang/Object;

    .line 83
    iget-object p1, p0, Lo/tg;->b:Lo/cz;

    invoke-interface {p1}, Lo/cz;->d()I

    move-result p1

    iput p1, p0, Lo/tg;->n:I

    .line 87
    invoke-virtual {p0}, Lo/tg;->k()V

    return-void

    :catchall_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_0

    throw p2

    :cond_0
    throw p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 7

    .line 199
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 201
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 202
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-string v4, "AsePlatformContext"

    const-string v5, "has active network  %s ."

    .line 203
    invoke-static {v4, v5, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 205
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    .line 206
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 207
    invoke-static {v3}, Lo/tC;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    invoke-static {p1}, Lcom/netflix/mediaclient/service/net/NetworkType;->d(I)Lcom/netflix/mediaclient/service/net/NetworkType;

    move-result-object v6

    .line 209
    new-instance p1, Lo/tO;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lo/tO;-><init>(Ljava/lang/String;IZLjava/lang/String;Lcom/netflix/mediaclient/service/net/NetworkType;)V

    iput-object p1, p0, Lo/tg;->d:Lo/tC;

    goto :goto_1

    .line 210
    :cond_0
    invoke-static {v3}, Lo/tC;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 212
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->d(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 214
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    move v6, p1

    goto :goto_0

    :cond_1
    const/4 v6, -0x1

    .line 218
    :goto_0
    new-instance p1, Lo/tU;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lo/tU;-><init>(Ljava/lang/String;IZLjava/lang/String;I)V

    iput-object p1, p0, Lo/tg;->d:Lo/tC;

    goto :goto_1

    .line 221
    :cond_2
    new-instance p1, Lo/tC;

    invoke-direct {p1, v2, v3, v4, v5}, Lo/tC;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    iput-object p1, p0, Lo/tg;->d:Lo/tC;

    .line 223
    :cond_3
    :goto_1
    iget-object p1, p0, Lo/tg;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/tK$ActionBar;

    .line 224
    iget-object v1, p0, Lo/tg;->d:Lo/tC;

    invoke-interface {v0, v1}, Lo/tK$ActionBar;->d(Lo/tC;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private l()V
    .locals 6

    .line 272
    iget-object v0, p0, Lo/tg;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 273
    invoke-static {}, Lcom/netflix/mediaclient/service/player/StreamProfileType;->values()[Lcom/netflix/mediaclient/service/player/StreamProfileType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 274
    iget-object v4, p0, Lo/tg;->a:Landroid/content/Context;

    iget-object v5, p0, Lo/tg;->b:Lo/cz;

    invoke-interface {v5, v3}, Lo/cz;->a(Lcom/netflix/mediaclient/service/player/StreamProfileType;)Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;

    move-result-object v5

    invoke-static {v4, v5}, Lo/x;->e(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/BwCap;)I

    move-result v4

    if-lez v4, :cond_0

    .line 276
    iget-object v5, p0, Lo/tg;->f:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private m$3bf225fb()Ljava/lang/Object;
    .locals 10

    .line 96
    iget-object v0, p0, Lo/tg;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "ase_persistent_data"

    invoke-static {v0, v2, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "AsePlatformContext"

    const-string v6, "restore ASE persisted data %s ."

    .line 97
    invoke-static {v5, v6, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 98
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x4

    const/16 v7, 0xa8

    const/16 v8, 0x5718

    if-eqz v3, :cond_0

    .line 100
    :try_start_0
    iget-object v3, p0, Lo/tg;->c:Lcom/google/gson/Gson;

    invoke-static {v8, v7, v6}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    invoke-virtual {v3, v0, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, "has JsonSyntaxException %s ."

    .line 102
    invoke-static {v5, v0, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    :cond_0
    :try_start_1
    invoke-static {v8, v7, v6}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    throw v1

    :cond_1
    throw v0
.end method


# virtual methods
.method public a()Lo/tC;
    .locals 1

    .line 123
    iget-object v0, p0, Lo/tg;->d:Lo/tC;

    return-object v0
.end method

.method public a(Lo/tK$ActionBar;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lo/tg;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a$5221b314(ILo/vh;[Ljava/lang/Object;Z)I
    .locals 6

    .line 190
    invoke-virtual {p0}, Lo/tg;->j()I

    move-result v0

    const/4 v1, 0x5

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const/4 v3, 0x4

    aput-object p4, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v0, 0x3

    aput-object p4, v2, v0

    const/4 p4, 0x2

    aput-object p3, v2, p4

    const/4 p3, 0x1

    aput-object p2, v2, p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const/16 p1, 0x6b1

    invoke-static {p2, p1, v3}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string v4, "a"

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, p2

    const-class v5, Lo/vh;

    aput-object v5, v1, p3

    const/16 p3, 0x621

    const/16 v5, 0x7c

    invoke-static {p2, p3, v5}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Class;

    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    aput-object p2, v1, p4

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p2, v1, v0

    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object p2, v1, v3

    invoke-virtual {p1, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_0

    throw p2

    :cond_0
    throw p1
.end method

.method public b()I
    .locals 2

    .line 128
    iget v0, p0, Lo/tg;->j:I

    const v1, 0x1000400

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public b(Lcom/netflix/mediaclient/service/player/StreamProfileType;)I
    .locals 1

    .line 147
    iget-object v0, p0, Lo/tg;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/tg;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    :goto_0
    return p1
.end method

.method public b(Lcom/netflix/mediaclient/media/VideoResolutionRange;)V
    .locals 2

    .line 255
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxHeight()I

    move-result v0

    iget v1, p0, Lo/tg;->n:I

    if-eq v0, v1, :cond_0

    .line 256
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/VideoResolutionRange;->getMaxHeight()I

    move-result p1

    iput p1, p0, Lo/tg;->n:I

    .line 257
    iget-object p1, p0, Lo/tg;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/tK$ActionBar;

    .line 258
    iget v1, p0, Lo/tg;->n:I

    invoke-interface {v0, v1}, Lo/tK$ActionBar;->e(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 7

    .line 132
    iget-object v0, p0, Lo/tg;->g:Landroid/app/ActivityManager;

    iget-object v1, p0, Lo/tg;->i:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 133
    iget-object v0, p0, Lo/tg;->i:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-object v2, p0, Lo/tg;->i:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    sub-long/2addr v0, v2

    .line 134
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 136
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lo/tg;->j:I

    .line 137
    iget v0, p0, Lo/tg;->j:I

    shr-int/lit8 v0, v0, 0x15

    shl-int/lit8 v0, v0, 0x14

    iput v0, p0, Lo/tg;->j:I

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/service/player/StreamProfileType;Ljava/lang/String;)Lo/vh;
    .locals 1

    .line 118
    sget-object v0, Lo/tb;->e:Lo/tb;

    invoke-virtual {v0, p1, p2}, Lo/tb;->b(Lcom/netflix/mediaclient/service/player/StreamProfileType;Ljava/lang/String;)Lo/vh;

    move-result-object p1

    return-object p1
.end method

.method public d(Lo/vh;Z)Lo/vw;
    .locals 1

    .line 157
    invoke-static {p0}, Lo/tI;->c(Lo/tK;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 158
    invoke-virtual {p1}, Lo/vh;->bs()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_4

    .line 160
    invoke-virtual {p0}, Lo/tg;->h()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 161
    invoke-virtual {p0}, Lo/tg;->f()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 163
    invoke-virtual {p1}, Lo/vh;->bq()Lo/vw;

    move-result-object p1

    goto :goto_2

    .line 166
    :cond_2
    invoke-virtual {p1}, Lo/vh;->bt()Lo/vw;

    move-result-object p1

    goto :goto_2

    .line 170
    :cond_3
    invoke-virtual {p1}, Lo/vh;->br()Lo/vw;

    move-result-object p1

    goto :goto_2

    .line 174
    :cond_4
    invoke-virtual {p1}, Lo/vh;->bv()Lo/vw;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public d(Lo/tK$ActionBar;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lo/tg;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public d$3bf225fb()Ljava/lang/Object;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/tg;->e$781c5a46:Ljava/lang/Object;

    return-object v0
.end method

.method public e()V
    .locals 6

    .line 109
    iget-object v0, p0, Lo/tg;->e$781c5a46:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lo/tg;->c:Lcom/google/gson/Gson;

    iget-object v2, p0, Lo/tg;->e$781c5a46:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lo/tg;->a:Landroid/content/Context;

    const-string v3, "ase_persistent_data"

    invoke-static {v2, v3, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AsePlatformContext"

    const-string v3, "save ASE persisted data %s ."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 112
    invoke-static {v2, v3, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 113
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Z
    .locals 1

    .line 250
    iget-object v0, p0, Lo/tg;->a:Landroid/content/Context;

    invoke-static {v0}, Lo/x;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    .line 264
    iget v0, p0, Lo/tg;->n:I

    return v0
.end method

.method public h()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lo/tg;->a:Landroid/content/Context;

    invoke-static {v0}, Lo/x;->j(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    .line 194
    invoke-virtual {p0}, Lo/tg;->e()V

    .line 195
    iget-object v0, p0, Lo/tg;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public j()I
    .locals 2

    .line 142
    invoke-virtual {p0}, Lo/tg;->b()I

    move-result v0

    const/high16 v1, 0x280000

    add-int/2addr v0, v1

    const/high16 v1, 0x80000

    add-int/2addr v0, v1

    return v0
.end method

.method public k()V
    .locals 0

    .line 268
    invoke-direct {p0}, Lo/tg;->l()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lo/tg;->b(Landroid/content/Context;)V

    return-void
.end method
