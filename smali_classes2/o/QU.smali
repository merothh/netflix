.class public Lo/QU;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source ""

# interfaces
.implements Lo/CY;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/QU$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lo/QU$TaskDescription;


# instance fields
.field private final b:Lcom/netflix/mediaclient/servicemgr/PlayContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/QU$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/QU$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/QU;->d:Lo/QU$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    .line 32
    invoke-static {}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->f()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    const-string v1, "PlayContextImp.createOfflineMyDownloadsContext()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/QU;->b:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Lo/QU;->d:Lo/QU$TaskDescription;

    invoke-virtual {v0, p0}, Lo/QU$TaskDescription;->d(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1

    sget-object v0, Lo/QU;->d:Lo/QU$TaskDescription;

    invoke-virtual {v0, p0, p1, p2}, Lo/QU$TaskDescription;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static final c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lo/QU;->d:Lo/QU$TaskDescription;

    invoke-virtual {v0}, Lo/QU$TaskDescription;->b()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static final d(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 1

    sget-object v0, Lo/QU;->d:Lo/QU$TaskDescription;

    invoke-virtual {v0, p0, p1}, Lo/QU$TaskDescription;->d(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Lo/QU;->d:Lo/QU$TaskDescription;

    invoke-virtual {v0, p0}, Lo/QU$TaskDescription;->d(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bottomTabReselected(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;)V
    .locals 1

    const-string v0, "netflixTab"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lo/QU;->fragmentHelper:Lo/Ih;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lo/Ih;->e(I)Z

    .line 219
    iget-object p1, p0, Lo/QU;->fragmentHelper:Lo/Ih;

    const-string v0, "fragmentHelper"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/Ih;->f()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object p1

    instance-of v0, p1, Lo/Rr;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lo/Rr;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lo/Rr;->H()V

    :cond_1
    return-void
.end method

.method public canApplyBrowseExperience()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasBottomNavBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasUpAction()Z
    .locals 2

    .line 206
    iget-object v0, p0, Lo/QU;->fragmentHelper:Lo/Ih;

    const-string v1, "fragmentHelper"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/Ih;->j()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 2

    .line 234
    iget-object v0, p0, Lo/QU;->fragmentHelper:Lo/Ih;

    const-string v1, "fragmentHelper"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/Ih;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lo/QU;->fragmentHelper:Lo/Ih;

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/Ih;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    instance-of v1, v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    if-nez v1, :cond_0

    return-object v0

    .line 242
    :cond_0
    iget-object v0, p0, Lo/QU;->b:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 182
    sget-object v0, Lo/QU;->d:Lo/QU$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 185
    invoke-virtual {p0}, Lo/QU;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v1, "supportFragmentManager"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/SerializablePermission;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Lo/QU;->closeCastPanel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-static {}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a()V

    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lo/QU;->fragmentHelper:Lo/Ih;

    invoke-interface {v0}, Lo/Ih;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    invoke-static {}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a()V

    .line 196
    iget-object v0, p0, Lo/QU;->fragmentHelper:Lo/Ih;

    const-string v1, "fragmentHelper"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/Ih;->f()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v0

    if-nez v0, :cond_2

    .line 197
    invoke-virtual {p0}, Lo/QU;->finish()V

    :cond_2
    return-void

    .line 202
    :cond_3
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigureActionBarState(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onConfigureActionBarState(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V

    .line 212
    iget-object v0, p0, Lo/QU;->fragmentHelper:Lo/Ih;

    const-string v1, "fragmentHelper"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/Ih;->j()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lo/QU;->hasUpAction()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 143
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-static {}, Lo/TextServicesManager;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/QU;->setContentView(I)V

    .line 147
    invoke-virtual {p0, p1}, Lo/QU;->setupCastPlayerFrag(Landroid/os/Bundle;)V

    .line 149
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;

    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, p1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;-><init>(ZLcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/os/Bundle;)V

    .line 150
    new-instance v1, Lo/Rm;

    invoke-direct {v1, v0}, Lo/Rm;-><init>(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;)V

    check-cast v1, Lo/Il;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->b(Lo/Il;)V

    .line 151
    move-object v1, v0

    check-cast v1, Lo/Ih;

    invoke-virtual {p0, v1}, Lo/QU;->setFragmentHelper(Lo/Ih;)V

    if-nez p1, :cond_1

    .line 155
    sget-object p1, Lo/QU;->d:Lo/QU$TaskDescription;

    invoke-virtual {p0}, Lo/QU;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lo/QU$TaskDescription;->a(Lo/QU$TaskDescription;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 156
    sget-object p1, Lo/QU;->d:Lo/QU$TaskDescription;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lo/QU$TaskDescription;->d(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->a(Landroid/content/Intent;)Z

    .line 159
    :cond_0
    invoke-virtual {p0}, Lo/QU;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->a(Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 168
    invoke-virtual {p0}, Lo/QU;->closeAllPopupMenus()V

    .line 171
    invoke-static {p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lo/QU;->fragmentHelper:Lo/Ih;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/Ih;->e(I)Z

    .line 173
    sget-object v0, Lo/QU;->d:Lo/QU$TaskDescription;

    invoke-static {v0, p1}, Lo/QU$TaskDescription;->a(Lo/QU$TaskDescription;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lo/QU;->fragmentHelper:Lo/Ih;

    invoke-interface {v0, p1}, Lo/Ih;->a(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public performUpAction()V
    .locals 3

    .line 223
    iget-object v0, p0, Lo/QU;->fragmentHelper:Lo/Ih;

    invoke-interface {v0}, Lo/Ih;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    invoke-virtual {p0}, Lo/QU;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    move-object v0, p0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/cl/model/AppView;->downloadsTab:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/QU;->startActivity(Landroid/content/Intent;)V

    .line 227
    invoke-virtual {p0}, Lo/QU;->finish()V

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p0}, Lo/QU;->hasBottomNavBar()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/QU;->fragmentHelper:Lo/Ih;

    const-string v1, "fragmentHelper"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/Ih;->j()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 229
    :cond_1
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onBackPressed()V

    :cond_2
    :goto_0
    return-void
.end method

.method public shouldApplyPaddingToSlidingPanel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateActionBar()Z
    .locals 2

    .line 254
    iget-object v0, p0, Lo/QU;->fragmentHelper:Lo/Ih;

    const-string v1, "fragmentHelper"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/Ih;->f()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->ad_()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
