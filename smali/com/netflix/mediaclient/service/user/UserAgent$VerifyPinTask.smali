.class Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;
.super Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final enteredPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private final webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/user/UserAgent$FetchTask;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentCallback;)V

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask$1;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;->enteredPin:Ljava/lang/String;

    return-void
.end method

.method private userEnteredPinMatchesStoredPin()Z
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "prefs_last_successful_user_pin"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;->enteredPin:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$1200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/user/UserWebClient;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;->enteredPin:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserWebClient;->verifyPin(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;->userEnteredPinMatchesStoredPin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    const/4 v1, 0x1

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$VerifyPinTask;->webClientCallback:Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;->onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
