.class public final Lo/KU;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/KU$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/KU$ActionBar;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lo/KW;

.field private final c:Lo/KS;

.field private d:Ljava/lang/String;

.field private f:Lo/Registrant;

.field private g:Landroid/view/View;

.field private final h:Landroid/graphics/drawable/Drawable;

.field private final i:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

.field private j:Lio/reactivex/disposables/Disposable;

.field private final k:Lcom/netflix/mediaclient/ui/home/HomeActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/KU$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/KU$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/KU;->e:Lo/KU$ActionBar;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 1

    const-string v0, "netflixActionBar"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/KU;->i:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    iput-object p2, p0, Lo/KU;->k:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    const-string p1, "lolomo"

    .line 72
    iput-object p1, p0, Lo/KU;->a:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lo/KU;->d:Ljava/lang/String;

    .line 76
    new-instance p1, Lo/KS;

    invoke-direct {p1}, Lo/KS;-><init>()V

    iput-object p1, p0, Lo/KU;->c:Lo/KS;

    .line 78
    new-instance p1, Lo/KW;

    invoke-direct {p1}, Lo/KW;-><init>()V

    iput-object p1, p0, Lo/KU;->b:Lo/KW;

    .line 86
    sget-object p1, Lo/KU;->e:Lo/KU$ActionBar;

    iget-object p2, p0, Lo/KU;->k:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lo/KU$ActionBar;->c(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lo/KU;->h:Landroid/graphics/drawable/Drawable;

    .line 89
    invoke-direct {p0}, Lo/KU;->a()V

    return-void
.end method

.method public static final a(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lo/KU;->e:Lo/KU$ActionBar;

    invoke-virtual {v0, p0}, Lo/KU$ActionBar;->c(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lo/KU;)Lo/KS;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/KU;->c:Lo/KS;

    return-object p0
.end method

.method private final a()V
    .locals 3

    .line 303
    iget-object v0, p0, Lo/KU;->g:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lo/KU;->k:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 306
    sget v2, Lcom/netflix/mediaclient/ui/R$Dialog;->e:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/KU;->g:Landroid/view/View;

    .line 309
    :cond_0
    iget-object v0, p0, Lo/KU;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->qy:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lo/Registrant;

    :cond_1
    iput-object v1, p0, Lo/KU;->f:Lo/Registrant;

    .line 310
    iget-object v0, p0, Lo/KU;->f:Lo/Registrant;

    if-eqz v0, :cond_2

    invoke-static {}, Lo/adq;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/Registrant;->setTablet(Z)V

    :cond_2
    return-void
.end method

.method private final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Lo/KU;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "all"

    :cond_0
    return-object p1
.end method

.method public static final synthetic b(Lo/KU;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/KU;->d:Ljava/lang/String;

    return-object p0
.end method

.method private final b()V
    .locals 3

    .line 326
    iget-object v0, p0, Lo/KU;->k:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 327
    iget-object v0, p0, Lo/KU;->f:Lo/Registrant;

    if-eqz v0, :cond_2

    .line 329
    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$showGenreSelectorsInActionBar$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$showGenreSelectorsInActionBar$$inlined$let$lambda$1;-><init>(Lo/KU;)V

    check-cast v1, Lo/alA;

    invoke-virtual {v0, v1}, Lo/Registrant;->setMainCaratClickListener(Lo/alA;)V

    .line 335
    iget-object v1, p0, Lo/KU;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/Registrant;->setSelectedPrimaryGenre(Ljava/lang/String;)V

    .line 337
    invoke-direct {p0}, Lo/KU;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Lo/KU;->a:Ljava/lang/String;

    iget-object v2, p0, Lo/KU;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    sget-object v1, Lo/KV;->c:Lo/KV;

    iget-object v2, p0, Lo/KU;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/KV;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/DefaultGenreList;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GenregeddonHelper.getAll\u2026ist(primaryGenreId).title"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/KU;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/Registrant;->setSubCategoryLabel(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$showGenreSelectorsInActionBar$$inlined$let$lambda$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$showGenreSelectorsInActionBar$$inlined$let$lambda$2;-><init>(Lo/KU;)V

    check-cast v1, Lo/alA;

    invoke-virtual {v0, v1}, Lo/Registrant;->setSubCategoryClickListener(Lo/alA;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 350
    invoke-virtual {v0, v1}, Lo/Registrant;->setSubCategoryVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final c(Ljava/lang/String;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 367
    new-instance v0, Lo/KU$StateListAnimator;

    invoke-direct {v0, p1}, Lo/KU$StateListAnimator;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/netflix/cl/model/TrackingInfo;

    return-object v0
.end method

.method public static final synthetic c(Lo/KU;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lo/KU;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lo/KU;)Lo/Registrant;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/KU;->f:Lo/Registrant;

    return-object p0
.end method

.method private final c()V
    .locals 4

    .line 314
    new-instance v0, Lo/Fragment$StateListAnimator;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const v3, 0x800013

    invoke-direct {v0, v1, v2, v3}, Lo/Fragment$StateListAnimator;-><init>(III)V

    .line 315
    iget-object v1, p0, Lo/KU;->i:Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    iget-object v2, p0, Lo/KU;->k:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v2

    const/4 v3, 0x0

    .line 316
    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v2

    .line 317
    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v2

    .line 318
    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v2

    .line 319
    iget-object v3, p0, Lo/KU;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Landroid/graphics/drawable/Drawable;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v2

    .line 320
    iget-object v3, p0, Lo/KU;->g:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Landroid/view/View;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v2

    .line 321
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Lo/Fragment$StateListAnimator;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    const/4 v2, 0x1

    .line 322
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object v0

    .line 315
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    return-void
.end method

.method private final c(Lo/Am;)V
    .locals 7

    .line 235
    iget-object v0, p0, Lo/KU;->b:Lo/KW;

    invoke-virtual {v0, p1}, Lo/KW;->d(Lo/Am;)V

    .line 238
    iget-object p1, p0, Lo/KU;->b:Lo/KW;

    invoke-virtual {p1}, Lo/KW;->c()Lio/reactivex/Observable;

    move-result-object p1

    .line 239
    iget-object v0, p0, Lo/KU;->k:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    check-cast v0, Lo/UnicodeScript;

    .line 383
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {v0, v1}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object v0

    const-string v1, "AndroidLifecycleScopePro\u2026fecycle.Event.ON_DESTROY)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;

    .line 384
    check-cast v0, Lcom/uber/autodispose/ScopeProvider;

    invoke-static {v0}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableConverter;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "this.`as`(AutoDispose.autoDisposable(provider))"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    .line 241
    new-instance p1, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupSubGenresModel$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupSubGenresModel$1;-><init>(Lo/KU;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    .line 262
    sget-object p1, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupSubGenresModel$2;->d:Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupSubGenresModel$2;

    move-object v2, p1

    check-cast v2, Lo/alA;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 240
    invoke-static/range {v1 .. v6}, Lo/AsyncTask;->b(Lcom/uber/autodispose/ObservableSubscribeProxy;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic c(Lo/KU;Landroid/view/View;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lo/KU;->e(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic c(Lo/KU;Lo/SimpleAdapter;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lo/KU;->c(Lo/SimpleAdapter;)V

    return-void
.end method

.method private final c(Lo/SimpleAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SimpleAdapter<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;)V"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lo/KU;->k:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Lo/Spinner;

    iget-object v1, p0, Lo/KU;->k:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    check-cast v1, Landroid/content/Context;

    new-instance v2, Lo/KT;

    invoke-direct {v2}, Lo/KT;-><init>()V

    check-cast v2, Lo/SlidingDrawer;

    invoke-direct {v0, v1, p1, v2}, Lo/Spinner;-><init>(Landroid/content/Context;Lo/SimpleAdapter;Lo/SlidingDrawer;)V

    .line 359
    invoke-virtual {v0}, Lo/Spinner;->show()V

    :cond_0
    return-void
.end method

.method public static final synthetic d(Lo/KU;Ljava/lang/String;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lo/KU;->c(Ljava/lang/String;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;ZI)V
    .locals 1

    sget-object v0, Lo/KU;->e:Lo/KU$ActionBar;

    invoke-virtual {v0, p0, p1, p2}, Lo/KU$ActionBar;->e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;ZI)V

    return-void
.end method

.method public static final synthetic d(Lo/KU;)Z
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/KU;->e()Z

    move-result p0

    return p0
.end method

.method public static final synthetic e(Lo/KU;)Lcom/netflix/mediaclient/ui/home/HomeActivity;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/KU;->k:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    return-object p0
.end method

.method private final e(Landroid/view/View;)V
    .locals 7

    if-eqz p1, :cond_2

    .line 272
    iget-object v0, p0, Lo/KU;->k:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/KU;->k:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->isLoadingData()Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    iget-object v0, p0, Lo/KU;->f:Lo/Registrant;

    if-eqz v0, :cond_2

    .line 276
    iget-object v1, p0, Lo/KU;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lo/KU;->e(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 277
    sget-object v1, Lo/Registrant;->a:Lo/Registrant$TaskDescription;

    invoke-virtual {v1, p1}, Lo/Registrant$TaskDescription;->e(Landroid/view/View;)Lo/Registrant$Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 279
    iget-object v1, p0, Lo/KU;->c:Lo/KS;

    invoke-virtual {p1}, Lo/Registrant$Activity;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/KS;->a(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 281
    sget-object v3, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v4, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v5, Lcom/netflix/cl/model/AppView;->browseTab:Lcom/netflix/cl/model/AppView;

    invoke-virtual {p1}, Lo/Registrant$Activity;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lo/KU;->c(Ljava/lang/String;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance v5, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {v5}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    check-cast v5, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-virtual {v3, v4, v5, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    .line 282
    iget-object v2, p0, Lo/KU;->k:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {p1}, Lo/Registrant$Activity;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->c(Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1}, Lo/Registrant$Activity;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Registrant;->setSelectedPrimaryGenre(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sD:I

    if-ne p1, v0, :cond_1

    .line 290
    new-instance p1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v0, Lcom/netflix/cl/model/AppView;->browseTab:Lcom/netflix/cl/model/AppView;

    iget-object v1, p0, Lo/KU;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lo/KU;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/KU;->c(Ljava/lang/String;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 291
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v1, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    check-cast v1, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-virtual {v0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    .line 292
    iget-object p1, p0, Lo/KU;->b:Lo/KW;

    check-cast p1, Lo/SimpleAdapter;

    invoke-direct {p0, p1}, Lo/KU;->c(Lo/SimpleAdapter;)V

    goto :goto_0

    .line 294
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v1, Lcom/netflix/cl/model/AppView;->browseTab:Lcom/netflix/cl/model/AppView;

    iget-object v3, p0, Lo/KU;->a:Ljava/lang/String;

    invoke-direct {p0, v3}, Lo/KU;->c(Ljava/lang/String;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance v1, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    check-cast v1, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-virtual {p1, v0, v1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    .line 295
    iget-object p1, p0, Lo/KU;->c:Lo/KS;

    check-cast p1, Lo/SimpleAdapter;

    invoke-direct {p0, p1}, Lo/KU;->c(Lo/SimpleAdapter;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final e(Lo/Am;)V
    .locals 9

    .line 179
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupPrimaryGenresModel$retryCallback$1;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupPrimaryGenresModel$retryCallback$1;-><init>(Lo/Am;)V

    check-cast v0, Lo/alA;

    .line 183
    iget-object v1, p0, Lo/KU;->c:Lo/KS;

    invoke-virtual {v1, p1}, Lo/KS;->e(Lo/Am;)V

    .line 184
    iget-object v1, p0, Lo/KU;->c:Lo/KS;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/KS;->d(Z)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, 0xf

    const-wide/16 v3, 0x2

    .line 185
    invoke-static {v1, v2, v3, v4, v0}, Lo/BestClock;->c(Lio/reactivex/Observable;IJLo/alA;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 186
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "primaryGenresModel.fetch\u2026ack)\n            .take(1)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lo/KU;->k:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    check-cast v1, Lo/UnicodeScript;

    .line 379
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {v1, v2}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object v1

    const-string v2, "AndroidLifecycleScopePro\u2026fecycle.Event.ON_DESTROY)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;

    .line 380
    check-cast v1, Lcom/uber/autodispose/ScopeProvider;

    invoke-static {v1}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableConverter;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "this.`as`(AutoDispose.autoDisposable(provider))"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Lcom/uber/autodispose/ObservableSubscribeProxy;

    .line 189
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupPrimaryGenresModel$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupPrimaryGenresModel$1;-><init>(Lo/KU;)V

    move-object v6, v0

    check-cast v6, Lo/alA;

    .line 211
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupPrimaryGenresModel$2;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupPrimaryGenresModel$2;-><init>(Lo/Am;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 188
    invoke-static/range {v3 .. v8}, Lo/AsyncTask;->b(Lcom/uber/autodispose/ObservableSubscribeProxy;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 216
    iget-object p1, p0, Lo/KU;->c:Lo/KS;

    invoke-virtual {p1}, Lo/KS;->c()Lio/reactivex/Observable;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lo/KU;->k:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    check-cast v0, Lo/UnicodeScript;

    .line 381
    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {v0, v3}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object v0

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;

    .line 382
    check-cast v0, Lcom/uber/autodispose/ScopeProvider;

    invoke-static {v0}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableConverter;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lcom/uber/autodispose/ObservableSubscribeProxy;

    .line 219
    new-instance p1, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupPrimaryGenresModel$3;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupPrimaryGenresModel$3;-><init>(Lo/KU;)V

    move-object v5, p1

    check-cast v5, Lo/alA;

    .line 226
    sget-object p1, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupPrimaryGenresModel$4;->b:Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$setupPrimaryGenresModel$4;

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 218
    invoke-static/range {v2 .. v7}, Lo/AsyncTask;->b(Lcom/uber/autodispose/ObservableSubscribeProxy;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final e()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lo/KU;->a:Ljava/lang/String;

    invoke-static {v0}, Lo/KV;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/KU;->a:Ljava/lang/String;

    invoke-static {v0}, Lo/KV;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final e(Ljava/lang/String;)Z
    .locals 0

    .line 174
    invoke-static {p1}, Lo/KV;->e(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public static final synthetic f(Lo/KU;)Lo/KW;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/KU;->b:Lo/KW;

    return-object p0
.end method

.method public static final synthetic i(Lo/KU;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/KU;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "newPrimaryGenreId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newSubGenreId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lo/KU;->k:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 119
    invoke-direct {p0}, Lo/KU;->c()V

    .line 120
    invoke-direct {p0, p1}, Lo/KU;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lo/KU;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/KU;->d:Ljava/lang/String;

    invoke-static {p2, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 122
    :cond_0
    iput-object p1, p0, Lo/KU;->a:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lo/KU;->d:Ljava/lang/String;

    .line 125
    iget-object p1, p0, Lo/KU;->f:Lo/Registrant;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lo/Registrant;->e()V

    goto :goto_0

    .line 128
    :cond_1
    iput-object p1, p0, Lo/KU;->a:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lo/KU;->d:Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Lo/KU;->b()V

    .line 133
    iget-object p2, p0, Lo/KU;->c:Lo/KS;

    iget-object v0, p0, Lo/KU;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lo/KS;->e(Ljava/lang/String;)V

    .line 136
    iget-object p2, p0, Lo/KU;->j:Lio/reactivex/disposables/Disposable;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 137
    :cond_2
    iget-object p2, p0, Lo/KU;->c:Lo/KS;

    invoke-virtual {p2, p1}, Lo/KS;->a(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 138
    iget-object p2, p0, Lo/KU;->b:Lo/KW;

    invoke-virtual {p2, p1}, Lo/KW;->e(Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)V

    .line 139
    iget-object p1, p0, Lo/KU;->b:Lo/KW;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/KW;->d(Z)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v0, 0x1

    .line 140
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v2

    const-string p1, "subGenresModel.fetchSele\u2026                 .take(1)"

    invoke-static {v2, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance p1, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$update$$inlined$let$lambda$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$update$$inlined$let$lambda$1;-><init>(Lo/KU;)V

    move-object v5, p1

    check-cast v5, Lo/alA;

    const/4 v4, 0x0

    .line 159
    sget-object p1, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$update$1$2;->a:Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$update$1$2;

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 141
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lo/KU;->j:Lio/reactivex/disposables/Disposable;

    :cond_3
    :goto_0
    return-void
.end method

.method public final d(Lo/Am;)V
    .locals 1

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, p1}, Lo/KU;->e(Lo/Am;)V

    .line 97
    invoke-direct {p0, p1}, Lo/KU;->c(Lo/Am;)V

    .line 100
    iget-object p1, p0, Lo/KU;->f:Lo/Registrant;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$onCreate$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/genregeddon/GenresActionBarPresenter$onCreate$1;-><init>(Lo/KU;)V

    check-cast v0, Lo/alA;

    invoke-virtual {p1, v0}, Lo/Registrant;->setLogoClickListener(Lo/alA;)V

    :cond_0
    return-void
.end method
