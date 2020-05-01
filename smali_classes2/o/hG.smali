.class Lo/hG;
.super Lo/hz;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hz<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final d:Lo/cz;

.field private final e:Lo/cJ;

.field private final m:Ljava/lang/String;

.field private final u:Z

.field private v:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLo/cJ;)V
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-direct {p0, p1, v0}, Lo/hz;-><init>(Landroid/content/Context;I)V

    .line 72
    iput-object p8, p0, Lo/hG;->e:Lo/cJ;

    .line 73
    iput-object p3, p0, Lo/hG;->b:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lo/hG;->m:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lo/hG;->x:Ljava/lang/String;

    .line 76
    iput-object p6, p0, Lo/hG;->y:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lo/hG;->d:Lo/cz;

    .line 78
    iput-boolean p7, p0, Lo/hG;->u:Z

    new-array p1, v0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "signInVerify"

    aput-object p3, p1, p2

    const-string p3, "[\"%s\"]"

    .line 80
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/hG;->w:Ljava/lang/String;

    new-array p1, v0, [Ljava/lang/Object;

    .line 82
    iget-object p3, p0, Lo/hG;->w:Ljava/lang/String;

    aput-object p3, p1, p2

    const-string p2, "nf_login"

    const-string p3, "Query = %s"

    invoke-static {p2, p3, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method protected K()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected M()Ljava/util/List;
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

    .line 208
    iget-object v1, p0, Lo/hG;->w:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected U()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;
    .locals 4

    const-string p2, "signInVerify"

    const-string v0, "nf_login"

    .line 217
    invoke-static {v0, p1}, Lo/Downloads;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 218
    invoke-static {v1}, Lo/adI;->d(Lcom/google/gson/JsonObject;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 225
    :try_start_0
    sget-object v2, Lo/mS;->d:Lo/mS;

    invoke-static {v1, p2}, Lo/Downloads;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/mS;->b(Ljava/lang/String;)Lo/mR;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 227
    invoke-interface {v2}, Lo/mR;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 232
    :cond_0
    const-class v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;

    invoke-static {v1, p2, v2}, Lo/adI;->e(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;

    .line 233
    iget-object v1, p0, Lo/hG;->v:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iput-object v1, p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String response to parse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    const-string v0, "response missing json objects"

    invoke-direct {p1, v0, p2}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 219
    :cond_1
    new-instance p1, Lcom/netflix/falkor/FalkorException;

    const-string p2, "verifyLogin empty!!!"

    invoke-direct {p1, p2}, Lcom/netflix/falkor/FalkorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected c(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;)V
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login verify: singInData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_login"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lo/hG;->e:Lo/cJ;

    if-eqz v0, :cond_1

    .line 245
    sget-object v0, Lo/LegacyErrorStrings;->E:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isSignInSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 249
    :cond_0
    iget-object v1, p0, Lo/hG;->e:Lo/cJ;

    invoke-interface {v1, p1, v0}, Lo/cJ;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    return-void
.end method

.method protected synthetic d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lo/hG;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;

    invoke-virtual {p0, p1}, Lo/hG;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;)V

    return-void
.end method

.method public e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExitTransitionCoordinator;",
            ")",
            "Lo/FragmentManagerNonConfig<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p1, Lo/ExitTransitionCoordinator;->c:[B

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p1, Lo/ExitTransitionCoordinator;->c:[B

    array-length v0, v0

    iput v0, p0, Lo/hG;->r:I

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 156
    iget v2, p1, Lo/ExitTransitionCoordinator;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "nf_login"

    const-string v2, "Response status %d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 159
    iget-object v0, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v1, "Set-Cookie"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    invoke-static {v0}, Lo/afP;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEMP_PROFILE_ID"

    .line 161
    invoke-static {v2, v0}, Lo/afP;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v2

    iput-object v2, p0, Lo/hG;->v:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    .line 164
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lo/hG;->d:Lo/cz;

    invoke-interface {v2}, Lo/cz;->ao()Lo/afR;

    move-result-object v2

    invoke-interface {v2, v1}, Lo/afR;->a(Ljava/lang/String;)V

    .line 171
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lo/ExitTransitionCoordinator;->c:[B

    iget-object v3, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    invoke-static {v3}, Lo/LauncherActivity;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    new-instance v1, Ljava/lang/String;

    iget-object p1, p1, Lo/ExitTransitionCoordinator;->c:[B

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 178
    :goto_0
    :try_start_1
    invoke-virtual {p0, v1, v0}, Lo/hG;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;

    if-eqz p1, :cond_2

    .line 182
    iget-object v0, p0, Lo/hG;->g:Landroid/content/Context;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData$Fields;->abAllocations:Ljava/util/List;

    invoke-static {v0, v1}, Lo/cP;->b(Landroid/content/Context;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    const/4 v0, 0x0

    .line 193
    invoke-static {p1, v0}, Lo/FragmentManagerNonConfig;->b(Ljava/lang/Object;Lo/ContextImpl$StateListAnimator;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 186
    instance-of v0, p1, Lcom/android/volley/VolleyError;

    if-eqz v0, :cond_3

    .line 187
    check-cast p1, Lcom/android/volley/VolleyError;

    invoke-static {p1}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1

    .line 189
    :cond_3
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lo/FragmentManagerNonConfig;->a(Lcom/android/volley/VolleyError;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 255
    iget-object v0, p0, Lo/hG;->e:Lo/cJ;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 256
    invoke-interface {v0, v1, p1}, Lo/cJ;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 87
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->x:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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

    .line 130
    invoke-super {p0}, Lo/hz;->q()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
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

    .line 96
    iget-object v0, p0, Lo/hG;->d:Lo/cz;

    invoke-interface {v0}, Lo/cz;->C()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lo/hG;->d:Lo/cz;

    invoke-interface {v1}, Lo/cz;->G()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object v1

    .line 99
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->flwssn:Ljava/lang/String;

    const-string v3, "flwssn"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->netflixId:Ljava/lang/String;

    const-string v3, "netflixId"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->secureNetflixId:Ljava/lang/String;

    const-string v1, "secureNetflixId"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_1
    iget-object v0, p0, Lo/hG;->d:Lo/cz;

    invoke-interface {v0}, Lo/cz;->ab()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lo/hG;->d:Lo/cz;

    invoke-interface {v0}, Lo/cz;->ab()Ljava/lang/String;

    move-result-object v0

    const-string v1, "channelId"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_2
    iget-object v0, p0, Lo/hG;->d:Lo/cz;

    invoke-interface {v0}, Lo/cz;->ac()Ljava/lang/String;

    move-result-object v0

    const-string v1, "installType"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lo/hG;->b:Ljava/lang/String;

    const-string v1, "userLoginId"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lo/hG;->x:Ljava/lang/String;

    const-string v1, "countryCode"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lo/hG;->y:Ljava/lang/String;

    const-string v1, "countryIsoCode"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-boolean v0, p0, Lo/hG;->u:Z

    if-eqz v0, :cond_3

    .line 118
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isSmartLockLogin"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 122
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "nf_login"

    const-string v3, "signInParams= %s"

    invoke-static {v1, v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 123
    iget-object v0, p0, Lo/hG;->m:Ljava/lang/String;

    const-string v1, "password"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method
