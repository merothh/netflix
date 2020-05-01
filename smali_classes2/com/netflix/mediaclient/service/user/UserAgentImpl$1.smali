.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$1;
.super Lo/cW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLo/ym;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ym;

.field final synthetic c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$1;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$1;->b:Lo/ym;

    invoke-direct {p0}, Lo/cW;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .line 901
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "UserAgent: activateLoginViaDynecom fails"

    const-string v3, "nf_service_useragent"

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isSignInSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "Login via Dynecom was success..."

    .line 966
    invoke-static {v3, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :try_start_0
    new-instance p2, Lo/ToggleButton;

    iget-object v0, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    iget-object v4, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iget-object v4, v4, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-direct {p2, v0, v4}, Lo/ToggleButton;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$1;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    move-result-object v0

    iget-object p1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a(Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    .line 972
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$1;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$1;->b:Lo/ym;

    invoke-static {p1, p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ToggleButton;Lo/ym;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "error creating activationTokesn"

    .line 974
    invoke-static {v3, p1, v0, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 975
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$1;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->e:Lcom/netflix/mediaclient/StatusCode;

    sget-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->m:Lcom/netflix/mediaclient/util/log/RootCause;

    invoke-static {p2, v2, v1, v0}, Lo/aeu;->b(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/util/log/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$1;->b:Lo/ym;

    invoke-virtual {p1, p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/android/app/Status;Lo/ym;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "Login via Dynecom was failure..."

    .line 903
    invoke-static {v3, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 910
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$1;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p2

    sget-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->m:Lcom/netflix/mediaclient/util/log/RootCause;

    invoke-static {p2, v2, v1, v0}, Lo/aeu;->b(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/util/log/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$1;->b:Lo/ym;

    invoke-virtual {p1, p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/android/app/Status;Lo/ym;)V

    return-void

    .line 913
    :cond_2
    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->M:Lcom/netflix/mediaclient/StatusCode;

    if-eqz p1, :cond_10

    .line 916
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->shouldTrySignUp()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p2, "not currentMember,  need to go to sign-up page"

    .line 917
    invoke-static {v3, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object p2

    invoke-virtual {p2}, Lo/CarrierIdentifier;->f()V

    .line 919
    iget-object p2, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    if-eqz p2, :cond_3

    .line 920
    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$1;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object v0, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    iget-object p1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->authorizationCredentials:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iget-object p1, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :cond_3
    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->K:Lcom/netflix/mediaclient/StatusCode;

    goto/16 :goto_1

    .line 924
    :cond_4
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isThrottled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 925
    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->I:Lcom/netflix/mediaclient/StatusCode;

    goto/16 :goto_1

    .line 926
    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isPasswordIncorrect()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 927
    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->F:Lcom/netflix/mediaclient/StatusCode;

    const-string p1, "Password is incorrect"

    .line 928
    invoke-static {v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 929
    :cond_6
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isEmailUnrecognised()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 930
    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->G:Lcom/netflix/mediaclient/StatusCode;

    const-string p1, "Email is incorrect"

    .line 931
    invoke-static {v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 932
    :cond_7
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isPhoneUnrecognized()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 933
    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->v:Lcom/netflix/mediaclient/StatusCode;

    const-string p1, "Phone is incorrect"

    .line 934
    invoke-static {v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 935
    :cond_8
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isAccountWithNoPasswordSet()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 936
    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->H:Lcom/netflix/mediaclient/StatusCode;

    const-string p1, "Account has no password set"

    .line 937
    invoke-static {v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 938
    :cond_9
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isConsumptionOnlyFormerMember()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 939
    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->x:Lcom/netflix/mediaclient/StatusCode;

    const-string p1, "Account is a consumption-only former member"

    .line 940
    invoke-static {v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 941
    :cond_a
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isRedirectOnlyFormerMember()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 942
    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->z:Lcom/netflix/mediaclient/StatusCode;

    const-string p1, "Account is a redirect-only former member"

    .line 943
    invoke-static {v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 944
    :cond_b
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isConsumptionOnlyNeverMember()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 945
    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->D:Lcom/netflix/mediaclient/StatusCode;

    const-string p1, "Account is a consumption-only never member"

    .line 946
    invoke-static {v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 947
    :cond_c
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isRedirectOnlyNeverMember()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 948
    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->C:Lcom/netflix/mediaclient/StatusCode;

    const-string p1, "Account is a redirect-only never member"

    .line 949
    invoke-static {v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 950
    :cond_d
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isRedirectOnlyDVDMember()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 951
    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->B:Lcom/netflix/mediaclient/StatusCode;

    const-string p1, "Account is a redirect-only DVD member"

    .line 952
    invoke-static {v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 953
    :cond_e
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isConsumptionOnlyUnrecognizedEmail()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 954
    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->A:Lcom/netflix/mediaclient/StatusCode;

    const-string p1, "Email is incorrect, but login is consumption-only"

    .line 955
    invoke-static {v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 956
    :cond_f
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isRedirectOnlyUnrecognizedEmail()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 957
    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->E:Lcom/netflix/mediaclient/StatusCode;

    const-string p1, "Email is incorrect, but login is redirect-only"

    .line 958
    invoke-static {v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_10
    :goto_1
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$1;->c:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    sget-object v0, Lcom/netflix/mediaclient/util/log/RootCause;->m:Lcom/netflix/mediaclient/util/log/RootCause;

    invoke-static {p2, v2, v1, v0}, Lo/aeu;->b(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/util/log/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$1;->b:Lo/ym;

    invoke-virtual {p1, p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/android/app/Status;Lo/ym;)V

    return-void
.end method
