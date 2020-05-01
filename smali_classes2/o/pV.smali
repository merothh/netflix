.class public Lo/pV;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/netflix/mediaclient/service/user/UserAgent;

.field b:J

.field c:Z

.field d:Lo/sx;

.field e:Ljava/lang/String;

.field private final j:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lo/pV;->a:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 26
    iput-boolean p2, p0, Lo/pV;->j:Z

    return-void
.end method


# virtual methods
.method a(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;)Lo/pV;
    .locals 1

    .line 77
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;->c:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;->d()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/pV;->c:Z

    return-object p0
.end method

.method a(Ljava/lang/String;)Lo/pV;
    .locals 0

    .line 35
    iput-object p1, p0, Lo/pV;->e:Ljava/lang/String;

    return-object p0
.end method

.method a(Lo/sx;Ljava/lang/String;)Lo/pV;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lo/pV;->e(Lo/sx;)Lo/pV;

    move-result-object p1

    .line 73
    invoke-virtual {p1, p2}, Lo/pV;->a(Ljava/lang/String;)Lo/pV;

    move-result-object p1

    return-object p1
.end method

.method b(J)Lo/pV;
    .locals 0

    .line 40
    iput-wide p1, p0, Lo/pV;->b:J

    return-object p0
.end method

.method final e()Ljava/lang/String;
    .locals 8

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    iget-object v1, p0, Lo/pV;->d:Lo/sx;

    if-nez v1, :cond_0

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "version"

    const/4 v2, 0x2

    .line 51
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "method"

    .line 52
    iget-object v2, p0, Lo/pV;->d:Lo/sx;

    invoke-virtual {v2}, Lo/sx;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "url"

    .line 53
    iget-object v2, p0, Lo/pV;->d:Lo/sx;

    invoke-virtual {v2}, Lo/sx;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    iget-object v1, p0, Lo/pV;->a:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v1

    invoke-interface {v1}, Lo/BC;->getLanguages()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "languages"

    .line 55
    new-instance v3, Lorg/json/JSONArray;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 58
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "clientTime"

    .line 59
    iget-wide v3, p0, Lo/pV;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    iget-wide v3, p0, Lo/pV;->b:J

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "forceDeviceActivate"

    .line 60
    iget-boolean v3, p0, Lo/pV;->c:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "challengeBase64"

    .line 61
    iget-object v3, p0, Lo/pV;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "enableSecureDelete"

    .line 62
    iget-boolean v3, p0, Lo/pV;->j:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "params"

    .line 63
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "nf_msl_volley_FetchLicenseRequest"

    const-string v4, "error creating manifest params"

    .line 66
    invoke-static {v3, v1, v4, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 68
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e(Lo/sx;)Lo/pV;
    .locals 0

    .line 30
    iput-object p1, p0, Lo/pV;->d:Lo/sx;

    return-object p0
.end method
