.class Lcom/netflix/mediaclient/ui/signup/SignupActivity$12;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V
    .locals 0

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$12;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 1200
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$12;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$12;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Auth.CredentialsApi.request ActivityFinishedOrDestroyed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :goto_0
    return-void

    .line 1207
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1208
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "SAVE: OK"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$12;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->GooglePlayService:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportCredentialStoreSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 1210
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$12;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const-string/jumbo v1, "Credential Saved"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->showDebugToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1212
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$12;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$2300(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method
