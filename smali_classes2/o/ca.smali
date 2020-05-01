.class public Lo/ca;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private final c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lo/cz;

.field private i:Lo/cc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cd;Lo/nS;Lo/cG;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lo/ca;->c:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lo/ca;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 76
    iput-object p3, p0, Lo/ca;->i:Lo/cc;

    .line 77
    iput-object p5, p0, Lo/ca;->e:Lo/cz;

    .line 78
    invoke-direct {p0}, Lo/ca;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ca;->d:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lo/ca;->g()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ca;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .line 215
    invoke-direct {p0}, Lo/ca;->j()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 224
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_0
    iget-object p1, p0, Lo/ca;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 232
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to create URL"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private b(Lo/aec;)Lo/aec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/aec<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lo/aec<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method private declared-synchronized d()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_0
    new-instance v0, Lo/adY;

    invoke-direct {v0}, Lo/adY;-><init>()V

    const-string v1, "responseFormat"

    const-string v2, "json"

    .line 91
    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pathFormat"

    .line 93
    sget-object v2, Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry$ResponsePathFormat;->a:Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry$ResponsePathFormat;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry$ResponsePathFormat;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lo/ca;->i:Lo/cc;

    invoke-interface {v1}, Lo/cc;->e()Lo/cF;

    move-result-object v1

    const-string v2, "devmod"

    .line 96
    invoke-virtual {v1}, Lo/cF;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appVer"

    .line 97
    invoke-virtual {v1}, Lo/cF;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appVersion"

    .line 98
    invoke-virtual {v1}, Lo/cF;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appType"

    .line 99
    invoke-virtual {v1}, Lo/cF;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceLocale"

    .line 100
    sget-object v2, Lo/ys;->a:Lo/ys;

    invoke-virtual {v2}, Lo/ys;->e()Lo/afz;

    move-result-object v2

    invoke-virtual {v2}, Lo/afz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "installType"

    .line 101
    iget-object v2, p0, Lo/ca;->e:Lo/cz;

    invoke-interface {v2}, Lo/cz;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isNetflixPreloaded"

    .line 102
    iget-object v2, p0, Lo/ca;->e:Lo/cz;

    invoke-interface {v2}, Lo/cz;->Y()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lo/ca;->e:Lo/cz;

    invoke-interface {v1}, Lo/cz;->ab()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "channelId"

    .line 105
    invoke-interface {v0, v2, v1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "netflixClientPlatform"

    const-string v2, "androidNative"

    .line 107
    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "landingOrigin"

    .line 108
    iget-object v2, p0, Lo/ca;->c:Landroid/content/Context;

    invoke-static {v2}, Lo/cH;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "inApp"

    const-string v2, "true"

    .line 109
    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nglVersion"

    const-string v2, "NGL_LATEST_RELEASE"

    .line 110
    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lo/ca;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/ca;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "availableLocales"

    .line 113
    iget-object v2, p0, Lo/ca;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_1
    invoke-direct {p0, v0}, Lo/ca;->b(Lo/aec;)Lo/aec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    const-string v0, "/aui/pathEvaluator/mobile/latest"

    return-object v0
.end method

.method private h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    const-string v0, "android.prod.cloud.netflix.com"

    return-object v0
.end method

.method private j()Ljava/lang/StringBuilder;
    .locals 2

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    invoke-direct {p0}, Lo/ca;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "https://"

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "http://"

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .line 210
    iget-object v0, p0, Lo/ca;->d:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lo/ca;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry$ResponsePathFormat;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry$ResponsePathFormat;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 124
    :try_start_0
    new-instance p1, Lo/adY;

    invoke-direct {p1}, Lo/adY;-><init>()V

    const-string v0, "responseFormat"

    const-string v1, "json"

    .line 126
    invoke-interface {p1, v0, v1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lo/ca;->i:Lo/cc;

    invoke-interface {v0}, Lo/cc;->e()Lo/cF;

    move-result-object v0

    const-string v1, "devmod"

    .line 129
    invoke-virtual {v0}, Lo/cF;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appVer"

    .line 130
    invoke-virtual {v0}, Lo/cF;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appVersion"

    .line 131
    invoke-virtual {v0}, Lo/cF;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appType"

    .line 132
    invoke-virtual {v0}, Lo/cF;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "installType"

    .line 133
    iget-object v1, p0, Lo/ca;->e:Lo/cz;

    invoke-interface {v1}, Lo/cz;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isNetflixPreloaded"

    .line 135
    iget-object v1, p0, Lo/ca;->e:Lo/cz;

    invoke-interface {v1}, Lo/cz;->Y()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lo/ca;->e:Lo/cz;

    invoke-interface {v0}, Lo/cz;->ab()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "channelId"

    .line 138
    invoke-interface {p1, v1, v0}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "netflixClientPlatform"

    const-string v1, "androidNative"

    .line 140
    invoke-interface {p1, v0, v1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nglVersion"

    const-string v1, "NGL_LATEST_RELEASE"

    .line 141
    invoke-interface {p1, v0, v1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "landingOrigin"

    .line 142
    iget-object v1, p0, Lo/ca;->c:Landroid/content/Context;

    invoke-static {v1}, Lo/cH;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "inApp"

    const-string v1, "true"

    .line 143
    invoke-interface {p1, v0, v1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lo/ca;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ca;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "languages"

    .line 147
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v1

    iget-object v2, p0, Lo/ca;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v1, v2}, Lo/bO;->e(Lcom/netflix/mediaclient/service/user/UserAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "availableLocales"

    .line 148
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v1

    iget-object v2, p0, Lo/ca;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v1, v2}, Lo/bO;->e(Lcom/netflix/mediaclient/service/user/UserAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_1
    invoke-direct {p0, p1}, Lo/ca;->b(Lo/aec;)Lo/aec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_0
    invoke-direct {p0}, Lo/ca;->d()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lo/ca;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/net/URL;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
