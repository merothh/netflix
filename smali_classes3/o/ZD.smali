.class public Lo/ZD;
.super Lo/CookieSyncManager;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/CookieSyncManager;-><init>()V

    return-void
.end method

.method public static j()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lo/Zw;

    goto :goto_0

    :cond_0
    const-class v0, Lo/ZD;

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected a()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lo/ZD;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lo/ZE;->e(Landroid/content/Intent;)Lo/ZE;

    move-result-object v0

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 32
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchSuggestionTitleResults:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigureActionBarState(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;)V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lo/ZD;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    :cond_0
    return-void
.end method
