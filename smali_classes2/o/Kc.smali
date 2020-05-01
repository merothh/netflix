.class public Lo/Kc;
.super Lo/Kh;
.source ""


# instance fields
.field private m:Ljava/lang/String;

.field private n:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lo/Kh;-><init>()V

    .line 104
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;-><init>(Lo/Kc;)V

    iput-object v0, p0, Lo/Kc;->n:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lo/Kc;
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 38
    invoke-static {p0, p1, p2, v0, v1}, Lo/Kc;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Ljava/lang/String;Ljava/lang/String;)Lo/Kc;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Ljava/lang/String;Ljava/lang/String;)Lo/Kc;
    .locals 3

    .line 53
    new-instance v0, Lo/Kc;

    invoke-direct {v0}, Lo/Kc;-><init>()V

    .line 55
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "list_id"

    .line 56
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p0, "genre_filter"

    .line 58
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, "genre_parcel"

    .line 61
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    const-string p0, "genre_from_lolomo"

    .line 63
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const-string p0, "similars_videotype"

    .line 65
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_2
    invoke-virtual {v0, v1}, Lo/Kc;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lo/Kc;
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 32
    invoke-static {p0, v0, p2, p1, v1}, Lo/Kc;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Ljava/lang/String;Ljava/lang/String;)Lo/Kc;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Ljava/lang/String;)Lo/Kc;
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-static {p0, p1, p2, v0, p3}, Lo/Kc;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Ljava/lang/String;Ljava/lang/String;)Lo/Kc;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public ad_()Z
    .locals 4

    .line 84
    invoke-virtual {p0}, Lo/Kc;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lo/Kc;->x()Ljava/lang/String;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lo/Kc;->m:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c()Lo/KU;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 94
    iget-object v3, p0, Lo/Kc;->m:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lo/KU;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 95
    invoke-static {v0, v1, v1}, Lo/KU;->d(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;ZI)V

    const/4 v0, 0x1

    return v0

    .line 101
    :cond_0
    invoke-super {p0}, Lo/Kh;->ad_()Z

    move-result v0

    return v0
.end method

.method protected g()V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lo/Kc;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    const-class v1, Lo/Kh;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 77
    invoke-virtual {p0}, Lo/Kc;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "genre_filter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Kc;->m:Ljava/lang/String;

    .line 79
    :cond_0
    invoke-super {p0}, Lo/Kh;->g()V

    return-void
.end method

.method public v()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;
    .locals 1

    .line 216
    iget-object v0, p0, Lo/Kc;->n:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    return-object v0
.end method
