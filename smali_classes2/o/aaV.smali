.class public Lo/aaV;
.super Lo/CookieSyncManager;
.source ""

# interfaces
.implements Lo/CK$TaskDescription;
.implements Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActionBar;


# instance fields
.field private c:Ljava/lang/String;

.field private final e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lo/CookieSyncManager;-><init>()V

    .line 66
    new-instance v0, Lo/aaV$3;

    invoke-direct {v0, p0}, Lo/aaV$3;-><init>(Lo/aaV;)V

    iput-object v0, p0, Lo/aaV;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static d(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2

    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lo/aaV;->j()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private static j()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lo/aaY;

    goto :goto_0

    :cond_0
    const-class v0, Lo/aaV;

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected Q_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected a()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 53
    invoke-static {}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Z)V
    .locals 1

    .line 140
    invoke-virtual {p0}, Lo/aaV;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method protected f()I
    .locals 1

    .line 63
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->bB:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 4

    .line 91
    iget-object v0, p0, Lo/aaV;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lo/aaV;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0}, Lo/nS;->p()Lo/Bg;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Lo/Bg;->d()I

    move-result v1

    invoke-interface {v0, v1}, Lo/Bg;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Bh;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lo/aaV;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0}, Lo/Bh;->g()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lo/aeE;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/aaV;->c:Ljava/lang/String;

    .line 101
    :cond_0
    iget-object v0, p0, Lo/aaV;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 135
    sget-object v0, Lcom/netflix/cl/model/AppView;->settings:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lo/CookieSyncManager;->onCreate(Landroid/os/Bundle;)V

    .line 86
    iget-object p1, p0, Lo/aaV;->e:Landroid/content/BroadcastReceiver;

    const-string v0, "com.netflix.mediaclient.intent.offline.osv.space.usage.updated"

    invoke-virtual {p0, p1, v0}, Lo/aaV;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 44
    invoke-super {p0}, Lo/CookieSyncManager;->onResume()V

    .line 45
    invoke-virtual {p0}, Lo/aaV;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Lo/nS;->q()V

    :cond_0
    return-void
.end method

.method public showMdxInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateActionBar()Z
    .locals 4

    .line 106
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->jQ:I

    invoke-virtual {p0, v0}, Lo/aaV;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lo/aaV;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p0}, Lo/aaV;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lo/aaV;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v3

    .line 113
    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    const/4 v3, 0x1

    .line 114
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object v0

    .line 112
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    return v3

    :cond_0
    return v2
.end method
