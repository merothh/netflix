.class public Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;
.super Lo/II;
.source ""


# instance fields
.field private d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public debugMenuItems:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional<",
            "Lo/Dv;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lo/II;-><init>()V

    .line 42
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;)Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->k()Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;

    move-result-object p0

    return-object p0
.end method

.method public static x()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lo/CP;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Landroidx/fragment/app/Fragment;
    .locals 4

    .line 110
    invoke-static {}, Lo/eT;->i()Z

    move-result v0

    const-string v1, "extra_kids_color_id"

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$Application;->I:I

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lo/Je;->c(Ljava/lang/String;I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$Application;->I:I

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lo/IL;->e(Ljava/lang/String;I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public allowTransitionAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 92
    new-instance v0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity$5;-><init>(Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;)V

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 119
    sget-object v0, Lcom/netflix/cl/model/AppView;->characterDetails:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/DL;

    invoke-interface {v0}, Lo/DL;->i()Z

    move-result v0

    return v0
.end method

.method public m()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_video_type_string_value"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 53
    invoke-super {p0, p1}, Lo/II;->onCreate(Landroid/os/Bundle;)V

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Start intent must provide extra value: extra_video_type_string_value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 85
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->debugMenuItems:Lcom/google/common/base/Optional;

    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->debugMenuItems:Lcom/google/common/base/Optional;

    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Dv;

    invoke-interface {p1, p2}, Lo/Dv;->d(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public performUpAction()V
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->handleBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->finish()V

    :cond_0
    return-void
.end method

.method public setTheme()V
    .locals 1

    .line 58
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->P:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->setTheme(I)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lo/eq;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->F:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->setTheme(I)V

    goto :goto_0

    .line 64
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->E:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->setTheme(I)V

    :goto_0
    return-void
.end method
