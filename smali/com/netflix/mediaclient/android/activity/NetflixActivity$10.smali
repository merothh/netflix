.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;
.super Landroid/content/BroadcastReceiver;
.source "NetflixActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 2264
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private logWithClassName(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2310
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2311
    const-string/jumbo v0, "NetflixActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 2267
    if-nez p2, :cond_0

    .line 2268
    const-string/jumbo v0, "Null intent"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;->logWithClassName(Ljava/lang/String;)V

    .line 2307
    :goto_0
    return-void

    .line 2272
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2273
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_ACTIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2274
    const-string/jumbo v0, "User profile activated - restarting app"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;->logWithClassName(Ljava/lang/String;)V

    .line 2275
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->clearState()V

    .line 2276
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleProfileActivated()V

    goto :goto_0

    .line 2278
    :cond_1
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2279
    const-string/jumbo v0, "Account deactivated - restarting app"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;->logWithClassName(Ljava/lang/String;)V

    .line 2280
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleAccountDeactivated()V

    goto :goto_0

    .line 2282
    :cond_2
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_READY_TO_SELECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2283
    const-string/jumbo v0, "Ready to select profile - calling children"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;->logWithClassName(Ljava/lang/String;)V

    .line 2284
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleProfileReadyToSelect()V

    goto :goto_0

    .line 2286
    :cond_3
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_SELECTION_RESULT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2287
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.EXTRA_USER_PROFILE_SELECTION_RESULT_INT"

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2288
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.EXTRA_USER_PROFILE_SELECTION_RESULT_STRING"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Profile selection status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;->logWithClassName(Ljava/lang/String;)V

    .line 2290
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleProfileSelectionResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2292
    :cond_4
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_PROFILES_LIST_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2293
    const-string/jumbo v0, "Profiles list updated!"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;->logWithClassName(Ljava/lang/String;)V

    .line 2294
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleProfilesListUpdated()V

    goto/16 :goto_0

    .line 2296
    :cond_5
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_CURRENT_PROFILE_INVALID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2297
    const-string/jumbo v0, "current profile is invalid"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;->logWithClassName(Ljava/lang/String;)V

    .line 2298
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleInvalidCurrentProfile()V

    goto/16 :goto_0

    .line 2300
    :cond_6
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_AUTOLOGIN_TOKEN_CREATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2301
    const-string/jumbo v0, "Received autologin token"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;->logWithClassName(Ljava/lang/String;)V

    .line 2302
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1600(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2305
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No action taken for intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$10;->logWithClassName(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
