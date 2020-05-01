.class final Lo/cZ;
.super Lo/db;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;Lo/dl;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lo/db;-><init>(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;Lo/dl;)V

    const-string p1, "nf_net"

    const-string p2, "Google platform Widevine provisioning V3 request"

    .line 28
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private c([B)Lorg/chromium/net/UrlRequest;
    .locals 4

    .line 53
    invoke-virtual {p0}, Lo/cZ;->d()V

    .line 54
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 55
    new-instance v1, Lo/db$TaskDescription;

    invoke-direct {v1, p0}, Lo/db$TaskDescription;-><init>(Lo/db;)V

    .line 58
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v1, Lo/db$TaskDescription;->a:J

    .line 60
    iget-object v2, p0, Lo/cZ;->d:Lorg/chromium/net/CronetEngine;

    iget-object v3, p0, Lo/cZ;->b:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;

    invoke-interface {v3}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lorg/chromium/net/CronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object v1

    const-string v2, "POST"

    .line 61
    invoke-virtual {v1, v2}, Lorg/chromium/net/UrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 62
    invoke-virtual {v1, v2, v3}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 63
    invoke-static {p1}, Lorg/chromium/net/UploadDataProviders;->create([B)Lorg/chromium/net/UploadDataProvider;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lorg/chromium/net/UrlRequest$Builder;->setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    .line 65
    invoke-virtual {v1}, Lorg/chromium/net/UrlRequest$Builder;->build()Lorg/chromium/net/UrlRequest;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)[B
    .locals 3

    .line 35
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "signedRequest"

    .line 36
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lo/cZ;->b:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;

    invoke-interface {v2}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lo/cZ;->c([B)Lorg/chromium/net/UrlRequest;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->start()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "nf_net"

    const-string v2, "Failed to create JSON object!"

    .line 41
    invoke-static {v1, p1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 42
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Failed to create JSON object with payload!"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lo/cZ;->a:Lo/dl;

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lo/cZ;->a:Lo/dl;

    invoke-interface {p1}, Lo/dl;->d()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lo/cZ;->a([Ljava/lang/Void;)[B

    move-result-object p1

    return-object p1
.end method
