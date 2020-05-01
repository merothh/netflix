.class public final Lo/tb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/sT;


# static fields
.field private static a:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lo/sX;",
            "Lo/vh;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride; = null

.field private static final c:Lcom/google/gson/Gson;

# The value of this static final field might be set in the static constructor
.field private static final d:Ljava/lang/String; = "AseConfigMergeHelper"

.field public static final e:Lo/tb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lo/tb;

    invoke-direct {v0}, Lo/tb;-><init>()V

    sput-object v0, Lo/tb;->e:Lo/tb;

    const-string v0, "AseConfigMergeHelper"

    .line 15
    sput-object v0, Lo/tb;->d:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/tb;->a:Ljava/util/HashMap;

    .line 19
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0xa4

    const/4 v3, 0x4

    :try_start_0
    invoke-static {v1, v2, v3}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const-string v2, "a"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/TypeAdapterFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v1, "GsonBuilder().registerTy\u2026actory.create()).create()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lo/tb;->c:Lcom/google/gson/Gson;

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    throw v1

    :cond_0
    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/service/player/StreamProfileType;Ljava/lang/String;)Lo/vh;
    .locals 7

    const-string v0, "streamProfile"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiLabel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lo/sX;

    invoke-direct {v0, p1, p2}, Lo/sX;-><init>(Lcom/netflix/mediaclient/service/player/StreamProfileType;Ljava/lang/String;)V

    .line 31
    sget-object v1, Lo/tb;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v2, Lo/tb;->a:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 33
    sget-object v2, Lo/tb;->d:Ljava/lang/String;

    const-string v3, "generate streaming config for flavor %s, uiLabel %s ."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/StreamProfileType;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 34
    invoke-static {p2}, Lo/ti;->c(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 35
    invoke-static {p1}, Lo/ti;->d(Lcom/netflix/mediaclient/service/player/StreamProfileType;)Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 36
    sget-object v4, Lo/tb;->a:Ljava/util/HashMap;

    sget-object v5, Lo/tb;->c:Lcom/google/gson/Gson;

    sget-object v6, Lo/tb;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;

    if-eqz v6, :cond_0

    invoke-virtual {v6, v2, v3, p2, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;->getOverride(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/StreamProfileType;)Lcom/google/gson/JsonObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 37
    const-class p2, Lo/vh;

    .line 36
    invoke-virtual {v5, p1, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_1
    sget-object p1, Lo/tb;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/vh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v1

    throw p1
.end method

.method public c(Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;)V
    .locals 1

    .line 22
    sget-object v0, Lo/tb;->a:Ljava/util/HashMap;

    monitor-enter v0

    .line 23
    :try_start_0
    sput-object p1, Lo/tb;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;

    .line 24
    sget-object p1, Lo/tb;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 25
    sget-object p1, Lo/akj;->a:Lo/akj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
