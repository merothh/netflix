.class public final Lo/Mg;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Mg$TaskDescription;,
        Lo/Mg$Activity;
    }
.end annotation


# instance fields
.field private final d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 55
    iput-object p1, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string p1, "nf_mdx"

    const-string v0, "Receiver created"

    .line 56
    invoke-static {p1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a()V
    .locals 2

    const-string v0, "nf_pin"

    const-string v1, "cancelPin on MDX_ACTION_PIN_VERIFICATION_NOT_REQUIRED"

    .line 272
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {}, Lo/acR;->e()Lo/acR;

    move-result-object v0

    invoke-virtual {v0}, Lo/acR;->b()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .line 277
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "uuid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "nf_pin"

    const-string v1, "verifyPinAndNotify on PIN_VERIFICATION_SHOW"

    .line 279
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;

    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->c:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lo/acR;->e()Lo/acR;

    move-result-object p1

    iget-object v1, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0, v1}, Lo/acR;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault;Lo/acQ$Application;)V

    return-void
.end method

.method private a(Lo/zV;)V
    .locals 6

    .line 195
    iget-object p1, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->l()Lo/zN;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->l()Lo/zN;

    move-result-object p1

    invoke-interface {p1}, Lo/zN;->n()Lo/aeM$Application;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p1, Lo/aeM$Application;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    iget-object v1, p1, Lo/aeM$Application;->b:Ljava/lang/String;

    .line 200
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {p1}, Lo/aeM$Application;->c()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->d:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    new-instance v3, Lo/Mg$TaskDescription;

    iget-object v4, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string v5, "nf_mdx"

    invoke-direct {v3, v5, v4}, Lo/Mg$TaskDescription;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 199
    invoke-interface {v0, v1, p1, v2, v3}, Lo/zG;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Lo/zU;)Z

    :cond_0
    return-void
.end method

.method private b(Lo/zV;)V
    .locals 6

    .line 184
    iget-object p1, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->l()Lo/zN;

    move-result-object p1

    .line 185
    instance-of v0, p1, Lo/ko;

    if-eqz v0, :cond_0

    .line 186
    check-cast p1, Lo/ko;

    invoke-virtual {p1}, Lo/ko;->m()Lo/aeM$Application;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p1, Lo/aeM$Application;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    iget-object p1, p1, Lo/aeM$Application;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v3, Lo/Mg$Activity;

    iget-object v4, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string v5, "nf_mdx"

    invoke-direct {v3, v5, v4}, Lo/Mg$Activity;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-interface {v0, p1, v1, v2, v3}, Lo/zG;->e(Ljava/lang/String;Ljava/lang/String;ZLo/zU;)Z

    :cond_0
    return-void
.end method

.method private d(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 170
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "postplayState"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 172
    new-instance p2, Lo/zV;

    invoke-direct {p2, p1}, Lo/zV;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Lo/zV;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    invoke-direct {p0, p2}, Lo/Mg;->b(Lo/zV;)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p2}, Lo/zV;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 178
    invoke-direct {p0, p2}, Lo/Mg;->a(Lo/zV;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    .line 166
    iget-object p1, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAYER_POST_PLAY_ACTION_HIDE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public b()Landroid/content/IntentFilter;
    .locals 2

    const-string v0, "nf_mdx"

    const-string v1, "Get filter called"

    .line 61
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_READY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_NOTREADY"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_TARGETLIST"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.PIN_VERIFICATION_SHOW"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_PIN_VERIFICATION_NOT_REQUIRED"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_POSTPLAY"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_PLAYBACKSTART"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_STATE"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_CAPABILITY"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_ERROR"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_REMOTE_LOGIN_COMPLETED"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 86
    iget-object v0, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->shouldAddCastToMenu()Z

    move-result v1

    const-string v2, "nf_mdx"

    if-nez v1, :cond_2

    const-string p1, "Ignore MDX broadcast"

    .line 96
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 100
    :cond_2
    iget-object v1, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxStatusUpdatedByMdxReceiver()V

    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_NOTREADY"

    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "MDX is NOT ready, invalidate action bar"

    .line 103
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p1, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :cond_3
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_READY"

    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "MDX is ready, invalidate action bar"

    .line 107
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p1, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :cond_4
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_TARGETLIST"

    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "MDX is ready, got target list update, invalidate action bar"

    .line 111
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p1, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxTargetListChanged()V

    .line 114
    iget-object p1, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateTargetSelectionDialog()V

    goto/16 :goto_0

    :cond_5
    const-string v1, "com.netflix.mediaclient.intent.action.PIN_VERIFICATION_SHOW"

    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "MDX PIN show dialog"

    .line 117
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0, p2}, Lo/Mg;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_PIN_VERIFICATION_NOT_REQUIRED"

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p1, "MDX cancel pin dialog - verified on other controller"

    .line 121
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0}, Lo/Mg;->a()V

    goto/16 :goto_0

    :cond_7
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_POSTPLAY"

    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 125
    invoke-direct {p0, p2, p1}, Lo/Mg;->d(Landroid/content/Intent;Landroid/content/Context;)V

    .line 128
    invoke-virtual {p0}, Lo/Mg;->abortBroadcast()V

    goto/16 :goto_0

    :cond_8
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_PLAYBACKSTART"

    .line 130
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 131
    invoke-direct {p0, p1}, Lo/Mg;->e(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 133
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_STATE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 134
    iget-object p2, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p2

    invoke-virtual {p2}, Lo/Am;->l()Lo/zN;

    move-result-object p2

    invoke-interface {p2}, Lo/zN;->x()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 136
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;->a()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    move-result-object p2

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->b:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    if-ne p2, v0, :cond_d

    .line 137
    invoke-direct {p0, p1}, Lo/Mg;->e(Landroid/content/Context;)V

    goto :goto_0

    :cond_a
    const-string p1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_CAPABILITY"

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    const-string p1, "MDX is connected, invalidate action bar to finish animation"

    .line 142
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p1, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setConnectingToTarget(Z)V

    .line 145
    iget-object p1, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxTargetListChanged()V

    .line 148
    iget-object p1, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.netflix.mediaclient.intent.action.UPDATE_CAPABILITIES_BADGES"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_b
    const-string p1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_REMOTE_LOGIN_COMPLETED"

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "MDX remote login is complete"

    .line 151
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "remoteLoginPolicy"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lo/kx;->c(I)Lo/kx;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 154
    sget-object p2, Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;->a:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    invoke-virtual {p1, p2}, Lo/kx;->a(Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 155
    iget-object p1, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setConnectingToTarget(Z)V

    goto :goto_0

    :cond_c
    const-string p1, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_ERROR"

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "MDX is has error"

    .line 159
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object p1, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setConnectingToTarget(Z)V

    .line 161
    iget-object p1, p0, Lo/Mg;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxTargetListChanged()V

    :cond_d
    :goto_0
    return-void
.end method
