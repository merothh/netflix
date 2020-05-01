.class public Lo/Oq;
.super Lo/CookieSyncManager;
.source ""


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private b:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lo/Oq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/Oq;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/CookieSyncManager;-><init>()V

    return-void
.end method

.method static synthetic b(Lo/Oq;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lo/Oq;->d:Z

    return p1
.end method

.method static synthetic d(Lo/Oq;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lo/Oq;->d:Z

    return p0
.end method

.method public static e(Lcom/netflix/mediaclient/service/pushnotification/MessageData;)Landroid/content/Intent;
    .locals 2

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.NOTIFICATION_IRIS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->addMessageDataToIntent(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    return-object v0
.end method

.method static synthetic e(Lo/Oq;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lo/Oq;->b:Z

    return p1
.end method

.method public static g()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 60
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lo/OD;

    goto :goto_0

    :cond_0
    const-class v0, Lo/Oq;

    :goto_0
    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lo/Oq;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 83
    new-instance v0, Lo/Os;

    invoke-direct {v0}, Lo/Os;-><init>()V

    return-object v0
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 98
    new-instance v0, Lo/Oq$5;

    invoke-direct {v0, p0}, Lo/Oq$5;-><init>(Lo/Oq;)V

    return-object v0
.end method

.method protected f()I
    .locals 1

    .line 78
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->bB:I

    return v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 121
    sget-object v0, Lcom/netflix/cl/model/AppView;->notificationSelector:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public isLoadingData()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lo/Oq;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/Oq;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/Oq;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->isLoadingData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lo/CookieSyncManager;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "notification_beacon_sent"

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lo/Oq;->d:Z

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 65
    sget-object v0, Lo/Oq;->e:Ljava/lang/String;

    const-string v1, "onNewIntent: "

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 66
    invoke-super {p0, p1}, Lo/CookieSyncManager;->onNewIntent(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p0, p1}, Lo/Oq;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 72
    iget-boolean v0, p0, Lo/Oq;->d:Z

    const-string v1, "notification_beacon_sent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    invoke-super {p0, p1}, Lo/CookieSyncManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public showSettingsInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
