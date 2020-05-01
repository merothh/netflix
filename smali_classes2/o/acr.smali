.class public Lo/acr;
.super Lo/CookieSyncManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/acr$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/acr$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/acr$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/acr$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/acr;->b:Lo/acr$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/CookieSyncManager;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lo/acr;->g()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 47
    new-instance v0, Lo/acr$Activity;

    invoke-direct {v0, p0}, Lo/acr$Activity;-><init>(Lo/acr;)V

    check-cast v0, Lo/zT;

    return-object v0
.end method

.method protected g()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
    .locals 3

    .line 43
    sget-object v0, Lo/act;->j:Lo/act$Application;

    invoke-virtual {p0}, Lo/acr;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "EXTRA_MESSAGE_CTA_PARAMS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lo/act$Application;->b(Ljava/lang/String;)Lo/act;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 38
    sget-object v0, Lcom/netflix/cl/model/AppView;->planSelection:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldApplyPaddingToSlidingPanel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
