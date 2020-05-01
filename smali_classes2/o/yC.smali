.class public Lo/yC;
.super Lo/nm;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/nm<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lo/yq;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/yq;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lo/nm;-><init>()V

    .line 41
    iput-object p2, p0, Lo/yC;->e:Lo/yq;

    .line 42
    iput-object p1, p0, Lo/yC;->b:Ljava/lang/String;

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[\"profiles\",\""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",[\"summary\", \"subtitlePreference\"]]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/yC;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected U()Ljava/lang/String;
    .locals 1

    const-string v0, "FetchProfileDataMSLRequest"

    return-object v0
.end method

.method protected a(Lo/agE;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lo/nm;->c(Lo/agE;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    return-object p1
.end method

.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lo/yC;->e:Lo/yq;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 110
    invoke-interface {v0, v1, p1}, Lo/yq;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "String response to parse = %s"

    const-string v4, "nf_service_user_fetchprofiledatarequest"

    .line 73
    invoke-static {v4, v3, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 79
    invoke-static {v4, p1}, Lo/Downloads;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 80
    invoke-static {v1}, Lo/adI;->d(Lcom/google/gson/JsonObject;)Z

    move-result v5

    if-nez v5, :cond_1

    :try_start_0
    const-string v5, "profiles"

    .line 87
    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    iget-object v1, p0, Lo/yC;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;-><init>()V

    .line 96
    const-class v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    const-string v3, "summary"

    invoke-static {v0, v3, v2}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    iput-object v2, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    .line 98
    iget-object v2, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->summary:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    const-class p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    const-string v2, "subtitlePreference"

    invoke-static {v0, v2, p1}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    iput-object p1, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->subtitlePreference:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    return-object v1

    .line 99
    :cond_0
    new-instance v0, Lcom/netflix/falkor/FalkorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response missing summary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 89
    invoke-static {v4, v3, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 90
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    const-string v0, "response missing profiles json objects"

    invoke-direct {p1, v0, v1}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 81
    :cond_1
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    const-string v0, "UserProfile empty!!!"

    invoke-direct {p1, v0}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected synthetic c(Lo/agE;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/yC;->a(Lo/agE;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object p1

    return-object p1
.end method

.method protected d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lo/yC;->e:Lo/yq;

    if-eqz v0, :cond_0

    .line 117
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lo/yq;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {p0, p1}, Lo/yC;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    return-void
.end method

.method protected synthetic g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/yC;->c(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object p1

    return-object p1
.end method

.method protected u_()Ljava/util/List;
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

    .line 58
    iget-object v1, p0, Lo/yC;->d:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
