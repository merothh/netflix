.class public Lo/qb;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

.field d:Lcom/netflix/mediaclient/service/user/UserAgent;

.field e:Ljava/lang/String;

.field j:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/qb;->d:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 10

    const-string v0, "nf_msl_volley_FetchLicenseRequest"

    .line 58
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "version"

    const/4 v4, 0x2

    .line 61
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "url"

    .line 62
    iget-object v4, p0, Lo/qb;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "clientTime"

    .line 65
    iget-wide v5, p0, Lo/qb;->j:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    iget-wide v5, p0, Lo/qb;->j:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "challengeBase64"

    .line 66
    iget-object v5, p0, Lo/qb;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    sget-object v4, Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;->e:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    iget-object v5, p0, Lo/qb;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    if-ne v4, v5, :cond_1

    const-string v4, "xid"

    .line 68
    iget-object v5, p0, Lo/qb;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v4, "params"

    .line 71
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    iget-object v3, p0, Lo/qb;->d:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    const-string v5, "languages"

    if-eqz v3, :cond_2

    .line 74
    :try_start_1
    iget-object v3, p0, Lo/qb;->d:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v3

    invoke-interface {v3}, Lo/BC;->getLanguages()[Ljava/lang/String;

    move-result-object v3

    .line 75
    new-instance v6, Lorg/json/JSONArray;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 77
    :cond_2
    new-instance v3, Lorg/json/JSONArray;

    new-array v6, v4, [Ljava/lang/String;

    iget-object v7, p0, Lo/qb;->d:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v7}, Lcom/netflix/mediaclient/service/user/UserAgent;->l()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v3, "licenseRequestParams, %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    .line 79
    invoke-static {v0, v3, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "error creating manifest params"

    .line 82
    invoke-static {v0, v3, v4, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 84
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;)Lo/qb;
    .locals 0

    .line 43
    iput-object p1, p0, Lo/qb;->c:Lcom/netflix/mediaclient/service/player/drm/LicenseRequestFlavor;

    return-object p0
.end method

.method b(Ljava/lang/String;)Lo/qb;
    .locals 0

    .line 33
    iput-object p1, p0, Lo/qb;->e:Ljava/lang/String;

    return-object p0
.end method

.method b(Lo/rf;)Lo/qb;
    .locals 2

    .line 88
    invoke-interface {p1}, Lo/rf;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/qb;->d(Ljava/lang/String;)Lo/qb;

    move-result-object v0

    .line 89
    invoke-interface {p1}, Lo/rf;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/qb;->b(Ljava/lang/String;)Lo/qb;

    move-result-object v0

    .line 90
    invoke-interface {p1}, Lo/rf;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/qb;->e(Ljava/lang/String;)Lo/qb;

    move-result-object p1

    return-object p1
.end method

.method d(Ljava/lang/String;)Lo/qb;
    .locals 0

    .line 38
    iput-object p1, p0, Lo/qb;->b:Ljava/lang/String;

    return-object p0
.end method

.method e(J)Lo/qb;
    .locals 0

    .line 53
    iput-wide p1, p0, Lo/qb;->j:J

    return-object p0
.end method

.method e(Ljava/lang/String;)Lo/qb;
    .locals 0

    .line 48
    iput-object p1, p0, Lo/qb;->a:Ljava/lang/String;

    return-object p0
.end method
