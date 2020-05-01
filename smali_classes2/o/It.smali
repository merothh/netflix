.class public Lo/It;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source ""

# interfaces
.implements Lo/CY;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/It$StateListAnimator;
    }
.end annotation


# static fields
.field public static final e:Lo/It$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/It$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/It$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/It;->e:Lo/It$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    return-void
.end method

.method public static final d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lo/It;->e:Lo/It$StateListAnimator;

    invoke-virtual {v0}, Lo/It$StateListAnimator;->d()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private final e()Z
    .locals 2

    .line 105
    iget-object v0, p0, Lo/It;->fragmentHelper:Lo/Ih;

    const-string v1, "fragmentHelper"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/Ih;->f()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public canApplyBrowseExperience()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canShowActionBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleProfileActivated()V
    .locals 3

    .line 63
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 64
    sget-object v0, Lo/It;->e:Lo/It$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 65
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finishAllActivities(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0}, Lo/It;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v1

    const/4 v2, 0x0

    .line 67
    invoke-static {v0, v1, v2}, Lo/Jx;->d(Landroid/content/Context;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lo/It;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public hasBottomNavBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 2

    .line 76
    iget-object v0, p0, Lo/It;->fragmentHelper:Lo/Ih;

    const-string v1, "fragmentHelper"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/Ih;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    const-string v1, "fragmentHelper.playContext"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 81
    sget-object v0, Lo/It;->e:Lo/It$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 84
    invoke-virtual {p0}, Lo/It;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v1, "supportFragmentManager"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/SerializablePermission;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lo/It;->closeCastPanel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a()V

    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lo/It;->fragmentHelper:Lo/Ih;

    invoke-interface {v0}, Lo/Ih;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    invoke-static {}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a()V

    .line 95
    invoke-direct {p0}, Lo/It;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {p0}, Lo/It;->finish()V

    :cond_2
    return-void

    .line 101
    :cond_3
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 33
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {}, Lo/TextServicesManager;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/It;->setContentView(I)V

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;

    move-object v3, p0

    check-cast v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;-><init>(ZLcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/os/Bundle;ILo/amc;)V

    check-cast v0, Lo/Ih;

    invoke-virtual {p0, v0}, Lo/It;->setFragmentHelper(Lo/Ih;)V

    if-nez p1, :cond_0

    .line 39
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lo/Ir;->g()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lo/It;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public shouldApplyPaddingToSlidingPanel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
