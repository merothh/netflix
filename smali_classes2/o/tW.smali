.class public Lo/tW;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private final b:J

.field private d:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "nfxpref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lo/tW;->a:Landroid/content/SharedPreferences;

    .line 27
    iget-object v0, p0, Lo/tW;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lo/tW;->d:Landroid/content/SharedPreferences$Editor;

    .line 28
    iput-wide p1, p0, Lo/tW;->b:J

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    const-string v0, "media_cache_evicted_bytes"

    return-object v0
.end method

.method private declared-synchronized d()J
    .locals 6

    monitor-enter p0

    .line 47
    :try_start_0
    invoke-direct {p0}, Lo/tW;->c()Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lo/tW;->a:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 49
    iget-object v1, p0, Lo/tW;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 50
    iget-object v0, p0, Lo/tW;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-wide v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 5

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "mediaCacheSize"

    .line 34
    iget-wide v2, p0, Lo/tW;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mediaCacheEvictedBytes"

    .line 35
    invoke-direct {p0}, Lo/tW;->d()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "nf_cache"

    const-string v4, "unable to convert to json"

    .line 37
    invoke-static {v3, v1, v4, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-object v0
.end method

.method declared-synchronized d(J)V
    .locals 4

    monitor-enter p0

    .line 55
    :try_start_0
    invoke-direct {p0}, Lo/tW;->c()Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lo/tW;->a:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    add-long/2addr v1, p1

    .line 57
    iget-object p1, p0, Lo/tW;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 58
    iget-object p1, p0, Lo/tW;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
