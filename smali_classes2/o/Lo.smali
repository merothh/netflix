.class public Lo/Lo;
.super Lo/CookieSyncManager;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private c:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

.field private d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/CookieSyncManager;-><init>()V

    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V
    .locals 2

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lo/Lo;->j()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "lomo_parcel"

    .line 44
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private g()Lcom/netflix/cl/model/AppView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
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

    .line 64
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lo/Ls;

    goto :goto_0

    :cond_0
    const-class v0, Lo/Lo;

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected a()Landroidx/fragment/app/Fragment;
    .locals 4

    .line 111
    iget-object v0, p0, Lo/Lo;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-eqz v0, :cond_0

    .line 112
    invoke-static {v0}, Lo/Kh;->a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Lo/Kh;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lo/Lo;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lo/Lo;->c:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lo/Kc;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Ljava/lang/String;)Lo/Kc;

    move-result-object v0

    return-object v0
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canApplyBrowseExperience()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 148
    new-instance v0, Lo/Lo$5;

    invoke-direct {v0, p0}, Lo/Lo$5;-><init>(Lo/Lo;)V

    return-object v0
.end method

.method public getActionBarParentViewId()I
    .locals 1

    .line 96
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tz:I

    return v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 4

    .line 120
    iget-object v0, p0, Lo/Lo;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-eqz v0, :cond_3

    .line 121
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x66f1911

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "queue"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 125
    invoke-direct {p0}, Lo/Lo;->g()Lcom/netflix/cl/model/AppView;

    move-result-object v0

    return-object v0

    .line 123
    :cond_2
    sget-object v0, Lcom/netflix/cl/model/AppView;->myListGallery:Lcom/netflix/cl/model/AppView;

    return-object v0

    .line 127
    :cond_3
    iget-object v0, p0, Lo/Lo;->c:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    if-eqz v0, :cond_5

    .line 128
    sget-object v0, Lo/Lo$4;->a:[I

    iget-object v1, p0, Lo/Lo;->c:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getGenreType()Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 132
    invoke-direct {p0}, Lo/Lo;->g()Lcom/netflix/cl/model/AppView;

    move-result-object v0

    return-object v0

    .line 130
    :cond_4
    sget-object v0, Lcom/netflix/cl/model/AppView;->browseTitles:Lcom/netflix/cl/model/AppView;

    return-object v0

    .line 135
    :cond_5
    invoke-direct {p0}, Lo/Lo;->g()Lcom/netflix/cl/model/AppView;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lo/Lo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lomo_parcel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    iput-object v0, p0, Lo/Lo;->d:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 81
    invoke-virtual {p0}, Lo/Lo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "genre_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Lo;->a:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lo/Lo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "genre_parcel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    iput-object v0, p0, Lo/Lo;->c:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    .line 84
    invoke-super {p0, p1}, Lo/CookieSyncManager;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lo/Lo;->updateActionBar()Z

    return-void
.end method

.method public shouldApplyPaddingToSlidingPanel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
