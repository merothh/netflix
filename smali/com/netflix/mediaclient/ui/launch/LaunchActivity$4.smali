.class Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;)V
    .locals 4

    .prologue
    .line 736
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    const-string/jumbo v0, "LaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received resolution for GPS credential APIs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Auth.CredentialsApi.request ActivityFinishedOrDestroyed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :goto_0
    return-void

    .line 743
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 744
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "Sign in is required, go with regular workflow"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-interface {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getCredential()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 746
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-interface {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getCredential()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->access$602(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 747
    const-string/jumbo v0, "LaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Saving hint in case user ends up on login page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->access$600(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :goto_1
    invoke-interface {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->credentialRequestResultToError(Lcom/google/android/gms/common/api/Status;)Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v0

    .line 753
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v2, v3, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialRetrievalSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 754
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->smartLock:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v2, v3, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 756
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->access$500(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_0

    .line 749
    :cond_2
    const-string/jumbo v0, "LaunchActivity"

    const-string/jumbo v1, "No credentials!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 760
    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 761
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-interface {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getCredential()Lcom/google/android/gms/auth/api/credentials/Credential;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->access$700(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    goto/16 :goto_0

    .line 763
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->this$0:Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-interface {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->access$800(Lcom/netflix/mediaclient/ui/launch/LaunchActivity;Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 732
    check-cast p1, Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity$4;->onResult(Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;)V

    return-void
.end method
