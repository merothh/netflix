.class public Lo/Kh;
.super Lo/Iv;
.source ""

# interfaces
.implements Lo/DT;


# instance fields
.field protected b:Lo/KL;

.field public f:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

.field protected h:Lcom/netflix/android/widgetry/widget/TrackedGridLayoutManager;

.field public i:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

.field protected j:Lo/ParcelableParcel;

.field protected k:Lo/EditText;

.field protected final l:Lo/DatePickerCalendarDelegate$Activity;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field private q:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lo/Iv;-><init>()V

    .line 85
    new-instance v0, Lo/Kh$2;

    invoke-direct {v0, p0}, Lo/Kh$2;-><init>(Lo/Kh;)V

    iput-object v0, p0, Lo/Kh;->l:Lo/DatePickerCalendarDelegate$Activity;

    return-void
.end method

.method private A()V
    .locals 1

    .line 375
    iget-object v0, p0, Lo/Kh;->b:Lo/KL;

    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {v0}, Lo/KL;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lo/Kh;->c(Z)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lo/Kh;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lo/Kh;->m:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Lo/Kh;
    .locals 1

    const-string v0, ""

    .line 112
    invoke-static {p0, v0}, Lo/Kh;->e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;)Lo/Kh;

    move-result-object p0

    return-object p0
.end method

.method private c(Z)V
    .locals 5

    .line 381
    invoke-virtual {p0}, Lo/Kh;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 384
    :cond_0
    invoke-virtual {p0}, Lo/Kh;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 386
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPY-14825: setEmptyVisibility( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ) called and getView() returned null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 390
    :cond_1
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->fK:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/DatePickerSpinnerDelegate;

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 392
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->fF:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    .line 394
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/DatePickerSpinnerDelegate;

    :cond_2
    if-eqz v1, :cond_7

    .line 398
    invoke-virtual {p0, v0}, Lo/Kh;->d(Landroid/view/View;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    .line 399
    :goto_0
    invoke-virtual {v1, v2}, Lo/DatePickerSpinnerDelegate;->setVisibility(I)V

    if-eqz p1, :cond_7

    .line 400
    iget-object p1, p0, Lo/Kh;->n:Ljava/lang/String;

    if-eqz p1, :cond_7

    const/4 v2, -0x1

    .line 401
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x66f1911

    if-eq v3, v4, :cond_4

    goto :goto_1

    :cond_4
    const-string v3, "queue"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, -0x1

    :goto_2
    if-eqz v0, :cond_6

    goto :goto_3

    .line 403
    :cond_6
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->aJ:I

    invoke-virtual {v1, p1}, Lo/DatePickerSpinnerDelegate;->setIconDrawable(I)V

    .line 404
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lS:I

    invoke-virtual {p0, p1}, Lo/Kh;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/DatePickerSpinnerDelegate;->setMessageText(Ljava/lang/CharSequence;)V

    .line 405
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lN:I

    invoke-virtual {p0, p1}, Lo/Kh;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/DatePickerSpinnerDelegate;->setButtonText(Ljava/lang/CharSequence;)V

    .line 406
    new-instance p1, Lo/Kh$3;

    invoke-direct {p1, p0}, Lo/Kh$3;-><init>(Lo/Kh;)V

    invoke-virtual {v1, p1}, Lo/DatePickerSpinnerDelegate;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private d(I)V
    .locals 2

    .line 208
    new-instance v0, Lo/Kh$5;

    invoke-virtual {p0}, Lo/Kh;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lo/Kh$5;-><init>(Lo/Kh;Landroid/content/Context;I)V

    iput-object v0, p0, Lo/Kh;->h:Lcom/netflix/android/widgetry/widget/TrackedGridLayoutManager;

    .line 219
    iget-object v0, p0, Lo/Kh;->h:Lcom/netflix/android/widgetry/widget/TrackedGridLayoutManager;

    invoke-virtual {v0, p1}, Lcom/netflix/android/widgetry/widget/TrackedGridLayoutManager;->a(I)V

    .line 220
    iget-object p1, p0, Lo/Kh;->j:Lo/ParcelableParcel;

    iget-object v0, p0, Lo/Kh;->h:Lcom/netflix/android/widgetry/widget/TrackedGridLayoutManager;

    invoke-virtual {p1, v0}, Lo/ParcelableParcel;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    return-void
.end method

.method static synthetic d(Lo/Kh;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lo/Kh;->A()V

    return-void
.end method

.method static synthetic d(Lo/Kh;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lo/Kh;->c(Z)V

    return-void
.end method

.method static synthetic e(Lo/Kh;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lo/Kh;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static e(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;)Lo/Kh;
    .locals 4

    .line 100
    new-instance v0, Lo/Kh;

    invoke-direct {v0}, Lo/Kh;-><init>()V

    .line 102
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 103
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "list_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lomo_parcel"

    .line 104
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "genre_from_lolomo"

    .line 105
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v1}, Lo/Kh;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V
    .locals 1

    .line 224
    new-instance v0, Lo/Kh$4;

    invoke-direct {v0, p0, p1, p2}, Lo/Kh$4;-><init>(Lo/Kh;Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "queue"

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected D()V
    .locals 3

    .line 441
    iget-object v0, p0, Lo/Kh;->q:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/Kh;->j:Lo/ParcelableParcel;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "GalleryLoMoFrag"

    const-string v2, "Restoring layout manager state: %s"

    .line 442
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 444
    iget-object v0, p0, Lo/Kh;->j:Lo/ParcelableParcel;

    invoke-virtual {v0}, Lo/ParcelableParcel;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    iget-object v1, p0, Lo/Kh;->q:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    .line 445
    iput-object v0, p0, Lo/Kh;->q:Landroid/os/Parcelable;

    :cond_0
    return-void
.end method

.method public ad_()Z
    .locals 4

    .line 472
    invoke-virtual {p0}, Lo/Kh;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lo/Kh;->i:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo/Kh;->f:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 476
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 477
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 479
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 480
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    const/4 v1, 0x1

    .line 481
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 482
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object v0

    .line 479
    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    return v1

    :cond_2
    return v2
.end method

.method public b(IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 3

    .line 204
    new-instance v0, Lo/CheckBox;

    iget-object v1, p0, Lo/Kh;->l:Lo/DatePickerCalendarDelegate$Activity;

    sget-object v2, Lo/CheckBox;->c:Lo/CheckBox$ActionBar;

    invoke-direct {v0, p1, v1, v2}, Lo/CheckBox;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;Lo/CheckBox$ActionBar;)V

    iput-object v0, p0, Lo/Kh;->k:Lo/EditText;

    return-void
.end method

.method public c(Landroid/os/Parcelable;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lo/Kh;->q:Landroid/os/Parcelable;

    return-void
.end method

.method public d()Landroid/os/Parcelable;
    .locals 1

    .line 452
    iget-object v0, p0, Lo/Kh;->j:Lo/ParcelableParcel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/ParcelableParcel;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/Kh;->j:Lo/ParcelableParcel;

    .line 453
    invoke-virtual {v0}, Lo/ParcelableParcel;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 6

    .line 462
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fK:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lo/Kh;->d:I

    iget v1, p0, Lo/Kh;->c:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/RemoteException;->e(Landroid/view/View;II)V

    .line 464
    iget-object p1, p0, Lo/Kh;->j:Lo/ParcelableParcel;

    if-eqz p1, :cond_0

    .line 465
    invoke-virtual {p1}, Lo/ParcelableParcel;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lo/Kh;->d:I

    iget v2, p0, Lo/Kh;->c:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lo/Kh;->j:Lo/ParcelableParcel;

    .line 466
    invoke-virtual {v2}, Lo/ParcelableParcel;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lo/Kh;->g:I

    iget-object v4, p0, Lo/Kh;->j:Lo/ParcelableParcel;

    invoke-virtual {v4}, Lo/ParcelableParcel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/netflix/mediaclient/ui/R$TaskDescription;->S:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 465
    invoke-virtual {p1, v0, v1, v2, v3}, Lo/ParcelableParcel;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 161
    iget-object v0, p0, Lo/Kh;->j:Lo/ParcelableParcel;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {v0, v1}, Lo/ParcelableParcel;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v0, v1}, Lo/ParcelableParcel;->scrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected e(Landroid/view/View;)V
    .locals 1

    .line 175
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hd:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/ParcelableParcel;

    iput-object p1, p0, Lo/Kh;->j:Lo/ParcelableParcel;

    .line 178
    invoke-static {}, Lo/ady;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lo/Kh;->j:Lo/ParcelableParcel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/ParcelableParcel;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$FragmentManager;)V

    .line 182
    :cond_0
    invoke-virtual {p0}, Lo/Kh;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->e(Landroid/content/Context;)I

    move-result p1

    .line 183
    invoke-direct {p0, p1}, Lo/Kh;->d(I)V

    .line 184
    invoke-virtual {p0}, Lo/Kh;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lo/Kh;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V

    return-void
.end method

.method protected g()V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lo/Kh;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    const-class v1, Lo/Kh;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "list_id"

    .line 132
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/Kh;->n:Ljava/lang/String;

    const-string v1, "lomo_parcel"

    .line 133
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    iput-object v1, p0, Lo/Kh;->f:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    const-string v1, "genre_parcel"

    .line 134
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    iput-object v1, p0, Lo/Kh;->i:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    const-string v1, "genre_from_lolomo"

    .line 135
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/Kh;->o:Ljava/lang/String;

    const-string v1, "similars_videotype"

    .line 136
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Kh;->m:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 189
    invoke-super {p0, p1}, Lo/Iv;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 191
    invoke-virtual {p0}, Lo/Kh;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    .line 192
    iget-object v0, p0, Lo/Kh;->b:Lo/KL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Kh;->h:Lcom/netflix/android/widgetry/widget/TrackedGridLayoutManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 193
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->e(Landroid/content/Context;)I

    move-result v0

    .line 194
    iget-object v1, p0, Lo/Kh;->b:Lo/KL;

    const/4 v2, 0x1

    .line 195
    invoke-static {p1, v2, v0}, Lo/Kl$Activity;->d(Landroid/content/Context;II)Lo/PooledStringWriter;

    move-result-object p1

    .line 194
    invoke-virtual {v1, p1}, Lo/KL;->e(Lo/PooledStringWriter;)V

    .line 199
    iget-object p1, p0, Lo/Kh;->h:Lcom/netflix/android/widgetry/widget/TrackedGridLayoutManager;

    invoke-virtual {p1, v0}, Lcom/netflix/android/widgetry/widget/TrackedGridLayoutManager;->a(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lo/Kh;->y()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 143
    invoke-virtual {p0}, Lo/Kh;->g()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 368
    iget-object v0, p0, Lo/Kh;->b:Lo/KL;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/Kh;->j:Lo/ParcelableParcel;

    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {v1}, Lo/ParcelableParcel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/KL;->b(Landroid/content/Context;)V

    .line 371
    :cond_0
    invoke-super {p0}, Lo/Iv;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 360
    iget-object v0, p0, Lo/Kh;->b:Lo/KL;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/Kh;->j:Lo/ParcelableParcel;

    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {v1}, Lo/ParcelableParcel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/KL;->d(Landroid/content/Context;)V

    .line 363
    :cond_0
    invoke-super {p0}, Lo/Iv;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 352
    invoke-super {p0}, Lo/Iv;->onResume()V

    .line 353
    iget-object v0, p0, Lo/Kh;->b:Lo/KL;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/Kh;->j:Lo/ParcelableParcel;

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {v1}, Lo/ParcelableParcel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/KL;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Lo/Kh;->b(Landroid/view/View;)V

    .line 150
    invoke-virtual {p0, p1}, Lo/Kh;->e(Landroid/view/View;)V

    .line 151
    invoke-super {p0, p1, p2}, Lo/Iv;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lo/Iv;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Kh;->i:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo/Kh;->f:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;
    .locals 1

    .line 122
    iget-object v0, p0, Lo/Kh;->f:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lo/Kh;->n:Ljava/lang/String;

    return-object v0
.end method

.method protected y()I
    .locals 1

    .line 171
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->bT:I

    return v0
.end method

.method public z()V
    .locals 0

    .line 436
    invoke-direct {p0}, Lo/Kh;->A()V

    .line 437
    invoke-virtual {p0}, Lo/Kh;->D()V

    return-void
.end method
