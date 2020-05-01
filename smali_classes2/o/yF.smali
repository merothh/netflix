.class Lo/yF;
.super Lo/hO;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hO<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/User;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final d:Lo/yq;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Lo/yq;)V
    .locals 1

    const-string v0, "FetchUserDataRequest"

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lo/hO;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;)V

    .line 33
    iput-object p3, p0, Lo/yF;->d:Lo/yq;

    const-string p1, "[\"user\", [\"summary\", \"subtitleDefaults\"]]"

    .line 35
    iput-object p1, p0, Lo/yF;->a:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 36
    iget-object p2, p0, Lo/yF;->a:Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "nf_service_user_fetchuserdatarequest"

    const-string p3, "Query = %s"

    invoke-static {p2, p3, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;
    .locals 3

    const-string p2, "nf_service_user_fetchuserdatarequest"

    .line 54
    invoke-static {p2, p1}, Lo/Downloads;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lo/adI;->d(Lcom/google/gson/JsonObject;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;-><init>()V

    :try_start_0
    const-string v2, "user"

    .line 62
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    const-string v2, "summary"

    invoke-static {p2, v2, v0}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    .line 69
    iget-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/User$Summary;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getUserGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const-class p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    const-string v0, "subtitleDefaults"

    invoke-static {p2, v0, p1}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    iput-object p1, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->subtitleDefaults:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    return-object v1

    .line 70
    :cond_0
    new-instance p2, Lcom/netflix/falkor/FalkorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response missing summary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String response to parse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    const-string p2, "response missing user json objects"

    invoke-direct {p1, p2, v0}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 56
    :cond_1
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    const-string p2, "UserProfile empty!!!"

    invoke-direct {p1, p2}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lo/yF;->d:Lo/yq;

    if-eqz v0, :cond_0

    .line 87
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lo/yq;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-virtual {p0, p1}, Lo/yF;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    return-void
.end method

.method protected d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lo/yF;->d:Lo/yq;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 80
    invoke-interface {v0, v1, p1}, Lo/yq;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected synthetic e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lo/yF;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    move-result-object p1

    return-object p1
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lo/yF;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
