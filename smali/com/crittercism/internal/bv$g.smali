.class Lcom/crittercism/internal/bv$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/bu;


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/bv$g;->a:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/crittercism/internal/bv$g;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/bv$g;->a:Lorg/json/JSONObject;

    return-void
.end method

.method private static a(I)Lorg/json/JSONObject;
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/crittercism/internal/bv;->c()Lcom/crittercism/internal/bd;

    move-result-object v0

    iget-boolean v0, v0, Lcom/crittercism/internal/bd;->c:Z

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/crittercism/internal/bv;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz v4, :cond_5

    :try_start_0
    const-string/jumbo v5, "available"

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v5, "connected"

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "connecting"

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_3
    const-string/jumbo v5, "failover"

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-nez p0, :cond_4

    :goto_1
    if-eqz v2, :cond_0

    const-string/jumbo v2, "roaming"

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    :try_start_1
    const-string/jumbo v4, "available"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v4, "connected"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v4, "connecting"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v4, "failover"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-nez p0, :cond_6

    :goto_2
    if-eqz v2, :cond_0

    const-string/jumbo v2, "roaming"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_6
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/crittercism/internal/bv$g;->c()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/bv$g;->a:Lorg/json/JSONObject;

    return-object v0
.end method
