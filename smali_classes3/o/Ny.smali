.class public Lo/Ny;
.super Lo/CookieSyncManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ny$StateListAnimator;
    }
.end annotation


# static fields
.field private static a:Z

.field public static final c:Lo/Ny$StateListAnimator;


# instance fields
.field private final d:Lo/Ny$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Ny$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Ny$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/Ny;->c:Lo/Ny$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lo/CookieSyncManager;-><init>()V

    .line 51
    new-instance v0, Lo/Ny$TaskDescription;

    invoke-direct {v0, p0}, Lo/Ny$TaskDescription;-><init>(Lo/Ny;)V

    iput-object v0, p0, Lo/Ny;->d:Lo/Ny$TaskDescription;

    return-void
.end method

.method public static final synthetic e(Z)V
    .locals 0

    .line 24
    sput-boolean p0, Lo/Ny;->a:Z

    return-void
.end method

.method public static final synthetic g()Z
    .locals 1

    .line 24
    sget-boolean v0, Lo/Ny;->a:Z

    return v0
.end method


# virtual methods
.method protected a()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 80
    sget-object v0, Lo/NA;->j:Lo/NA$StateListAnimator;

    invoke-virtual {v0}, Lo/NA$StateListAnimator;->b()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 84
    new-instance v0, Lo/Ny$Application;

    invoke-direct {v0, p0}, Lo/Ny$Application;-><init>(Lo/Ny;)V

    check-cast v0, Lo/zT;

    return-object v0
.end method

.method public finish()V
    .locals 2

    .line 74
    invoke-super {p0}, Lo/CookieSyncManager;->finish()V

    const/4 v0, 0x0

    .line 75
    sput-boolean v0, Lo/Ny;->a:Z

    .line 76
    sget v1, Lcom/netflix/mediaclient/ui/R$ActionBar;->o:I

    invoke-virtual {p0, v0, v1}, Lo/Ny;->overridePendingTransition(II)V

    return-void
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 105
    sget-object v0, Lcom/netflix/cl/model/AppView;->umsAlert:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Lo/CookieSyncManager;->onCreate(Landroid/os/Bundle;)V

    .line 59
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lo/Ny;->d:Lo/Ny$TaskDescription;

    check-cast v0, Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, v0, v1}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 64
    sget p1, Lcom/netflix/mediaclient/ui/R$ActionBar;->k:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/Ny;->overridePendingTransition(II)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 68
    invoke-super {p0}, Lo/CookieSyncManager;->onDestroy()V

    const/4 v0, 0x0

    .line 69
    sput-boolean v0, Lo/Ny;->a:Z

    .line 70
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/Ny;->d:Lo/Ny$TaskDescription;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public shouldApplyPaddingToSlidingPanel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldAttachToolbar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
