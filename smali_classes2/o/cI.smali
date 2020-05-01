.class public Lo/cI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/net/URL;

.field private f:Lo/nS;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lo/cz;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lo/nS;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lo/cI;->a:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lo/cI;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 137
    iput-object p3, p0, Lo/cI;->i:Lo/cz;

    .line 138
    iput-object p4, p0, Lo/cI;->f:Lo/nS;

    .line 139
    invoke-direct {p0}, Lo/cI;->g()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/cI;->c:Ljava/lang/String;

    .line 140
    invoke-static {}, Lo/aek;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/cI;->d:Ljava/lang/String;

    .line 141
    invoke-static {}, Lo/dj;->k()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/cI;->h:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .line 404
    invoke-direct {p0}, Lo/cI;->f()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 406
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 413
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_0
    iget-object p1, p0, Lo/cI;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
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

    .line 421
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to create URL"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private declared-synchronized c()Ljava/util/Map;
    .locals 6
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

    .line 151
    :try_start_0
    new-instance v0, Lo/adY;

    invoke-direct {v0}, Lo/adY;-><init>()V

    const-string v1, "responseFormat"

    const-string v2, "json"

    .line 153
    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "progressive"

    const-string v2, "false"

    .line 154
    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pathFormat"

    .line 156
    sget-object v2, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->c:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lo/cI;->i:Lo/cz;

    invoke-interface {v1}, Lo/cz;->N()Lo/cF;

    move-result-object v1

    const-string v2, "appType"

    .line 159
    invoke-virtual {v1}, Lo/cF;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dbg"

    .line 161
    invoke-static {}, Lo/aek;->f()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-static {}, Lo/aek;->a()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->b:Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    iget-object v3, p0, Lo/cI;->a:Landroid/content/Context;

    invoke-static {v3}, Lo/cI;->e(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    move-result-object v3

    if-eq v2, v3, :cond_1

    const-string v2, "revision"

    const-string v3, "latest"

    .line 164
    invoke-interface {v0, v2, v3}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_1
    invoke-static {}, Lo/adU;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "hd"

    goto :goto_1

    :cond_2
    const-string v2, "sd"

    :goto_1
    const-string v3, "qlty"

    .line 168
    invoke-interface {v0, v3, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ffbc"

    .line 169
    iget-object v3, p0, Lo/cI;->a:Landroid/content/Context;

    invoke-static {v3}, Lo/aek;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "osBoard"

    .line 171
    invoke-virtual {v1}, Lo/cF;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "osDevice"

    .line 172
    invoke-virtual {v1}, Lo/cF;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "osDisplay"

    .line 173
    invoke-virtual {v1}, Lo/cF;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appVer"

    .line 174
    invoke-virtual {v1}, Lo/cF;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appVersion"

    .line 175
    invoke-virtual {v1}, Lo/cF;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mId"

    .line 176
    invoke-virtual {v1}, Lo/cF;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "api"

    .line 177
    invoke-virtual {v1}, Lo/cF;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mnf"

    .line 178
    invoke-virtual {v1}, Lo/cF;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "store"

    .line 179
    iget-object v2, p0, Lo/cI;->a:Landroid/content/Context;

    invoke-static {v2}, Lo/adg;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "memLevel"

    .line 180
    invoke-static {}, Lo/aek;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lackLocale"

    .line 181
    sget-object v2, Lo/ys;->a:Lo/ys;

    invoke-virtual {v2}, Lo/ys;->d()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceLocale"

    .line 182
    sget-object v2, Lo/ys;->a:Lo/ys;

    invoke-virtual {v2}, Lo/ys;->e()Lo/afz;

    move-result-object v2

    invoke-virtual {v2}, Lo/afz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v1, p0, Lo/cI;->i:Lo/cz;

    invoke-interface {v1}, Lo/cz;->Z()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chipset"

    .line 184
    invoke-interface {v0, v2, v1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "chipsetHardware"

    .line 185
    iget-object v3, p0, Lo/cI;->i:Lo/cz;

    invoke-interface {v3}, Lo/cz;->aa()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-direct {p0, v0, v1}, Lo/cI;->e(Lo/aec;Ljava/lang/String;)V

    const-string v1, "netflixClientPlatform"

    const-string v2, "androidNative"

    .line 187
    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "landingOrigin"

    .line 188
    iget-object v2, p0, Lo/cI;->a:Landroid/content/Context;

    invoke-static {v2}, Lo/cH;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Lo/cI;->i:Lo/cz;

    invoke-interface {v1}, Lo/cz;->ad()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "roBspVer"

    .line 190
    iget-object v2, p0, Lo/cI;->i:Lo/cz;

    invoke-interface {v2}, Lo/cz;->ad()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v1, "devmod"

    .line 192
    iget-object v2, p0, Lo/cI;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {}, Lo/aek;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "isPartnerBuild"

    .line 194
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_4
    iget-object v1, p0, Lo/cI;->i:Lo/cz;

    invoke-interface {v1}, Lo/cz;->ab()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "channelId"

    .line 202
    invoke-interface {v0, v2, v1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "isNetflixPreloaded"

    .line 204
    iget-object v2, p0, Lo/cI;->i:Lo/cz;

    invoke-interface {v2}, Lo/cz;->Y()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "installType"

    .line 205
    iget-object v2, p0, Lo/cI;->i:Lo/cz;

    invoke-interface {v2}, Lo/cz;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isPlayBillingEnabled"

    .line 206
    iget-object v2, p0, Lo/cI;->i:Lo/cz;

    invoke-interface {v2}, Lo/cz;->M()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-direct {p0, v0}, Lo/cI;->e(Ljava/util/Map;)V

    .line 209
    invoke-direct {p0, v0}, Lo/cI;->a(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    const-string v0, "/nq/androidui/samurai/~7.54.0/api"

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.int.cloud.netflix.com"

    if-eq p0, v0, :cond_1

    const-string v0, "android.test.cloud.netflix.com"

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static e(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/EdgeStack;
    .locals 0

    .line 510
    invoke-static {p0}, Lo/cM;->a(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    move-result-object p0

    return-object p0
.end method

.method private e(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method private e(Lo/aec;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/aec<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 215
    iget-boolean v0, p0, Lo/cI;->j:Z

    const-string v1, "teeInfo"

    if-eqz v0, :cond_1

    .line 216
    iget-object p2, p0, Lo/cI;->g:Ljava/lang/String;

    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 217
    iget-object p2, p0, Lo/cI;->g:Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lo/cI;->j:Z

    .line 223
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "mt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 226
    :cond_2
    iget-object p2, p0, Lo/cI;->i:Lo/cz;

    invoke-interface {p2}, Lo/cz;->ae()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/cI;->g:Ljava/lang/String;

    .line 227
    iget-object p2, p0, Lo/cI;->g:Ljava/lang/String;

    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 228
    iget-object p2, p0, Lo/cI;->g:Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method private f()Ljava/lang/StringBuilder;
    .locals 2

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    invoke-direct {p0}, Lo/cI;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "https://"

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "http://"

    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    const-string v0, "android.prod.cloud.netflix.com"

    return-object v0
.end method

.method private h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    const-string v0, "android-appboot.netflix.com"

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 2

    .line 334
    iget-object v0, p0, Lo/cI;->i:Lo/cz;

    invoke-interface {v0}, Lo/cz;->R()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 338
    :cond_0
    invoke-static {}, Lo/adk;->c()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    const-string v0, "webp"

    goto :goto_0

    :cond_1
    const-string v0, "jpg"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .line 395
    iget-object v0, p0, Lo/cI;->c:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lo/cI;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 433
    invoke-direct {p0}, Lo/cI;->f()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lo/cI;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 438
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "/android/samurai/config"

    .line 441
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized b()Ljava/util/Map;
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

    .line 146
    :try_start_0
    invoke-direct {p0}, Lo/cI;->c()Ljava/util/Map;

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

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 449
    invoke-direct {p0}, Lo/cI;->f()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lo/cI;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 453
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized d(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;)Ljava/util/Map;
    .locals 6
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

    monitor-enter p0

    .line 236
    :try_start_0
    new-instance v0, Lo/adY;

    invoke-direct {v0}, Lo/adY;-><init>()V

    const-string v1, "responseFormat"

    const-string v2, "json"

    .line 238
    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "progressive"

    const-string v2, "false"

    .line 239
    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ffbc"

    .line 240
    iget-object v2, p0, Lo/cI;->a:Landroid/content/Context;

    invoke-static {v2}, Lo/aek;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appVersion"

    .line 241
    iget-object v2, p0, Lo/cI;->i:Lo/cz;

    invoke-interface {v2}, Lo/cz;->N()Lo/cF;

    move-result-object v2

    invoke-virtual {v2}, Lo/cF;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "netflixClientPlatform"

    const-string v2, "androidNative"

    .line 242
    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "landingOrigin"

    .line 243
    iget-object v2, p0, Lo/cI;->a:Landroid/content/Context;

    invoke-static {v2}, Lo/cH;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "installType"

    .line 245
    iget-object v2, p0, Lo/cI;->i:Lo/cz;

    invoke-interface {v2}, Lo/cz;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v1, p0, Lo/cI;->i:Lo/cz;

    invoke-interface {v1}, Lo/cz;->ab()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "channelId"

    .line 248
    invoke-interface {v0, v2, v1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->b:Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    iget-object v2, p0, Lo/cI;->a:Landroid/content/Context;

    invoke-static {v2}, Lo/cI;->e(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    move-result-object v2

    if-eq v1, v2, :cond_1

    const-string v1, "revision"

    const-string v2, "latest"

    .line 253
    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_1
    iget-object v1, p0, Lo/cI;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/cI;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "languages"

    .line 258
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v2

    iget-object v3, p0, Lo/cI;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v2, v3}, Lo/bO;->e(Lcom/netflix/mediaclient/service/user/UserAgent;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_2
    iget-object v1, p0, Lo/cI;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/cI;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/cI;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v1

    invoke-interface {v1}, Lo/BC;->isKidsProfile()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "prfType"

    .line 263
    iget-object v4, p0, Lo/cI;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v4}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v4

    invoke-interface {v4}, Lo/BC;->getProfileType()Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 266
    :goto_0
    iget-object v4, p0, Lo/cI;->f:Lo/nS;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lo/cI;->f:Lo/nS;

    invoke-interface {v4}, Lo/nS;->f()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "dlEnabled"

    .line 267
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p1, :cond_5

    const-string v4, "pathFormat"

    .line 271
    iget-object p1, p1, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->b:Ljava/lang/String;

    invoke-interface {v0, v4, p1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const-string p1, "pathFormat"

    .line 276
    sget-object v4, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->a:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;

    iget-object v4, v4, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry$ResponsePathFormat;->b:Ljava/lang/String;

    invoke-interface {v0, p1, v4}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string p1, "res"

    .line 279
    iget-object v4, p0, Lo/cI;->i:Lo/cz;

    invoke-interface {v4}, Lo/cz;->Q()Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    move-result-object v4

    iget-object v4, v4, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->d:Ljava/lang/String;

    invoke-interface {v0, p1, v4}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "imgpref"

    .line 280
    invoke-direct {p0}, Lo/cI;->j()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "isPlayBillingEnabled"

    .line 281
    iget-object v4, p0, Lo/cI;->i:Lo/cz;

    invoke-interface {v4}, Lo/cz;->M()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-static {}, Lo/go;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-static {p1}, Lo/aev;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "disabledInteractiveTitleList"

    .line 285
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v4, p1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_7
    iget-object p1, p0, Lo/cI;->i:Lo/cz;

    invoke-interface {p1}, Lo/cz;->au()Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "accurate_start_point_disabled"

    .line 288
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_8
    invoke-static {}, Lo/gr;->d()Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "interactive_data"

    .line 293
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_9
    invoke-static {}, Lo/ady;->f()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "liteCfg"

    const-string v2, "true"

    .line 297
    invoke-interface {v0, p1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_a
    invoke-static {}, Lo/ady;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "qddp"

    const-string v2, "true"

    .line 301
    invoke-interface {v0, p1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_b
    invoke-static {}, Lo/eo;->h()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {}, Lo/eB;->i()Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    const-string p1, "soal"

    const-string v2, "true"

    .line 305
    invoke-interface {v0, p1, v2}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    if-nez v1, :cond_e

    .line 308
    invoke-static {}, Lo/eU;->j()Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "supportsTop10"

    const-string v1, "true"

    .line 309
    invoke-interface {v0, p1, v1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_e
    invoke-static {}, Lo/eG;->i()Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "dpsmp"

    const-string v1, "true"

    .line 313
    invoke-interface {v0, p1, v1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_f
    invoke-static {}, Lo/ep;->i()Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "lll"

    const-string v1, "true"

    .line 317
    invoke-interface {v0, p1, v1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_10
    invoke-static {}, Lo/ady;->l()Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "supportsPCtl"

    const-string v1, "true"

    .line 321
    invoke-interface {v0, p1, v1}, Lo/aec;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_11
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object p1

    invoke-interface {p1}, Lo/bO;->d()Lo/cC;

    move-result-object p1

    iget-object v1, p0, Lo/cI;->a:Landroid/content/Context;

    invoke-interface {p1, v1, v0}, Lo/cC;->b(Landroid/content/Context;Lo/aec;)V

    .line 327
    invoke-direct {p0, v0}, Lo/cI;->e(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lo/cI;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    .line 369
    iget-object v0, p0, Lo/cI;->e:Ljava/net/URL;

    if-eqz v0, :cond_0

    return-object v0

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    invoke-virtual {p0}, Lo/cI;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "https://"

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "http://"

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :goto_0
    invoke-direct {p0}, Lo/cI;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/appboot/"

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/cI;->e:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    iget-object p1, p0, Lo/cI;->e:Ljava/net/URL;

    return-object p1

    :catch_0
    move-exception p1

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to create URL"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
