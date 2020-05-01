.class public abstract Lo/Rr;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""

# interfaces
.implements Lo/DT;
.implements Lo/Rq$Application;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Rr$Activity;,
        Lo/Rr$Application;
    }
.end annotation


# static fields
.field public static final h:Lo/Rr$Application;


# instance fields
.field private final b:Lo/RJ;

.field private f:Landroidx/recyclerview/widget/RecyclerView;

.field private i:Lo/Rk;

.field private j:Lo/nS;

.field private final k:Lo/DoubleBinaryOperator;

.field private l:Z

.field private m:Z

.field private final n:Lo/Rr$Activity;

.field private o:Landroid/os/Parcelable;

.field private q:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Rr$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Rr$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Rr;->h:Lo/Rr$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 61
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    const-string v1, "NetflixApplication.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->x()Lo/RJ;

    move-result-object v0

    const-string v1, "NetflixApplication.getInstance().offlineUi"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/Rr;->b:Lo/RJ;

    .line 64
    new-instance v0, Lo/Rk;

    invoke-direct {v0, p0}, Lo/Rk;-><init>(Lo/Rr;)V

    iput-object v0, p0, Lo/Rr;->i:Lo/Rk;

    .line 68
    new-instance v0, Lo/DoubleBinaryOperator;

    invoke-direct {v0}, Lo/DoubleBinaryOperator;-><init>()V

    iput-object v0, p0, Lo/Rr;->k:Lo/DoubleBinaryOperator;

    .line 70
    new-instance v0, Lo/Rr$StateListAnimator;

    invoke-direct {v0, p0}, Lo/Rr$StateListAnimator;-><init>(Lo/Rr;)V

    check-cast v0, Lo/Rr$Activity;

    iput-object v0, p0, Lo/Rr;->n:Lo/Rr$Activity;

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0, v0}, Lo/Rr;->setHasOptionsMenu(Z)V

    return-void
.end method

.method private final a(Landroid/content/Intent;)V
    .locals 8

    .line 237
    invoke-virtual {p0}, Lo/Rr;->U_()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "extra_video_id"

    .line 239
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_video_type_string_value"

    .line 241
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    const-string v3, "serviceManager"

    .line 243
    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Lo/Rr;->getActivity()Lo/Serializable;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 246
    invoke-interface {v0}, Lo/nS;->i()Z

    move-result v4

    .line 247
    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->g(Landroid/content/Context;)Z

    move-result v5

    .line 248
    invoke-static {v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->a(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 251
    invoke-static {v3, v1, v7}, Lo/PY;->e(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    const-string v6, "extra_play_context"

    .line 257
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 256
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    if-eqz v4, :cond_2

    if-nez v5, :cond_2

    .line 261
    sget-object v4, Lo/he;->a:Lo/he$Application;

    invoke-virtual {v4}, Lo/he$Application;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 262
    invoke-static {v3, v1, v2, v7}, Lo/PY;->e(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    const/4 v3, 0x1

    .line 264
    invoke-static {v1, v2, p1, v3}, Lo/RL;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Z)Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;

    move-result-object p1

    .line 263
    invoke-interface {v0, p1}, Lo/nS;->b(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;)V

    goto :goto_0

    .line 267
    :cond_1
    invoke-static {v3, v1, v2, v7}, Lo/PY;->a(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)Landroid/app/Dialog;

    move-result-object p1

    .line 268
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 273
    :cond_2
    new-instance v3, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;

    invoke-direct {v3, v1, v2, p1}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 272
    invoke-interface {v0, v3}, Lo/nS;->b(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final c()V
    .locals 2

    .line 217
    invoke-virtual {p0}, Lo/Rr;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lo/Rr$Dialog;

    invoke-direct {v1, p0}, Lo/Rr$Dialog;-><init>(Lo/Rr;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    :cond_0
    return-void
.end method

.method public static final synthetic d(Lo/Rr;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/Rr;->x()V

    return-void
.end method

.method private final g()Z
    .locals 2

    .line 372
    iget-boolean v0, p0, Lo/Rr;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {p0, v1}, Lo/Rr;->a(Z)V

    .line 374
    invoke-virtual {p0}, Lo/Rr;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Serializable;->invalidateOptionsMenu()V

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final x()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected abstract A()V
.end method

.method protected abstract B()Z
.end method

.method public C()V
    .locals 1

    iget-object v0, p0, Lo/Rr;->q:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected abstract D()V
.end method

.method public final E()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lo/Rr;->l:Z

    return v0
.end method

.method protected final F()Lo/RJ;
    .locals 1

    .line 61
    iget-object v0, p0, Lo/Rr;->b:Lo/RJ;

    return-object v0
.end method

.method public final G()Lo/Rr$Activity;
    .locals 1

    .line 70
    iget-object v0, p0, Lo/Rr;->n:Lo/Rr$Activity;

    return-object v0
.end method

.method public final H()V
    .locals 2

    .line 180
    iget-object v0, p0, Lo/Rr;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public final I()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 62
    iget-object v0, p0, Lo/Rr;->f:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method protected K()V
    .locals 2

    .line 189
    iget-boolean v0, p0, Lo/Rr;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lo/Rr;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 194
    sget-object v0, Lo/Rr;->h:Lo/Rr$Application;

    check-cast v0, Lo/MessagePdu;

    return-void

    .line 198
    :cond_1
    invoke-virtual {p0}, Lo/Rr;->U_()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 199
    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {v0}, Lo/Am;->r()Z

    move-result v1

    if-nez v1, :cond_3

    .line 205
    sget-object v0, Lo/Rr;->h:Lo/Rr$Application;

    check-cast v0, Lo/MessagePdu;

    return-void

    .line 209
    :cond_3
    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    iput-object v0, p0, Lo/Rr;->j:Lo/nS;

    .line 210
    iget-object v0, p0, Lo/Rr;->j:Lo/nS;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lo/Rr;->i:Lo/Rk;

    check-cast v1, Lo/nV;

    invoke-interface {v0, v1}, Lo/nS;->e(Lo/nV;)V

    .line 212
    :cond_4
    invoke-direct {p0}, Lo/Rr;->c()V

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lo/Rr;->m:Z

    return-void

    .line 200
    :cond_5
    :goto_0
    sget-object v0, Lo/Rr;->h:Lo/Rr$Application;

    check-cast v0, Lo/MessagePdu;

    return-void
.end method

.method public final L()V
    .locals 2

    .line 320
    invoke-virtual {p0}, Lo/Rr;->getActivity()Lo/Serializable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 322
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "SPY-13205: Activity should not be null when calling refreshData"

    .line 323
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 327
    :cond_0
    invoke-virtual {p0}, Lo/Rr;->B()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 328
    invoke-virtual {p0}, Lo/Rr;->A()V

    if-eqz v1, :cond_1

    .line 331
    invoke-virtual {v0}, Lo/Serializable;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method

.method public N()V
    .locals 0

    .line 390
    invoke-virtual {p0}, Lo/Rr;->A()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lo/Rr;->l:Z

    .line 173
    invoke-virtual {p0}, Lo/Rr;->A()V

    .line 174
    invoke-virtual {p0}, Lo/Rr;->getActivity()Lo/Serializable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/Serializable;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public c(Landroid/os/Parcelable;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lo/Rr;->o:Landroid/os/Parcelable;

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lo/Rr;->k:Lo/DoubleBinaryOperator;

    invoke-virtual {v0, p1}, Lo/DoubleBinaryOperator;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final c(Z)V
    .locals 2

    .line 341
    invoke-virtual {p0}, Lo/Rr;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->mT:I

    const/4 v1, 0x1

    .line 342
    invoke-static {v0, v1}, Lo/adk;->c(II)V

    if-eqz p1, :cond_0

    .line 347
    invoke-virtual {p0}, Lo/Rr;->L()V

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {p0}, Lo/Rr;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Landroid/os/Parcelable;
    .locals 1

    .line 162
    iget-object v0, p0, Lo/Rr;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d(Landroid/view/Menu;Z)V
    .locals 5

    const-string v0, "menu"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lo/Rr;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 397
    invoke-virtual {p0}, Lo/Rr;->v()I

    move-result v0

    if-lez v0, :cond_2

    .line 400
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fl:I

    .line 402
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->bt:I

    .line 398
    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 404
    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->bi:I

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 405
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 406
    new-instance v1, Lo/Rr$ActionBar;

    invoke-direct {v1, p0, p2, p1}, Lo/Rr$ActionBar;-><init>(Lo/Rr;ZLandroid/view/Menu;)V

    check-cast v1, Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {p0}, Lo/Rr;->B()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 422
    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->fj:I

    .line 424
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->iv:I

    .line 420
    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 426
    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    sget v4, Lcom/netflix/mediaclient/ui/R$Activity;->aI:I

    invoke-static {v3, v4}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 430
    check-cast v0, Landroid/app/Activity;

    .line 431
    sget v4, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->a:I

    .line 428
    invoke-static {v3, v0, v4}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->e(Landroid/graphics/drawable/Drawable;Landroid/app/Activity;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_1
    const-string v0, "editMode"

    .line 434
    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 435
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 436
    new-instance v0, Lo/Rr$TaskDescription;

    invoke-direct {v0, p0, p2, p1}, Lo/Rr$TaskDescription;-><init>(Lo/Rr;ZLandroid/view/Menu;)V

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    iget v0, p0, Lo/Rr;->c:I

    iget v1, p0, Lo/Rr;->d:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/RemoteException;->c(Landroid/view/View;II)V

    .line 368
    iget v0, p0, Lo/Rr;->g:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lo/RemoteException;->c(Landroid/view/View;II)V

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lo/Rr;->k:Lo/DoubleBinaryOperator;

    invoke-virtual {v0, p1}, Lo/DoubleBinaryOperator;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public abstract e(Lo/Bi;I)V
.end method

.method public i()Z
    .locals 1

    .line 382
    invoke-direct {p0}, Lo/Rr;->g()Z

    move-result v0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n()Z
    .locals 1

    .line 386
    invoke-direct {p0}, Lo/Rr;->g()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/Rq;->d(Z)V

    .line 118
    iget-object v0, p0, Lo/Rr;->j:Lo/nS;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/nS;->r()V

    .line 120
    :cond_0
    sget-object v0, Lo/Rr;->h:Lo/Rr$Application;

    check-cast v0, Lo/MessagePdu;

    .line 121
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->az:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 123
    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lo/Rr;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 126
    invoke-virtual {p0, p2}, Lo/Rr;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 128
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 129
    iget-object p2, p0, Lo/Rr;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "layout_manager_state"

    .line 131
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 132
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 135
    :cond_2
    iget-object p2, p0, Lo/Rr;->o:Landroid/os/Parcelable;

    if-eqz p2, :cond_3

    .line 136
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 p2, 0x0

    .line 137
    check-cast p2, Landroid/os/Parcelable;

    iput-object p2, p0, Lo/Rr;->o:Landroid/os/Parcelable;

    .line 140
    :cond_3
    invoke-virtual {p0}, Lo/Rr;->K()V

    .line 141
    iget-object p2, p0, Lo/Rr;->b:Lo/RJ;

    invoke-virtual {p2}, Lo/RJ;->b()Lo/Rq;

    move-result-object p2

    move-object p3, p0

    check-cast p3, Lo/Rq$Application;

    invoke-interface {p2, p3}, Lo/Rq;->d(Lo/Rq$Application;)V

    return-object p1

    .line 123
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 355
    iget-object v0, p0, Lo/Rr;->b:Lo/RJ;

    invoke-virtual {v0}, Lo/RJ;->b()Lo/Rq;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lo/Rq$Application;

    invoke-interface {v0, v1}, Lo/Rq;->b(Lo/Rq$Application;)V

    .line 356
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroyView()V

    .line 357
    iget-object v0, p0, Lo/Rr;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0, v0}, Lo/Rr;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    const/4 v0, 0x0

    .line 361
    iput-boolean v0, p0, Lo/Rr;->m:Z

    .line 362
    invoke-virtual {p0}, Lo/Rr;->C()V

    return-void
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    sget-object p1, Lo/Rr;->h:Lo/Rr$Application;

    check-cast p1, Lo/MessagePdu;

    .line 304
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 305
    sget-object p1, Lo/Rr;->h:Lo/Rr$Application;

    check-cast p1, Lo/MessagePdu;

    return-void

    .line 308
    :cond_0
    invoke-virtual {p0}, Lo/Rr;->K()V

    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    const-string p1, "result"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 293
    iget-object v0, p0, Lo/Rr;->j:Lo/nS;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/Rr;->i:Lo/Rk;

    check-cast v1, Lo/nV;

    invoke-interface {v0, v1}, Lo/nS;->d(Lo/nV;)V

    .line 294
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 282
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 284
    iget-object v0, p0, Lo/Rr;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 286
    :cond_0
    iget-object v0, p0, Lo/Rr;->j:Lo/nS;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo/Rr;->i:Lo/Rk;

    check-cast v1, Lo/nV;

    invoke-interface {v0, v1}, Lo/nS;->e(Lo/nV;)V

    .line 287
    :cond_1
    iget-boolean v0, p0, Lo/Rr;->m:Z

    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {p0}, Lo/Rr;->L()V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lo/Rr;->d()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "layout_manager_state"

    .line 157
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 298
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onStop()V

    .line 299
    invoke-direct {p0}, Lo/Rr;->g()Z

    return-void
.end method

.method protected abstract v()I
.end method

.method protected abstract y()V
.end method

.method protected z()V
    .locals 1

    .line 229
    invoke-virtual {p0}, Lo/Rr;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lo/Rr;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Serializable;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0, v0}, Lo/Rr;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
