.class Lo/hH;
.super Lo/hv;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hv<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;",
        ">;"
    }
.end annotation


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Ljava/lang/String;

.field private final C:Z

.field private final D:Ljava/lang/String;

.field private final b:Lo/cJ;

.field private final e:Lo/cz;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private final z:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLo/cJ;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lo/hv;-><init>()V

    .line 66
    iput-object p1, p0, Lo/hH;->z:Landroid/content/Context;

    .line 67
    iput-object p8, p0, Lo/hH;->b:Lo/cJ;

    .line 68
    iput-object p3, p0, Lo/hH;->w:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lo/hH;->v:Ljava/lang/String;

    .line 70
    iput-object p5, p0, Lo/hH;->A:Ljava/lang/String;

    .line 71
    iput-object p6, p0, Lo/hH;->D:Ljava/lang/String;

    .line 72
    iput-boolean p7, p0, Lo/hH;->C:Z

    .line 73
    iput-object p2, p0, Lo/hH;->e:Lo/cz;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "signInVerify"

    aput-object p3, p1, p2

    const-string p2, "[\"%s\"]"

    .line 75
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/hH;->B:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected b(Lo/agE;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;
    .locals 2

    .line 142
    invoke-virtual {p1}, Lo/agE;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "TEMP_PROFILE_ID"

    invoke-static {v1, v0}, Lo/hH;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v0

    iput-object v0, p0, Lo/hH;->d:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    .line 149
    invoke-virtual {p1}, Lo/agE;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "nfvdid"

    invoke-static {v1, v0}, Lo/hH;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lo/hH;->e:Lo/cz;

    invoke-interface {v1}, Lo/cz;->ao()Lo/afR;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/afR;->a(Ljava/lang/String;)V

    .line 154
    :cond_0
    invoke-virtual {p1}, Lo/agE;->d()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {p0, p1}, Lo/hH;->c(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lo/hH;->b:Lo/cJ;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 227
    invoke-interface {v0, v1, p1}, Lo/cJ;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected b(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lo/hH;->d:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iput-object v0, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    .line 203
    :cond_0
    iget-object v0, p0, Lo/hH;->d:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lo/hH;->e:Lo/cz;

    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    iget-object v2, p0, Lo/hH;->d:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iget-object v2, v2, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    iget-object v3, p0, Lo/hH;->d:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iget-object v3, v3, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lo/cz;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;)V

    .line 214
    :cond_1
    iget-object v0, p0, Lo/hH;->b:Lo/cJ;

    if-eqz v0, :cond_3

    .line 215
    sget-object v0, Lo/LegacyErrorStrings;->E:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    if-eqz p1, :cond_2

    .line 216
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isSignInSuccessful()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 220
    :cond_2
    iget-object v1, p0, Lo/hH;->b:Lo/cJ;

    invoke-interface {v1, p1, v0}, Lo/cJ;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_3
    return-void
.end method

.method protected c(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;
    .locals 5

    const-string v0, "signInVerify"

    const-string v1, "nf_login"

    .line 167
    invoke-static {v1, p1}, Lo/Downloads;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 168
    invoke-static {v2}, Lo/adI;->d(Lcom/google/gson/JsonObject;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 175
    :try_start_0
    sget-object v3, Lo/mS;->d:Lo/mS;

    invoke-static {v2, v0}, Lo/Downloads;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/mS;->b(Ljava/lang/String;)Lo/mR;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 177
    invoke-interface {v3}, Lo/mR;->c()Z

    .line 180
    :cond_0
    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;

    invoke-static {v2, v0, v3}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;

    if-eqz v0, :cond_1

    .line 184
    iget-object v2, p0, Lo/hH;->z:Landroid/content/Context;

    iget-object v3, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->abAllocations:Ljava/util/List;

    invoke-static {v2, v3}, Lo/cP;->b(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String response to parse = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    const-string v1, "response missing json objects"

    invoke-direct {p1, v1, v0}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 169
    :cond_2
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    const-string v0, "verifyLogin empty!!!"

    invoke-direct {p1, v0}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected synthetic c(Lo/agE;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lo/hH;->b(Lo/agE;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;

    invoke-virtual {p0, p1}, Lo/hH;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;)V

    return-void
.end method

.method protected synthetic g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lo/hH;->c(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;

    move-result-object p1

    return-object p1
.end method

.method public q()Ljava/util/Map;
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

    .line 118
    invoke-super {p0}, Lo/hv;->q()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    return-object v0
.end method

.method public u()Ljava/util/Map;
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

    .line 84
    iget-object v0, p0, Lo/hH;->e:Lo/cz;

    invoke-interface {v0}, Lo/cz;->C()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lo/hH;->e:Lo/cz;

    invoke-interface {v1}, Lo/cz;->G()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object v1

    .line 87
    invoke-super {p0}, Lo/hv;->u()Ljava/util/Map;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->flwssn:Ljava/lang/String;

    const-string v3, "flwssn"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->netflixId:Ljava/lang/String;

    const-string v3, "netflixId"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->secureNetflixId:Ljava/lang/String;

    const-string v1, "secureNetflixId"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_1
    iget-object v0, p0, Lo/hH;->e:Lo/cz;

    invoke-interface {v0}, Lo/cz;->ab()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lo/hH;->e:Lo/cz;

    invoke-interface {v0}, Lo/cz;->ab()Ljava/lang/String;

    move-result-object v0

    const-string v1, "channelId"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_2
    iget-object v0, p0, Lo/hH;->e:Lo/cz;

    invoke-interface {v0}, Lo/cz;->ac()Ljava/lang/String;

    move-result-object v0

    const-string v1, "installType"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lo/hH;->e:Lo/cz;

    invoke-interface {v0}, Lo/cz;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lo/hH;->w:Ljava/lang/String;

    const-string v1, "userLoginId"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lo/hH;->A:Ljava/lang/String;

    const-string v1, "countryCode"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lo/hH;->D:Ljava/lang/String;

    const-string v1, "countryIsoCode"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-boolean v0, p0, Lo/hH;->C:Z

    if-eqz v0, :cond_3

    .line 107
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isSmartLockLogin"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 111
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "nf_login"

    const-string v3, "signInParams=%s"

    invoke-static {v1, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    iget-object v0, p0, Lo/hH;->v:Ljava/lang/String;

    const-string v1, "password"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
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

    .line 136
    iget-object v1, p0, Lo/hH;->B:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
