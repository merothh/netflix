.class public Lo/DF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Il;


# instance fields
.field private a:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;

.field private d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lo/DF;->a:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;

    .line 42
    iput-object p2, p0, Lo/DF;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method

.method private c(Landroid/content/Intent;)Z
    .locals 2

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lo/DW;->x()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 64
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_video_type_string_value"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private f(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "extra_action_token"

    .line 246
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private g(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 3

    const-string v0, "extra_play_context"

    .line 231
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    if-nez v0, :cond_0

    .line 233
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playContext is null!  id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lo/DF;->h(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-direct {p0, p1}, Lo/DF;->m(Landroid/content/Intent;)Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " actionToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lo/DF;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 235
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 p1, -0x17e

    const-string v1, "DetailsHelper"

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method private h(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "extra_video_id"

    .line 222
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private i(Landroid/content/Intent;)Z
    .locals 2

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lo/DW;->x()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 72
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_video_type_string_value"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private j(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 0

    .line 226
    invoke-direct {p0, p1}, Lo/DF;->i(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_0
    return-object p1
.end method

.method private m(Landroid/content/Intent;)Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;
    .locals 1

    const-string v0, "extra_action"

    .line 254
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 2

    .line 145
    new-instance v0, Lo/afC;

    invoke-direct {p0, p1}, Lo/DF;->g(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    invoke-direct {p0, p1}, Lo/DF;->h(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lo/afC;-><init>(Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Landroid/content/Intent;Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Landroid/content/Intent;Z)V
    .locals 0

    return-void
.end method

.method public a(Lo/DY;Landroid/content/Intent;)V
    .locals 2

    .line 46
    invoke-static {}, Lo/ady;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lo/DD;

    iget-object v1, p0, Lo/DF;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0, p2}, Lo/DF;->j(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lo/DD;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    invoke-virtual {p1, v0}, Lo/DY;->c(Lo/DD;)V

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lo/DR;

    iget-object v1, p0, Lo/DF;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Lo/DR;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 50
    invoke-virtual {p1, v0}, Lo/DY;->b(Lo/DR;)V

    .line 51
    invoke-direct {p0, p2}, Lo/DF;->j(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/DR;->c(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lo/DF;->a:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->c()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)Lcom/netflix/cl/model/AppView;
    .locals 0

    .line 134
    sget-object p1, Lcom/netflix/cl/model/AppView;->movieDetails:Lcom/netflix/cl/model/AppView;

    return-object p1
.end method

.method public c(Landroid/content/Intent;Lcom/netflix/mediaclient/android/fragment/NetflixFrag;)V
    .locals 0

    .line 203
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->f()V

    return-void
.end method

.method public c(Landroid/content/Intent;Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Z)V
    .locals 0

    return-void
.end method

.method public d(Landroid/content/Intent;)Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
    .locals 7

    .line 78
    invoke-virtual {p0, p1}, Lo/DF;->e(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    invoke-direct {p0, p1}, Lo/DF;->j(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    const-string v1, "extra_video_id"

    .line 80
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_episode_id"

    .line 81
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    sget-object v3, Lcom/netflix/cl/model/AppView;->UNKNOWN:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v3}, Lcom/netflix/cl/model/AppView;->ordinal()I

    move-result v3

    const-string v4, "extra_model_view_id"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 86
    invoke-direct {p0, p1}, Lo/DF;->g(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v4

    .line 87
    invoke-static {}, Lo/adq;->d()Z

    move-result v5

    .line 89
    invoke-static {}, Lo/ady;->j()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    :cond_0
    const-string v6, "extra_video_type_string_value"

    if-eqz v5, :cond_1

    .line 97
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 94
    invoke-static {v1, v3, v5, v2}, Lo/DY;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lo/DY;

    move-result-object v2

    goto :goto_0

    .line 101
    :cond_1
    invoke-static {}, Lo/eG;->g()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lo/adq;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 102
    sget-object v5, Lo/FN;->u:Lo/FN$Application;

    .line 105
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-virtual {v5, v1, v3, v6, v2}, Lo/FN$Application;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lo/Eo;

    move-result-object v2

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-static {v1, v3, v5, v2}, Lo/Eo;->c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lo/Eo;

    move-result-object v2

    .line 119
    :goto_0
    new-instance v3, Lcom/netflix/mediaclient/ui/details/VideoInfo;

    invoke-direct {v3, v1, v0, v4}, Lcom/netflix/mediaclient/ui/details/VideoInfo;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    invoke-virtual {v2, v3}, Lo/DY;->c(Lcom/netflix/mediaclient/ui/details/VideoInfo;)V

    .line 120
    invoke-virtual {p0, v2, p1}, Lo/DF;->a(Lo/DY;Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public d(Landroid/content/Intent;Landroidx/fragment/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public e(Landroid/content/Intent;)Z
    .locals 1

    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lo/DF;->c(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lo/DF;->i(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
