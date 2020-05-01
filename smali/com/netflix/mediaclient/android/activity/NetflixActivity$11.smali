.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 3146
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    const-string p1, "Null intent"

    .line 3150
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->d(Ljava/lang/String;)V

    return-void

    .line 3154
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_ACTIVE"

    .line 3155
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "User profile activated - restarting app"

    .line 3156
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->d(Ljava/lang/String;)V

    .line 3157
    invoke-static {}, Lo/acR;->e()Lo/acR;

    move-result-object p1

    invoke-virtual {p1}, Lo/acR;->d()V

    .line 3158
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleProfileActivated()V

    goto/16 :goto_0

    :cond_1
    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    .line 3160
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Account deactivated - restarting app"

    .line 3161
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->d(Ljava/lang/String;)V

    .line 3162
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleAccountDeactivated()V

    .line 3163
    sget-object p1, Lo/Rs;->e:Lo/Rs;

    invoke-virtual {p1}, Lo/Rs;->d()V

    goto/16 :goto_0

    :cond_2
    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_READY_TO_SELECT"

    .line 3165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "Ready to select profile - calling children"

    .line 3166
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->d(Ljava/lang/String;)V

    .line 3167
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleProfileReadyToSelect()V

    goto/16 :goto_0

    :cond_3
    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_SELECTION_RESULT"

    .line 3169
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3170
    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    const-string v0, "com.netflix.mediaclient.intent.action.EXTRA_USER_PROFILE_SELECTION_RESULT_INT"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "com.netflix.mediaclient.intent.action.EXTRA_USER_PROFILE_SELECTION_RESULT_STRING"

    .line 3171
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Profile selection status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->d(Ljava/lang/String;)V

    .line 3173
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleProfileSelectionResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_PROFILES_LIST_UPDATED"

    .line 3175
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "Profiles list updated!"

    .line 3176
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->d(Ljava/lang/String;)V

    .line 3177
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleProfilesListUpdated()V

    goto :goto_0

    :cond_5
    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_CURRENT_PROFILE_INVALID"

    .line 3179
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "current profile is invalid"

    .line 3180
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->d(Ljava/lang/String;)V

    .line 3181
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleInvalidCurrentProfile()V

    goto :goto_0

    :cond_6
    const-string v0, "com.netflix.mediaclient.intent.action.NOTIFY_AUTOLOGIN_TOKEN_CREATED"

    .line 3183
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "Received autologin token"

    .line 3184
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->d(Ljava/lang/String;)V

    .line 3185
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$2000(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    const-string p2, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_DEACTIVE"

    .line 3187
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 3188
    sget-object p1, Lo/Rs;->e:Lo/Rs;

    invoke-virtual {p1}, Lo/Rs;->d()V

    .line 3189
    sget-object p1, Lo/aeI;->c:Lo/aeI;

    invoke-virtual {p1}, Lo/aeI;->f()V

    goto :goto_0

    .line 3192
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No action taken for intent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$11;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
