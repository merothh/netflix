.class Lo/nu;
.super Lo/zt;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/nu$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/zt<",
        "Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/content/Context;

.field private d:Lo/nu$Activity;

.field protected e:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLo/nu$Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0}, Lo/zt;-><init>(I)V

    .line 47
    iput-object p1, p0, Lo/nu;->b:Landroid/content/Context;

    .line 48
    iput p2, p0, Lo/nu;->h:I

    .line 49
    iput-boolean p3, p0, Lo/nu;->i:Z

    .line 50
    iput-object p4, p0, Lo/nu;->d:Lo/nu$Activity;

    return-void
.end method


# virtual methods
.method public A()Lo/FragmentController;
    .locals 4

    .line 109
    new-instance v0, Lo/ContentProviderHolder;

    const/16 v1, 0x9c4

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lo/ContentProviderHolder;-><init>(IIF)V

    return-object v0
.end method

.method public D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 61
    sget-object v0, Lcom/android/volley/Request$Priority;->b:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected N()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lo/nu;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;)V
    .locals 1

    .line 55
    iput-object p1, p0, Lo/nu;->e:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    .line 56
    iget-object p1, p0, Lo/nu;->e:Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/nu;->j(Ljava/lang/String;)V

    return-void
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 67
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 68
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/ftl/probe?monotonic=true&device=android&iter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lo/nu;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "&force="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lo/nu;->i:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "nf_probe"

    const-string v2, "unable to parse baseUrl=%s"

    .line 70
    invoke-static {p1, v0, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string p1, ""

    return-object p1
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;
    .locals 1

    const-string p2, "nf_probe"

    .line 77
    invoke-static {p2, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lo/adI;->b()Lcom/google/gson/Gson;

    move-result-object p2

    const-class v0, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lo/nu;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;->d(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method protected d(Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lo/nu;->d:Lo/nu$Activity;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p1}, Lo/nu$Activity;->a(Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;)V

    :cond_0
    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lo/nu;->d:Lo/nu$Activity;

    return-void
.end method

.method protected bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;

    invoke-virtual {p0, p1}, Lo/nu;->d(Lcom/netflix/mediaclient/service/net/probe/ProbeConfigResponse;)V

    return-void
.end method

.method protected e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 100
    iget-object p1, p0, Lo/nu;->d:Lo/nu$Activity;

    if-eqz p1, :cond_0

    .line 101
    invoke-interface {p1}, Lo/nu$Activity;->d()V

    :cond_0
    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lo/nu;->d:Lo/nu$Activity;

    return-void
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
