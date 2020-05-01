.class public final Lo/Yr;
.super Lo/CookieSyncManager;
.source ""

# interfaces
.implements Lo/CY;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Yr$Activity;
    }
.end annotation


# static fields
.field public static final c:Lo/Yr$Activity;


# instance fields
.field private a:Lcom/netflix/mediaclient/servicemgr/PlayContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Yr$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Yr$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Yr;->c:Lo/Yr$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/CookieSyncManager;-><init>()V

    return-void
.end method

.method private final g()V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lo/Yr;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->c(Landroid/view/Window;)V

    .line 60
    invoke-virtual {p0}, Lo/Yr;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lo/Yr;->getSupportActionBar()Lo/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/Fragment;->b()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 28
    new-instance v0, Lo/Yq;

    invoke-direct {v0}, Lo/Yq;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method protected f()I
    .locals 1

    .line 65
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->f:I

    return v0
.end method

.method public finish()V
    .locals 2

    .line 73
    invoke-super {p0}, Lo/CookieSyncManager;->finish()V

    .line 74
    sget v0, Lcom/netflix/mediaclient/ui/R$ActionBar;->k:I

    sget v1, Lcom/netflix/mediaclient/ui/R$ActionBar;->o:I

    invoke-virtual {p0, v0, v1}, Lo/Yr;->overridePendingTransition(II)V

    return-void
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 32
    sget-object v0, Lcom/netflix/cl/model/AppView;->previews:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 2

    .line 18
    iget-object v0, p0, Lo/Yr;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    if-nez v0, :cond_0

    const-string v1, "playContext"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Lo/CookieSyncManager;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lo/Yr;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "PLAY_CONTEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    if-nez p1, :cond_0

    .line 39
    new-instance p1, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    sget-object v0, Lo/Yr;->c:Lo/Yr$Activity;

    invoke-virtual {v0}, Lo/Yr$Activity;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x23a

    invoke-direct {p1, v0, v1}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iput-object p1, p0, Lo/Yr;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 40
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-18982: playContextFromIntent is null"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_0
    iput-object p1, p0, Lo/Yr;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 44
    :goto_0
    invoke-direct {p0}, Lo/Yr;->g()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 48
    invoke-super {p0}, Lo/CookieSyncManager;->onResume()V

    .line 49
    invoke-direct {p0}, Lo/Yr;->g()V

    .line 53
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    const-string v1, "NetflixApplication.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->M()Lo/afH;

    move-result-object v0

    invoke-virtual {v0}, Lo/afH;->d()V

    return-void
.end method

.method public shouldAttachToolbar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
