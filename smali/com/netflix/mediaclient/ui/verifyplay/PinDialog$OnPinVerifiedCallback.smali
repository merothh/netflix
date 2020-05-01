.class Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "PinDialog.java"


# instance fields
.field protected final mPinVerifyCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    const-string/jumbo v0, "nf_pin"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->mPinVerifyCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

    return-void
.end method


# virtual methods
.method public onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V

    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "onVerified"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$400(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "dialog was cancelled before.. nothing to do"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$1000(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Z)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "onVerified isPinValid:%b, statusCode:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->retryOnPinFailure()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->dismissDialog()V

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->registerPinVerifyEvent()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$1100(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->mPinVerifyCallback:Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->notifyCallerPinVerified(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lcom/netflix/mediaclient/ui/verifyplay/PinAndAgeVerifier$PinAndAgeVerifyCallback;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$OnPinVerifiedCallback;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$1200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
