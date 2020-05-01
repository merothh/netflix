.class public Lo/Kg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Il;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Intent;",
            "Lcom/netflix/mediaclient/android/fragment/NetflixFrag;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private e:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/GenreFragmentCreator$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/GenreFragmentCreator$1;-><init>(Lo/Kg;)V

    iput-object v0, p0, Lo/Kg;->a:Ljava/util/Map;

    .line 56
    iput-object p1, p0, Lo/Kg;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 57
    iput-object p2, p0, Lo/Kg;->e:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;

    return-void
.end method

.method private g(Landroid/content/Intent;)Z
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Lo/Kg;->h(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "genre_parcel"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private h(Landroid/content/Intent;)Z
    .locals 2

    .line 77
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lo/Lo;->j()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private j(Landroid/content/Intent;)Z
    .locals 1

    .line 67
    invoke-direct {p0, p1}, Lo/Kg;->h(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lomo_parcel"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 2

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "genre_parcel"

    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    const-string v1, "lomo_parcel"

    .line 107
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 109
    new-instance v1, Lo/Kg$1;

    invoke-direct {v1, p0, v0, p1}, Lo/Kg$1;-><init>(Lo/Kg;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Intent;Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Landroid/content/Intent;Z)V
    .locals 0

    if-eqz p3, :cond_1

    .line 198
    invoke-virtual {p0, p3}, Lo/Kg;->e(Landroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    .line 199
    :goto_1
    invoke-virtual {p0, p1}, Lo/Kg;->c(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    .line 200
    new-instance p1, Lo/CharBuffer;

    invoke-direct {p1}, Lo/CharBuffer;-><init>()V

    invoke-static {}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->m()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lo/CharBuffer;->setDuration(J)Lo/CharsetDecoder;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance p1, Lo/afW;

    .line 201
    invoke-static {}, Lo/adq;->d()Z

    move-result p3

    invoke-direct {p1, p3}, Lo/afW;-><init>(Z)V

    iget-object p3, p0, Lo/Kg;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const p4, 0x1010054

    .line 202
    invoke-static {p3, p4}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/app/Activity;I)I

    move-result p3

    .line 201
    invoke-virtual {p1, p3}, Lo/afW;->a(I)Lo/CharsetDecoder;

    move-result-object p1

    .line 200
    :goto_2
    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->setExitTransition(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public a()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lo/Kg;->e:Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->c()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)Lcom/netflix/cl/model/AppView;
    .locals 0

    .line 97
    sget-object p1, Lcom/netflix/cl/model/AppView;->browseTitlesGallery:Lcom/netflix/cl/model/AppView;

    return-object p1
.end method

.method public c(Landroid/content/Intent;Lcom/netflix/mediaclient/android/fragment/NetflixFrag;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lo/Kg;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->f()V

    return-void
.end method

.method public c(Landroid/content/Intent;Lcom/netflix/mediaclient/android/fragment/NetflixFrag;Z)V
    .locals 2

    .line 189
    invoke-virtual {p0, p1}, Lo/Kg;->c(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 190
    new-instance p1, Lo/CharBuffer;

    invoke-direct {p1}, Lo/CharBuffer;-><init>()V

    invoke-static {}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->m()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/CharBuffer;->setDuration(J)Lo/CharsetDecoder;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lo/afW;

    .line 191
    invoke-static {}, Lo/adq;->d()Z

    move-result p3

    invoke-direct {p1, p3}, Lo/afW;-><init>(Z)V

    iget-object p3, p0, Lo/Kg;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v0, 0x1010054

    invoke-static {p3, v0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/app/Activity;I)I

    move-result p3

    invoke-virtual {p1, p3}, Lo/afW;->a(I)Lo/CharsetDecoder;

    move-result-object p1

    .line 190
    :goto_0
    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->setEnterTransition(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public c(Landroid/content/Intent;)Z
    .locals 1

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "genre_filter"

    .line 184
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d(Landroid/content/Intent;)Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
    .locals 9

    .line 133
    invoke-virtual {p0, p1}, Lo/Kg;->e(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 134
    iget-object v0, p0, Lo/Kg;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lo/Kg;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    return-object p1

    .line 137
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v2, "genre_id"

    .line 140
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "genre_filter"

    .line 141
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "genre_parcel"

    .line 142
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    const-string v5, "lomo_parcel"

    .line 143
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    const/4 v6, 0x0

    const-string v7, "expandCastPlayer"

    .line 145
    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 146
    iget-object v7, p0, Lo/Kg;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyCastPlayerShown(Z)V

    .line 154
    :cond_1
    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "GenreFragmentCreator"

    if-eqz v7, :cond_2

    if-nez v5, :cond_2

    const-string p1, "No new ID to show"

    .line 155
    invoke-static {v8, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    const-string v7, "lolomo"

    .line 159
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string p1, "Won\'t try to display home lolomo"

    .line 160
    invoke-static {v8, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    if-eqz v5, :cond_4

    .line 164
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/Kh;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 165
    invoke-static {v5}, Lo/Kh;->a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Lo/Kh;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz v4, :cond_5

    const-string v1, "similars_videotype"

    .line 166
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 167
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v4}, Lo/Kc;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lo/Kc;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz v4, :cond_6

    .line 168
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getGenreType()Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->a:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    if-ne v0, v1, :cond_6

    .line 169
    invoke-static {v2, v3, v4}, Lo/Kc;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lo/Kc;

    move-result-object p1

    return-object p1

    .line 170
    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lo/Kg;->c(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "downloadable"

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 172
    invoke-static {v2, v3, v4}, Lo/Kc;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lo/Kc;

    move-result-object p1

    return-object p1

    .line 174
    :cond_7
    invoke-virtual {p0, p1}, Lo/Kg;->b(Landroid/content/Intent;)Lcom/netflix/cl/model/AppView;

    move-result-object p1

    invoke-static {v2, v3, v4, p1, v6}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Lcom/netflix/cl/model/AppView;Z)Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v1
.end method

.method public d(Landroid/content/Intent;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 214
    instance-of v0, p2, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lo/Kg;->a:Ljava/util/Map;

    check-cast p2, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public e(Landroid/content/Intent;)Z
    .locals 1

    .line 61
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    invoke-direct {p0, p1}, Lo/Kg;->j(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    invoke-direct {p0, p1}, Lo/Kg;->g(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
