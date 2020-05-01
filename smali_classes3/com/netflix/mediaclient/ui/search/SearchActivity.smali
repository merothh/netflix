.class public Lcom/netflix/mediaclient/ui/search/SearchActivity;
.super Lo/CookieSyncManager;
.source ""

# interfaces
.implements Lo/CY;


# instance fields
.field private a:Lo/OnDateChangedListener;

.field private final c:Lo/OnDateChangedListener$Application;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lo/CookieSyncManager;-><init>()V

    .line 64
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchActivity$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity$3;-><init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->c:Lo/OnDateChangedListener$Application;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->g()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "android.intent.action.VIEW"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 248
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->g()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.SEARCH"

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "query"

    .line 250
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "submit"

    const/4 v1, 0x1

    .line 251
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 253
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->a:Lo/OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0, p1, p0}, Lo/OnDateChangedListener;->e(Landroid/content/Intent;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "SearchActivity"

    const-string v3, "search create %s"

    .line 91
    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 92
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->g()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "android.intent.action.SEARCH"

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 93
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "query"

    .line 94
    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 95
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "submit"

    .line 96
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method private static g()Ljava/lang/Class;
    .locals 1

    .line 102
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/netflix/mediaclient/ui/search/PortraitSearchActivity;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/netflix/mediaclient/ui/search/SearchActivity;

    :goto_0
    return-object v0
.end method

.method private l()V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->a:Lo/OnDateChangedListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string v2, ""

    .line 317
    invoke-virtual {v0, v2, v1}, Lo/OnDateChangedListener;->e(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private n()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
    .locals 1

    .line 150
    invoke-static {}, Lo/eM;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Lo/ZT;

    invoke-direct {v0}, Lo/ZT;-><init>()V

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Lo/ZN;

    invoke-direct {v0}, Lo/ZN;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 112
    invoke-static {}, Lo/dO;->g()Z

    move-result v0

    if-nez v0, :cond_6

    .line 113
    invoke-static {}, Lo/dZ;->g()Z

    move-result v0

    if-nez v0, :cond_6

    .line 114
    invoke-static {}, Lo/fl;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    invoke-static {}, Lo/eo;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/eB;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    :cond_1
    invoke-static {}, Lo/adq;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    const-class v0, Lo/n;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/n;

    invoke-interface {v0}, Lo/n;->a()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0

    .line 122
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Tablets must not lookup SearchLiteModule for fragment"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 126
    :cond_3
    invoke-static {}, Lo/fl;->j()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lo/eV;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 130
    :cond_4
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;-><init>()V

    return-object v0

    .line 128
    :cond_5
    :goto_0
    sget-object v0, Lo/ZF;->b:Lo/ZF$StateListAnimator;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ZF$StateListAnimator;->d(Ljava/lang/String;)Lo/ZF;

    move-result-object v0

    return-object v0

    .line 115
    :cond_6
    :goto_1
    invoke-static {}, Lo/ZQ;->T()Lo/ZQ;

    move-result-object v0

    return-object v0
.end method

.method public bottomTabReselected(Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar$NetflixTab;)V
    .locals 0

    .line 232
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {p1}, Lo/Ih;->b()Z

    .line 233
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->l()V

    return-void
.end method

.method public canApplyBrowseExperience()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canShowCastMenuFab()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 3

    .line 274
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Lo/Jm;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->statusBarBackground:Lo/QuickContactBadge;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->c:Lo/OnDateChangedListener$Application;

    invoke-direct {v0, p0, v1, v2}, Lo/Jm;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/QuickContactBadge;Lo/OnDateChangedListener$Application;)V

    goto :goto_0

    .line 277
    :cond_0
    new-instance v0, Lo/OnDateChangedListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->statusBarBackground:Lo/QuickContactBadge;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->c:Lo/OnDateChangedListener$Application;

    invoke-direct {v0, p0, v1, v2}, Lo/OnDateChangedListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/QuickContactBadge;Lo/OnDateChangedListener$Application;)V

    .line 279
    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->a:Lo/OnDateChangedListener;

    return-object v0
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 294
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity$1;-><init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 107
    invoke-static {}, Lo/TextServicesManager;->e()I

    move-result v0

    return v0
.end method

.method public getActionBarParentViewId()I
    .locals 1

    .line 222
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cT:I

    return v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 328
    sget-object v0, Lcom/netflix/cl/model/AppView;->search:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 2

    .line 362
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 363
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    if-eqz v1, :cond_0

    .line 364
    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->i()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasBottomNavBar()Z
    .locals 1

    .line 347
    invoke-static {}, Lo/adq;->c()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 2

    .line 351
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 352
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    if-eqz v1, :cond_0

    .line 353
    move-object v1, v0

    check-cast v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->X()V

    .line 355
    :cond_0
    instance-of v1, v0, Lo/ZF;

    if-eqz v1, :cond_1

    .line 356
    check-cast v0, Lo/ZF;

    invoke-virtual {v0}, Lo/ZF;->d()V

    :cond_1
    return-void
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {v0}, Lo/Ih;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {v0}, Lo/Ih;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    return-object v0

    .line 337
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->s:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v0
.end method

.method public onConfigureActionBarState(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V
    .locals 3

    const/4 v0, 0x0

    .line 286
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    .line 287
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->a:Lo/OnDateChangedListener;

    .line 288
    invoke-virtual {v0}, Lo/OnDateChangedListener;->k()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Landroid/view/View;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    new-instance v0, Lo/Fragment$StateListAnimator;

    const/4 v1, -0x1

    const v2, 0x800003

    invoke-direct {v0, v1, v1, v2}, Lo/Fragment$StateListAnimator;-><init>(III)V

    .line 289
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Lo/Fragment$StateListAnimator;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 135
    invoke-super {p0, p1}, Lo/CookieSyncManager;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->e:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->b:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    :goto_0
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->d(Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;)V

    .line 139
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v1, "PRE_QUERY_LIST"

    invoke-virtual {v0, v1}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    invoke-virtual {v0}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v0

    .line 141
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->qQ:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->n()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lo/UnsupportedEncodingException;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lo/UnsupportedEncodingException;

    .line 142
    invoke-virtual {v0}, Lo/UnsupportedEncodingException;->b()I

    .line 143
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    invoke-virtual {v0}, Lo/SerializablePermission;->b()Z

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->b(Landroid/content/Intent;)V

    .line 146
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;-><init>(ZLcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->fragmentHelper:Lo/Ih;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setFragmentHelper(Lo/Ih;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 192
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    invoke-interface {v0}, Lo/zG;->e()V

    .line 199
    :cond_0
    invoke-super {p0}, Lo/CookieSyncManager;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 258
    invoke-super {p0, p1}, Lo/CookieSyncManager;->onNewIntent(Landroid/content/Intent;)V

    .line 260
    invoke-static {p1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->c(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0, v1, v1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {v0, p1}, Lo/Ih;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {p0, v1, v1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->overridePendingTransition(II)V

    return-void

    .line 267
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 268
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->b(Landroid/content/Intent;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 171
    invoke-super {p0, p1}, Lo/CookieSyncManager;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->a:Lo/OnDateChangedListener;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->a(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->a:Lo/OnDateChangedListener;

    const/4 v0, 0x1

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Lo/OnDateChangedListener;->e(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 159
    invoke-super {p0}, Lo/CookieSyncManager;->onResume()V

    .line 160
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->endRenderNavigationLevelSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 165
    invoke-super {p0, p1}, Lo/CookieSyncManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 166
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 180
    invoke-super {p0}, Lo/CookieSyncManager;->onStop()V

    .line 182
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->a:Lo/OnDateChangedListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v1}, Lo/OnDateChangedListener;->c(Z)V

    :cond_0
    return-void
.end method

.method public performUpAction()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->fragmentHelper:Lo/Ih;

    invoke-interface {v0}, Lo/Ih;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-super {p0}, Lo/CookieSyncManager;->performUpAction()V

    goto :goto_0

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->l()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTheme()V
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->shouldShowKidsTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->Q:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setTheme(I)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-static {}, Lo/eq;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->J:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setTheme(I)V

    goto :goto_0

    .line 215
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->K:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setTheme(I)V

    :goto_0
    return-void
.end method

.method public shouldApplyPaddingToSlidingPanel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
