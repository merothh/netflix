.class public final Lo/Ra;
.super Lo/Rc;
.source ""


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/Ba;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AS;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lo/ES;

.field private l:Ljava/util/HashMap;

.field private m:Lo/Bb;

.field private final n:Lo/UpdateEngine;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lo/Rc;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo/Ra;->j:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo/Ra;->f:Ljava/util/List;

    .line 25
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    move-object v1, p0

    check-cast v1, Lo/UnicodeScript;

    invoke-virtual {v0, v1}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    iput-object v0, p0, Lo/Ra;->n:Lo/UpdateEngine;

    return-void
.end method

.method private final J()Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;
    .locals 1

    .line 108
    new-instance v0, Lo/Ra$Application;

    invoke-direct {v0, p0}, Lo/Ra$Application;-><init>(Lo/Ra;)V

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;

    return-object v0
.end method

.method private final M()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lo/Ra;->n:Lo/UpdateEngine;

    .line 99
    const-class v1, Lo/DG;

    .line 98
    invoke-virtual {v0, v1}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    .line 100
    new-instance v1, Lo/Ra$TaskDescription;

    invoke-direct {v1, p0}, Lo/Ra$TaskDescription;-><init>(Lo/Ra;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a(Lo/Ra;)Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/Ra;->J()Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lo/Ra;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lo/Ra;->d(I)V

    return-void
.end method

.method public static final synthetic a(Lo/Ra;Lo/ES;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lo/Ra;->k:Lo/ES;

    return-void
.end method

.method public static final synthetic b(Lo/Ra;)Lo/Ba;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/Ra;->i:Lo/Ba;

    return-object p0
.end method

.method private final b(Lo/Ba;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lo/Ra;->k:Lo/ES;

    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lo/Ra;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lo/ES;->c(Lo/Ba;I)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 139
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    move-object v1, p0

    check-cast v1, Lo/UnicodeScript;

    invoke-virtual {v0, v1}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$fetchMoreEpisodesForSeason$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$fetchMoreEpisodesForSeason$1;-><init>(Lo/Ra;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v3, 0x0

    .line 145
    sget-object p1, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$fetchMoreEpisodesForSeason$2;->c:Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$fetchMoreEpisodesForSeason$2;

    move-object v2, p1

    check-cast v2, Lo/alA;

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 140
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static final synthetic c(Lo/Ra;)Lo/UpdateEngine;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/Ra;->n:Lo/UpdateEngine;

    return-object p0
.end method

.method public static final synthetic c(Lo/Ra;Lo/Ba;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lo/Ra;->b(Lo/Ba;)V

    return-void
.end method

.method public static final synthetic c(Lo/Ra;Lo/Bb;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lo/Ra;->m:Lo/Bb;

    return-void
.end method

.method public static final synthetic d(Lo/Ra;)Lo/ES;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/Ra;->k:Lo/ES;

    return-object p0
.end method

.method private final d(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lo/Ra;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lo/Ra;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Ba;

    .line 130
    iput-object p1, p0, Lo/Ra;->i:Lo/Ba;

    .line 131
    iget-object v0, p0, Lo/Ra;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    invoke-direct {p0, p1}, Lo/Ra;->b(Lo/Ba;)V

    return-void
.end method

.method public static final synthetic e(Lo/Ra;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/Ra;->f:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic i(Lo/Ra;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/Ra;->j:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public C()V
    .locals 1

    iget-object v0, p0, Lo/Ra;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected D()V
    .locals 4

    .line 29
    invoke-virtual {p0}, Lo/Ra;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {p0}, Lo/Ra;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lo/Ra;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineEpisodesFragmentV2_Ab11466$initAdapter$1;-><init>(Lo/Ra;)V

    check-cast v3, Lo/alO;

    invoke-static {v0, v1, v2, v3}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lo/Sz;
    .locals 2

    .line 75
    new-instance p1, Lo/Sz;

    invoke-virtual {p0}, Lo/Ra;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lo/Ra;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    move-result-object p2

    iget-object v0, p0, Lo/Ra;->j:Ljava/util/List;

    iget-object v1, p0, Lo/Ra;->m:Lo/Bb;

    invoke-direct {p1, p2, v0, v1}, Lo/Sz;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;Ljava/util/List;Lo/Bb;)V

    return-object p1
.end method

.method public synthetic c(Ljava/lang/String;Ljava/lang/String;)Lo/Qk;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lo/Ra;->a(Ljava/lang/String;Ljava/lang/String;)Lo/Sz;

    move-result-object p1

    check-cast p1, Lo/Qk;

    return-object p1
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-super {p0, p1, p2, p3}, Lo/Rc;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    invoke-direct {p0}, Lo/Ra;->M()V

    :cond_0
    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/Rc;->onDestroyView()V

    invoke-virtual {p0}, Lo/Ra;->C()V

    return-void
.end method
