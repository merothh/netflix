.class public final Lo/ZF;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ZF$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/ZF$StateListAnimator;


# instance fields
.field private f:Lo/RecoverySystem$ActionBar;

.field private h:Lo/OnDateChangedListener;

.field private i:Lio/reactivex/disposables/Disposable;

.field private j:Z

.field private k:Lo/ZN;

.field private l:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

.field private m:Ljava/lang/String;

.field private n:Lo/ZS;

.field private o:Lo/ZK;

.field private final p:Lo/UpdateEngine;

.field private final q:Ljava/lang/Runnable;

.field private r:Ljava/lang/Runnable;

.field private s:J

.field private final t:Ljava/lang/String;

.field private v:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ZF$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ZF$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/ZF;->b:Lo/ZF$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lo/ZF;-><init>(Ljava/lang/String;ILo/amc;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    iput-object p1, p0, Lo/ZF;->t:Ljava/lang/String;

    .line 49
    new-instance p1, Lo/ZF$TaskDescription;

    invoke-direct {p1, p0}, Lo/ZF$TaskDescription;-><init>(Lo/ZF;)V

    check-cast p1, Lo/RecoverySystem$ActionBar;

    iput-object p1, p0, Lo/ZF;->f:Lo/RecoverySystem$ActionBar;

    const-string p1, ""

    .line 63
    iput-object p1, p0, Lo/ZF;->m:Ljava/lang/String;

    .line 66
    sget-object p1, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    move-object v0, p0

    check-cast v0, Lo/UnicodeScript;

    invoke-virtual {p1, v0}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p1

    iput-object p1, p0, Lo/ZF;->p:Lo/UpdateEngine;

    .line 253
    new-instance p1, Lo/ZF$ActionBar;

    invoke-direct {p1, p0}, Lo/ZF$ActionBar;-><init>(Lo/ZF;)V

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lo/ZF;->q:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILo/amc;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    .line 36
    :cond_0
    invoke-direct {p0, p1}, Lo/ZF;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final B()V
    .locals 2

    .line 350
    invoke-virtual {p0}, Lo/ZF;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Serializable;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 351
    :goto_0
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 352
    invoke-virtual {p0}, Lo/ZF;->getActivity()Lo/Serializable;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v1, v0}, Lo/adq;->d(Landroid/app/Activity;Landroid/widget/EditText;)V

    :cond_1
    return-void
.end method

.method public static final synthetic a(Lo/ZF;)Lo/RecoverySystem$ActionBar;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/ZF;->f:Lo/RecoverySystem$ActionBar;

    return-object p0
.end method

.method private final a(Z)V
    .locals 1

    .line 275
    iget-object v0, p0, Lo/ZF;->h:Lo/OnDateChangedListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {v0}, Lo/OnDateChangedListener;->v()V

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {v0}, Lo/OnDateChangedListener;->x()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 2

    .line 240
    iput-object p1, p0, Lo/ZF;->m:Ljava/lang/String;

    .line 242
    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 244
    iget-object p1, p0, Lo/ZF;->p:Lo/UpdateEngine;

    .line 245
    const-class v0, Lo/ZR;

    .line 246
    sget-object v1, Lo/ZR$SharedElementCallback;->e:Lo/ZR$SharedElementCallback;

    check-cast v1, Lo/VintfObject;

    .line 244
    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    :cond_2
    return-void
.end method

.method public static final synthetic b(Lo/ZF;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/ZF;->B()V

    return-void
.end method

.method public static final synthetic c(Lo/ZF;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/ZF;->g()V

    return-void
.end method

.method public static final synthetic d(Lo/ZF;)Lo/UpdateEngine;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/ZF;->p:Lo/UpdateEngine;

    return-object p0
.end method

.method private final d(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_8

    .line 203
    iget-object v0, p0, Lo/ZF;->m:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 208
    :cond_0
    invoke-virtual {p0}, Lo/ZF;->u()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lo/ZF;->uiLatencyTrackerFluent:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ViewSwitcher;

    .line 211
    invoke-interface {v0}, Lo/ViewSwitcher;->b()Lo/ViewSwitcher;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lo/ZF;->t()Lcom/netflix/cl/model/AppView;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lo/UnicodeScript;

    invoke-interface {v0, v2, v3}, Lo/ViewSwitcher;->d(Lcom/netflix/cl/model/AppView;Lo/UnicodeScript;)Lo/WrapperListAdapter;

    move-result-object v0

    .line 213
    invoke-interface {v0, v1}, Lo/WrapperListAdapter;->c(Z)Lo/WrapperListAdapter;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Lo/WrapperListAdapter;->a()V

    .line 217
    :cond_1
    invoke-direct {p0, p1}, Lo/ZF;->b(Ljava/lang/String;)V

    .line 218
    iget-wide v2, p0, Lo/ZF;->s:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lo/ZF;->s:J

    .line 219
    iget-object v0, p0, Lo/ZF;->o:Lo/ZK;

    if-nez v0, :cond_2

    const-string v2, "uiPresenter"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    iget-wide v2, p0, Lo/ZF;->s:J

    invoke-virtual {v0, v2, v3}, Lo/ZK;->b(J)V

    .line 221
    iget-object v0, p0, Lo/ZF;->l:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    const-string v2, "uiView"

    if-nez v0, :cond_3

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->d(Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lo/ZF;->m:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 223
    iget-object p1, p0, Lo/ZF;->l:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    if-nez p1, :cond_5

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->n()V

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 225
    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lo/ZF;->r:Ljava/lang/Runnable;

    .line 226
    invoke-virtual {p0}, Lo/ZF;->U_()Lo/Am;

    move-result-object p1

    if-nez p1, :cond_7

    .line 227
    iget-object p1, p0, Lo/ZF;->q:Ljava/lang/Runnable;

    iput-object p1, p0, Lo/ZF;->r:Ljava/lang/Runnable;

    goto :goto_1

    .line 229
    :cond_7
    iget-object p1, p0, Lo/ZF;->q:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void

    .line 204
    :cond_8
    :goto_2
    sget-object p1, Lo/ZF;->b:Lo/ZF$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public static final synthetic d(Lo/ZF;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lo/ZF;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public static final synthetic d(Lo/ZF;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lo/ZF;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic d(Lo/ZF;Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lo/ZF;->j:Z

    return-void
.end method

.method private final e(Landroid/view/View;)V
    .locals 2

    .line 340
    iget v0, p0, Lo/ZF;->c:I

    iget v1, p0, Lo/ZF;->d:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/RemoteException;->e(Landroid/view/View;II)V

    .line 341
    iget v0, p0, Lo/ZF;->g:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lo/RemoteException;->e(Landroid/view/View;II)V

    return-void
.end method

.method public static final synthetic e(Lo/ZF;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/ZF;->x()V

    return-void
.end method

.method public static final synthetic e(Lo/ZF;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lo/ZF;->a(Z)V

    return-void
.end method

.method public static final synthetic g(Lo/ZF;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lo/ZF;->s:J

    return-wide v0
.end method

.method private final g()V
    .locals 1

    .line 166
    iget-object v0, p0, Lo/ZF;->h:Lo/OnDateChangedListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/OnDateChangedListener;->p()V

    :cond_0
    return-void
.end method

.method public static final synthetic i(Lo/ZF;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lo/ZF;->m:Ljava/lang/String;

    return-object p0
.end method

.method private final v()V
    .locals 3

    .line 285
    iget-object v0, p0, Lo/ZF;->h:Lo/OnDateChangedListener;

    if-eqz v0, :cond_2

    .line 286
    invoke-virtual {v0}, Lo/OnDateChangedListener;->m()Landroid/widget/SearchView;

    move-result-object v1

    const-string v2, "it.searchView"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const-string v2, ""

    .line 287
    invoke-virtual {v0, v2, v1}, Lo/OnDateChangedListener;->e(Ljava/lang/String;Z)V

    .line 290
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lo/Zt$Fragment;->l:I

    goto :goto_0

    .line 291
    :cond_1
    sget v1, Lo/Zt$Fragment;->n:I

    .line 290
    :goto_0
    invoke-virtual {p0, v1}, Lo/ZF;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "if (BrowseExperience.isK\u2026netflix\n                )"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0, v1}, Lo/OnDateChangedListener;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final x()V
    .locals 1

    .line 170
    iget-object v0, p0, Lo/ZF;->h:Lo/OnDateChangedListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/OnDateChangedListener;->t()V

    :cond_0
    return-void
.end method

.method private final y()V
    .locals 8

    .line 174
    iget-object v0, p0, Lo/ZF;->h:Lo/OnDateChangedListener;

    if-eqz v0, :cond_2

    .line 175
    iget-object v1, p0, Lo/ZF;->i:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_0

    .line 176
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 177
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v2, "searchTextChanges should be null"

    .line 178
    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 180
    :cond_1
    invoke-virtual {v0}, Lo/OnDateChangedListener;->l()Lio/reactivex/Observable;

    move-result-object v0

    .line 181
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lo/ZF;->p:Lo/UpdateEngine;

    invoke-virtual {v1}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v0, "it.queryChangeObservable\u2026y.getDestroyObservable())"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsFrag_Ab22078$setupQueryTextChangeListener$$inlined$let$lambda$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsFrag_Ab22078$setupQueryTextChangeListener$$inlined$let$lambda$1;-><init>(Lo/ZF;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    const/4 v4, 0x0

    .line 194
    sget-object v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsFrag_Ab22078$setupQueryTextChangeListener$1$2;->a:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsFrag_Ab22078$setupQueryTextChangeListener$1$2;

    move-object v3, v0

    check-cast v3, Lo/alA;

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 183
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lo/ZF;->i:Lio/reactivex/disposables/Disposable;

    :cond_2
    return-void
.end method


# virtual methods
.method public ad_()Z
    .locals 2

    .line 310
    invoke-virtual {p0}, Lo/ZF;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 311
    invoke-virtual {p0}, Lo/ZF;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lo/ZF;->v:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 357
    iget-object v0, p0, Lo/ZF;->m:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "uiView"

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lo/ZF;->l:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->n()V

    .line 360
    :cond_1
    iget-object v0, p0, Lo/ZF;->l:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    if-nez v0, :cond_2

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->k()V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    iget-object p1, p0, Lo/ZF;->l:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    const-string v0, "uiView"

    if-nez p1, :cond_0

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->h()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lo/ZF;->e(Landroid/view/View;)V

    .line 336
    iget-object p1, p0, Lo/ZF;->l:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    if-nez p1, :cond_1

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->t()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lo/ZF;->e(Landroid/view/View;)V

    return-void
.end method

.method public i()Z
    .locals 3

    .line 325
    iget-object v0, p0, Lo/ZF;->h:Lo/OnDateChangedListener;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/OnDateChangedListener;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/ZF;->m:Ljava/lang/String;

    .line 326
    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_5

    .line 327
    iget-object v0, p0, Lo/ZF;->l:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    if-nez v0, :cond_4

    const-string v2, "uiView"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->n()V

    goto :goto_3

    .line 330
    :cond_5
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->i()Z

    move-result v1

    :goto_3
    return v1
.end method

.method public isLoadingData()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lo/ZF;->j:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 75
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    const-string p3, "onCreateView container is null in SearchResultsFrag_Ab22078"

    .line 76
    invoke-interface {p2, p3}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-object p1

    .line 79
    :cond_0
    new-instance p3, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    .line 81
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    .line 82
    iget-object v1, p0, Lo/ZF;->p:Lo/UpdateEngine;

    .line 79
    invoke-direct {p3, p2, v0, v1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;-><init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;Lo/UpdateEngine;)V

    iput-object p3, p0, Lo/ZF;->l:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    .line 85
    iget-object p2, p0, Lo/ZF;->l:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    const-string p3, "uiView"

    if-nez p2, :cond_1

    invoke-static {p3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->w()Lio/reactivex/Observable;

    move-result-object p2

    .line 86
    iget-object v0, p0, Lo/ZF;->p:Lo/UpdateEngine;

    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p2

    .line 87
    new-instance v0, Lo/ZF$Activity;

    invoke-direct {v0, p0}, Lo/ZF$Activity;-><init>(Lo/ZF;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 130
    invoke-virtual {p0}, Lo/ZF;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p2

    const-string v0, "requireNetflixActivity()"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lo/ZS;

    iget-object v1, p0, Lo/ZF;->p:Lo/UpdateEngine;

    invoke-virtual {v1}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lo/ZS;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lio/reactivex/Observable;)V

    iput-object v0, p0, Lo/ZF;->n:Lo/ZS;

    .line 134
    new-instance v0, Lo/ZK;

    .line 135
    iget-object v1, p0, Lo/ZF;->p:Lo/UpdateEngine;

    const-class v2, Lo/ZR;

    invoke-virtual {v1, v2}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v3

    .line 136
    iget-object v4, p0, Lo/ZF;->l:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    if-nez v4, :cond_2

    invoke-static {p3}, Lo/amh;->d(Ljava/lang/String;)V

    .line 137
    :cond_2
    iget-object v5, p0, Lo/ZF;->n:Lo/ZS;

    if-nez v5, :cond_3

    const-string v1, "uiRepo"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    .line 138
    :cond_3
    iget-object v1, p0, Lo/ZF;->p:Lo/UpdateEngine;

    invoke-virtual {v1}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v6

    .line 139
    iget-object v7, p0, Lo/ZF;->t:Ljava/lang/String;

    move-object v2, v0

    .line 134
    invoke-direct/range {v2 .. v7}, Lo/ZK;-><init>(Lio/reactivex/Observable;Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;Lo/ZS;Lio/reactivex/Observable;Ljava/lang/String;)V

    iput-object v0, p0, Lo/ZF;->o:Lo/ZK;

    .line 142
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string p1, "PRE_QUERY_LIST"

    invoke-virtual {v0, p1}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    :cond_4
    check-cast p1, Lo/ZN;

    iput-object p1, p0, Lo/ZF;->k:Lo/ZN;

    .line 144
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object p1

    .line 145
    instance-of v0, p1, Lo/OnDateChangedListener;

    if-eqz v0, :cond_5

    .line 146
    check-cast p1, Lo/OnDateChangedListener;

    iput-object p1, p0, Lo/ZF;->h:Lo/OnDateChangedListener;

    .line 148
    :cond_5
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getKeyboardState()Lo/RecoverySystem;

    move-result-object p1

    iget-object p2, p0, Lo/ZF;->f:Lo/RecoverySystem$ActionBar;

    invoke-virtual {p1, p2}, Lo/RecoverySystem;->d(Lo/RecoverySystem$ActionBar;)V

    .line 149
    iget-object p1, p0, Lo/ZF;->l:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    if-nez p1, :cond_6

    invoke-static {p3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->n()V

    .line 151
    invoke-direct {p0}, Lo/ZF;->v()V

    const/4 p1, 0x0

    .line 152
    invoke-direct {p0, p1}, Lo/ZF;->a(Z)V

    .line 153
    invoke-direct {p0}, Lo/ZF;->y()V

    .line 154
    iget-object p1, p0, Lo/ZF;->l:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    if-nez p1, :cond_7

    invoke-static {p3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->l()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 345
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroyView()V

    .line 346
    invoke-virtual {p0}, Lo/ZF;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const-string v1, "requireNetflixActivity()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getKeyboardState()Lo/RecoverySystem;

    move-result-object v0

    new-instance v1, Lo/ZF$Application;

    invoke-direct {v1, p0}, Lo/ZF$Application;-><init>(Lo/ZF;)V

    check-cast v1, Lo/RecoverySystem$ActionBar;

    invoke-virtual {v0, v1}, Lo/RecoverySystem;->c(Lo/RecoverySystem$ActionBar;)V

    .line 347
    invoke-virtual {p0}, Lo/ZF;->c()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 298
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onStart()V

    .line 299
    invoke-virtual {p0}, Lo/ZF;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ZF;->m:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lo/ZF;->k:Lo/ZN;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ZN;->a(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 305
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onStop()V

    .line 306
    iget-object v0, p0, Lo/ZF;->k:Lo/ZN;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ZN;->a(Z)V

    :cond_0
    return-void
.end method

.method public t()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 158
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 162
    sget-object v0, Lo/gG;->c:Lo/gG$Application;

    invoke-virtual {v0}, Lo/gG$Application;->e()Z

    move-result v0

    return v0
.end method
