.class Lcom/netflix/mediaclient/service/user/UserAgent$1;
.super Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field final synthetic val$userAgentCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$1;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$1;->val$userAgentCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginVerified(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 469
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->isSignInSuccessful()Z

    move-result v0

    if-nez v0, :cond_3

    .line 470
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 471
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "fail: signInData:%s, retry?:%b, trySignUp:%b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->shouldRetrySignIn()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->shouldTrySignUp()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInData;->shouldTrySignUp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$1;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->clearSignedInOnce()V

    .line 475
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$1;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$400(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    .line 476
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$1;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->USER_SIGNIN_FAILURE:Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v2, "UserAgent: activateLoginViaDynecom fails"

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-static {v1, v2, v5, v3}, Lcom/netflix/mediaclient/util/StatusUtils;->createStatus(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$500(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 491
    :goto_0
    return-void

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$1;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->USER_SIGNIN_RETRY:Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v2, "UserAgent: activateLoginViaDynecom fails"

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-static {v1, v2, v5, v3}, Lcom/netflix/mediaclient/util/StatusUtils;->createStatus(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$500(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 484
    :cond_3
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$1;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$600(Lcom/netflix/mediaclient/service/user/UserAgent;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$1;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$700(Lcom/netflix/mediaclient/service/user/UserAgent;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$1;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$1;->val$userAgentCallback:Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->tokenActivate(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    const-string/jumbo v1, "nf_service_useragent"

    const-string/jumbo v2, "error creating activationTokesn"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$1;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_ERROR:Lcom/netflix/mediaclient/StatusCode;

    const-string/jumbo v2, "UserAgent: activateLoginViaDynecom fails"

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-static {v1, v2, v5, v3}, Lcom/netflix/mediaclient/util/StatusUtils;->createStatus(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/service/logging/client/model/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$500(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
