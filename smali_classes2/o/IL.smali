.class public Lo/IL;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""

# interfaces
.implements Lo/DatePickerCalendarDelegate$Activity;
.implements Lo/DL;
.implements Lo/Se$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/IL$ActionBar;,
        Lo/IL$Activity;,
        Lo/IL$Application;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:I

.field private D:Lo/IL$Activity;

.field private E:I

.field private F:J

.field private G:Z

.field private H:Lo/Ba;

.field private I:Z

.field private J:Lo/Bb;

.field private K:Lo/Fy;

.field private final L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;"
        }
    .end annotation
.end field

.field private M:Landroid/widget/FrameLayout;

.field private N:Lo/Bc;

.field private final R:Landroid/content/BroadcastReceiver;

.field protected b:Lo/IL$Application;

.field protected f:Lo/MultiAutoCompleteTextView$Application;

.field protected h:Lo/adL;

.field protected i:Z

.field private j:Z

.field private k:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lo/AU;

.field private m:I

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AS;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/String;

.field private p:Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;

.field private final q:Lo/FI;

.field private r:Z

.field private s:Lo/UpdateEngine;

.field private t:Landroid/view/View;

.field private u:Lo/Jj;

.field private v:Lo/DE;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Landroidx/recyclerview/widget/RecyclerView;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 115
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 136
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lo/IL;->k:Ljava/util/Stack;

    .line 160
    invoke-static {p0}, Lo/UpdateEngine;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    iput-object v0, p0, Lo/IL;->s:Lo/UpdateEngine;

    .line 162
    new-instance v0, Lo/FI;

    iget-object v1, p0, Lo/IL;->s:Lo/UpdateEngine;

    .line 163
    invoke-virtual {v1}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/FI;-><init>(Lio/reactivex/Observable;)V

    iput-object v0, p0, Lo/IL;->q:Lo/FI;

    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lo/IL;->w:Z

    const/4 v0, -0x1

    .line 182
    iput v0, p0, Lo/IL;->C:I

    .line 184
    iput v0, p0, Lo/IL;->z:I

    .line 186
    iput v0, p0, Lo/IL;->B:I

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lo/IL;->I:Z

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/IL;->L:Ljava/util/List;

    .line 1180
    new-instance v0, Lo/IL$7;

    invoke-direct {v0, p0}, Lo/IL$7;-><init>(Lo/IL;)V

    iput-object v0, p0, Lo/IL;->f:Lo/MultiAutoCompleteTextView$Application;

    .line 1613
    new-instance v0, Lo/IL$10;

    invoke-direct {v0, p0}, Lo/IL$10;-><init>(Lo/IL;)V

    iput-object v0, p0, Lo/IL;->R:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private B()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 371
    new-instance v0, Lo/Jj;

    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v1

    iget v2, p0, Lo/IL;->m:I

    invoke-direct {v0, v1, v2}, Lo/Jj;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lo/IL;->u:Lo/Jj;

    .line 372
    iget-object v0, p0, Lo/IL;->u:Lo/Jj;

    invoke-virtual {v0}, Lo/Jj;->r()V

    .line 373
    iget-object v0, p0, Lo/IL;->u:Lo/Jj;

    invoke-virtual {v0}, Lo/Jj;->q()V

    .line 375
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    check-cast v0, Lo/MultiAutoCompleteTextView;

    iget-object v1, p0, Lo/IL;->u:Lo/Jj;

    invoke-virtual {v0, v1}, Lo/MultiAutoCompleteTextView;->a(Landroid/view/View;)V

    .line 376
    iget-object v0, p0, Lo/IL;->u:Lo/Jj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/Jj;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lo/IL;->u:Lo/Jj;

    invoke-virtual {v0}, Lo/Jj;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lo/IL$4;

    invoke-direct {v1, p0}, Lo/IL$4;-><init>(Lo/IL;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 386
    invoke-static {p0}, Lo/UpdateEngine;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    const-class v1, Lo/DG;

    invoke-virtual {v0, v1}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lo/IO;

    invoke-direct {v1, p0}, Lo/IO;-><init>(Lo/IL;)V

    .line 387
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 394
    new-instance v0, Lo/Fy;

    iget-object v1, p0, Lo/IL;->M:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lo/UpdateEngine;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v2

    iget v3, p0, Lo/IL;->m:I

    invoke-direct {v0, v1, v2, v3}, Lo/Fy;-><init>(Landroid/view/ViewGroup;Lo/UpdateEngine;I)V

    iput-object v0, p0, Lo/IL;->K:Lo/Fy;

    .line 395
    new-instance v4, Lo/EO;

    iget-object v5, p0, Lo/IL;->K:Lo/Fy;

    iget-object v0, p0, Lo/IL;->s:Lo/UpdateEngine;

    const-class v1, Lo/DC;

    .line 397
    invoke-virtual {v0, v1}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v6

    iget-object v0, p0, Lo/IL;->s:Lo/UpdateEngine;

    .line 398
    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lo/EO;-><init>(Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/ES;Ljava/lang/String;)V

    return-void
.end method

.method private C()V
    .locals 2

    .line 350
    new-instance v0, Lo/IL$Activity;

    new-instance v1, Lo/IL$ActionBar;

    invoke-direct {v1, p0}, Lo/IL$ActionBar;-><init>(Lo/IL;)V

    invoke-direct {v0, p0, v1}, Lo/IL$Activity;-><init>(Lo/IL;Lo/DN$Application;)V

    iput-object v0, p0, Lo/IL;->D:Lo/IL$Activity;

    .line 351
    invoke-direct {p0}, Lo/IL;->Q()V

    .line 352
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lo/IL;->D:Lo/IL$Activity;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    return-void
.end method

.method private E()V
    .locals 3

    .line 521
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lo/IL;->h:Lo/adL;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    .line 522
    new-instance v0, Lo/adL;

    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-virtual {v1}, Lo/Serializable;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->N:I

    .line 523
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lo/IL;->x()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lo/adL;-><init>(II)V

    iput-object v0, p0, Lo/IL;->h:Lo/adL;

    .line 524
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lo/IL;->h:Lo/adL;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    return-void
.end method

.method private F()V
    .locals 2

    .line 531
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 532
    invoke-direct {p0}, Lo/IL;->I()V

    .line 533
    invoke-direct {p0}, Lo/IL;->E()V

    .line 534
    iget-object v1, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method private G()V
    .locals 2

    .line 430
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 434
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setFocusable(Z)V

    .line 435
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    const-string v0, "KidsCharacterDetailsFrag"

    const-string v1, "Setting recyclerView to invisible"

    .line 437
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 440
    invoke-direct {p0}, Lo/IL;->I()V

    .line 441
    invoke-direct {p0}, Lo/IL;->C()V

    .line 442
    invoke-direct {p0}, Lo/IL;->E()V

    return-void
.end method

.method private H()V
    .locals 4

    .line 402
    invoke-virtual {p0}, Lo/IL;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 403
    iget-object v1, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_4

    .line 404
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 413
    :cond_1
    invoke-static {}, Lo/adq;->c()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lo/adq;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    :cond_2
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lo/IL;->u:Lo/Jj;

    .line 415
    invoke-virtual {v3}, Lo/Jj;->m()Lo/BaseAdapter;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    .line 414
    invoke-static {v0, v1, v2, v2}, Lo/DE;->d(Landroidx/recyclerview/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lo/DE;

    move-result-object v0

    iput-object v0, p0, Lo/IL;->v:Lo/DE;

    .line 416
    iget-object v0, p0, Lo/IL;->v:Lo/DE;

    new-instance v1, Lo/IP;

    invoke-direct {v1, p0}, Lo/IP;-><init>(Lo/IL;)V

    invoke-virtual {v0, v1}, Lo/DE;->c(Lo/DE$Activity;)V

    .line 418
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lo/IL;->v:Lo/DE;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    .line 421
    :cond_3
    invoke-virtual {p0}, Lo/IL;->ad_()Z

    :cond_4
    :goto_0
    return-void
.end method

.method private I()V
    .locals 3

    .line 458
    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 462
    :cond_0
    invoke-virtual {p0}, Lo/IL;->x()I

    move-result v0

    .line 463
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 464
    new-instance v2, Lo/IL$2;

    invoke-direct {v2, p0, v0}, Lo/IL$2;-><init>(Lo/IL;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;)V

    .line 476
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 477
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-static {v1}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method private J()Lo/DE;
    .locals 10

    .line 692
    invoke-virtual {p0}, Lo/IL;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v2}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 696
    :cond_0
    new-instance v0, Lo/Ji;

    iget-object v3, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    new-array v4, v2, [Landroid/view/View;

    iget-boolean v2, p0, Lo/IL;->i:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/IL;->M:Landroid/widget/FrameLayout;

    move-object v5, v2

    goto :goto_0

    :cond_1
    move-object v5, v1

    :goto_0
    iget-boolean v2, p0, Lo/IL;->i:Z

    if-eqz v2, :cond_2

    iget-object v1, p0, Lo/IL;->u:Lo/Jj;

    .line 697
    invoke-virtual {v1}, Lo/Jj;->l()Landroid/view/ViewGroup;

    move-result-object v1

    :cond_2
    move-object v6, v1

    iget-object v7, p0, Lo/IL;->u:Lo/Jj;

    iget-boolean v8, p0, Lo/IL;->i:Z

    iget v9, p0, Lo/IL;->m:I

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lo/Ji;-><init>(Landroidx/recyclerview/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;ZI)V

    iput-object v0, p0, Lo/IL;->v:Lo/DE;

    .line 698
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lo/IL;->v:Lo/DE;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    .line 700
    iget-object v0, p0, Lo/IL;->v:Lo/DE;

    new-instance v1, Lo/IL$5;

    invoke-direct {v1, p0}, Lo/IL$5;-><init>(Lo/IL;)V

    invoke-virtual {v0, v1}, Lo/DE;->c(Lo/DE$TaskDescription;)V

    .line 719
    invoke-virtual {p0}, Lo/IL;->ad_()Z

    .line 721
    iget-object v0, p0, Lo/IL;->v:Lo/DE;

    return-object v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method private K()V
    .locals 4

    .line 560
    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    .line 562
    iget-object v1, p0, Lo/IL;->J:Lo/Bb;

    iget-object v2, p0, Lo/IL;->k:Ljava/util/Stack;

    iget-object v3, p0, Lo/IL;->p:Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;

    invoke-direct {p0, v0, v1, v2, v3}, Lo/IL;->a(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Lo/Be;Ljava/util/Stack;Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;)V

    :cond_0
    return-void
.end method

.method private L()V
    .locals 2

    .line 725
    iget-object v0, p0, Lo/IL;->l:Lo/AU;

    if-eqz v0, :cond_0

    .line 726
    iget-object v1, p0, Lo/IL;->D:Lo/IL$Activity;

    invoke-static {v1, v0}, Lo/IL$Activity;->a(Lo/IL$Activity;Lo/AU;)V

    goto :goto_0

    .line 728
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "KidsCharacterDetails is null, should never hit this because movie/show details are not even fetched if this is null "

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private M()V
    .locals 4

    .line 597
    invoke-direct {p0}, Lo/IL;->F()V

    .line 599
    iget-object v0, p0, Lo/IL;->n:Ljava/util/List;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 600
    iget-object v0, p0, Lo/IL;->u:Lo/Jj;

    invoke-virtual {v0}, Lo/Jj;->l()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lo/IL;->D:Lo/IL$Activity;

    iget-object v2, p0, Lo/IL;->n:Ljava/util/List;

    iget-object v3, p0, Lo/IL;->f:Lo/MultiAutoCompleteTextView$Application;

    invoke-virtual {v0, v2, v1, v3}, Lo/IL$Activity;->d(Ljava/util/Collection;ILo/MultiAutoCompleteTextView$Application;)V

    goto :goto_0

    .line 603
    :cond_0
    iget-object v0, p0, Lo/IL;->D:Lo/IL$Activity;

    invoke-virtual {v0, v1}, Lo/IL$Activity;->c(I)V

    .line 604
    iget-object v0, p0, Lo/IL;->D:Lo/IL$Activity;

    iget-object v1, p0, Lo/IL;->f:Lo/MultiAutoCompleteTextView$Application;

    invoke-virtual {v0, v1}, Lo/IL$Activity;->e(Lo/MultiAutoCompleteTextView$Application;)V

    .line 605
    iget-object v0, p0, Lo/IL;->D:Lo/IL$Activity;

    invoke-virtual {v0}, Lo/IL$Activity;->d()V

    .line 607
    :goto_0
    invoke-direct {p0}, Lo/IL;->S()V

    return-void
.end method

.method private N()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 613
    invoke-virtual {p0}, Lo/IL;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 616
    :cond_0
    new-instance v1, Lo/IQ;

    invoke-direct {v1, p0}, Lo/IQ;-><init>(Lo/IL;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method private O()V
    .locals 3

    .line 1201
    iget-object v0, p0, Lo/IL;->s:Lo/UpdateEngine;

    const-class v1, Lo/ApduList;

    sget-object v2, Lo/ApduList$StateListAnimator;->e:Lo/ApduList$StateListAnimator;

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method private P()V
    .locals 2

    .line 863
    iget-object v0, p0, Lo/IL;->u:Lo/Jj;

    iget-object v1, p0, Lo/IL;->l:Lo/AU;

    invoke-virtual {v0, v1}, Lo/Jj;->c(Lo/AU;)V

    .line 864
    iget-object v0, p0, Lo/IL;->D:Lo/IL$Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lo/IL$Activity;->c(I)V

    .line 865
    iget-object v0, p0, Lo/IL;->D:Lo/IL$Activity;

    iget-object v1, p0, Lo/IL;->f:Lo/MultiAutoCompleteTextView$Application;

    invoke-virtual {v0, v1}, Lo/IL$Activity;->e(Lo/MultiAutoCompleteTextView$Application;)V

    .line 867
    invoke-virtual {p0}, Lo/IL;->y()V

    .line 868
    invoke-direct {p0}, Lo/IL;->O()V

    .line 871
    iget-object v0, p0, Lo/IL;->b:Lo/IL$Application;

    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {v0}, Lo/IL$Application;->a()V

    :cond_0
    return-void
.end method

.method private Q()V
    .locals 2

    .line 1479
    iget-object v0, p0, Lo/IL;->D:Lo/IL$Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/IL$Activity;->a(Z)V

    .line 1480
    iput-boolean v1, p0, Lo/IL;->G:Z

    const-wide/16 v0, -0x1

    .line 1481
    iput-wide v0, p0, Lo/IL;->F:J

    const/4 v0, 0x0

    .line 1482
    iput v0, p0, Lo/IL;->E:I

    .line 1484
    invoke-direct {p0}, Lo/IL;->R()V

    return-void
.end method

.method private R()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1290
    invoke-virtual {p0}, Lo/IL;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 1291
    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/IL;->H:Lo/Ba;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1296
    :cond_0
    new-instance v1, Lo/IS;

    invoke-direct {v1, p0}, Lo/IS;-><init>(Lo/IL;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private S()V
    .locals 2

    .line 835
    iget v0, p0, Lo/IL;->C:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/IL;->J:Lo/Bb;

    if-eqz v0, :cond_0

    .line 836
    invoke-interface {v0}, Lo/Bb;->aA()I

    move-result v0

    invoke-direct {p0, v0}, Lo/IL;->c(I)I

    move-result v0

    iput v0, p0, Lo/IL;->C:I

    .line 839
    :cond_0
    iget v0, p0, Lo/IL;->C:I

    if-gez v0, :cond_1

    const-string v0, "KidsCharacterDetailsFrag"

    const-string v1, "No valid season index found"

    .line 840
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 847
    invoke-direct {p0, v0, v1}, Lo/IL;->e(IZ)V

    return-void
.end method

.method private T()V
    .locals 3

    .line 1510
    iget-boolean v0, p0, Lo/IL;->I:Z

    if-eqz v0, :cond_5

    const-string v0, "KidsCharacterDetailsFrag"

    const-string v1, "Show is \'Day After Broadcast\' (DAB), invalidating episode cache"

    .line 1511
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    invoke-virtual {p0}, Lo/IL;->U_()Lo/Am;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1513
    invoke-virtual {v1}, Lo/Am;->c()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1518
    :cond_0
    iget-object v2, p0, Lo/IL;->H:Lo/Ba;

    if-nez v2, :cond_1

    const-string v1, "No season details yet"

    .line 1519
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1523
    :cond_1
    invoke-interface {v2}, Lo/Ba;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1528
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1529
    invoke-virtual {v1}, Lo/Am;->p()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    iget-object v1, p0, Lo/IL;->x:Ljava/lang/String;

    iget-object v2, p0, Lo/IL;->H:Lo/Ba;

    invoke-static {v0, v1, v2}, Lo/adS;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging;Ljava/lang/String;Lo/Ba;)V

    return-void

    .line 1533
    :cond_2
    invoke-virtual {v1}, Lo/Am;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 1540
    :cond_3
    invoke-virtual {v1}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-interface {v1, v0, v2}, Lo/zG;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string v1, "Manager is not ready"

    .line 1514
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method private U()V
    .locals 4

    const-string v0, "KidsCharacterDetailsFrag"

    const-string v1, "Showing loading view"

    .line 1500
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    iget-object v0, p0, Lo/IL;->s:Lo/UpdateEngine;

    const-class v1, Lo/ApduList;

    new-instance v2, Lo/ApduList$TaskDescription;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/ApduList$TaskDescription;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 1504
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1505
    iget-object v0, p0, Lo/IL;->s:Lo/UpdateEngine;

    const-class v1, Lo/DC;

    new-instance v2, Lo/DC$PendingIntent;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lo/DC$PendingIntent;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method static synthetic a(Lo/IL;)Lo/Jj;
    .locals 0

    .line 115
    iget-object p0, p0, Lo/IL;->u:Lo/Jj;

    return-object p0
.end method

.method private a(I)V
    .locals 1

    .line 736
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/IL;->D:Lo/IL$Activity;

    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {v0, p1}, Lo/IL$Activity;->h(I)V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/FC;)V
    .locals 5

    .line 1219
    instance-of v0, p2, Lo/FC$Application;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1220
    iput-boolean v1, p0, Lo/IL;->w:Z

    .line 1222
    check-cast p2, Lo/FC$Application;

    invoke-virtual {p2}, Lo/FC$Application;->c()Lo/Bc;

    move-result-object p2

    .line 1223
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p1, v0, :cond_0

    .line 1224
    check-cast p2, Lo/Bb;

    .line 1225
    invoke-direct {p0, p2}, Lo/IL;->c(Lo/Bb;)V

    goto/16 :goto_1

    .line 1226
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p1, v0, :cond_9

    .line 1227
    invoke-direct {p0}, Lo/IL;->L()V

    .line 1228
    invoke-virtual {p0, p2}, Lo/IL;->a(Lo/Bc;)V

    .line 1229
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, p1}, Lo/IL;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_1

    .line 1232
    :cond_1
    instance-of p1, p2, Lo/FC$AssistContent;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 1233
    check-cast p2, Lo/FC$AssistContent;

    invoke-virtual {p2}, Lo/FC$AssistContent;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/IL;->c(Ljava/util/List;)V

    .line 1235
    iget-object p1, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "KidsCharacterDetailsFrag"

    const-string p2, "Showing recycler view"

    .line 1236
    invoke-static {p1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object p1, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v0}, Lo/aeV;->d(Landroid/view/View;Z)V

    .line 1238
    invoke-direct {p0}, Lo/IL;->O()V

    goto/16 :goto_1

    .line 1240
    :cond_2
    instance-of p1, p2, Lo/FC$TaskStackBuilder;

    if-eqz p1, :cond_8

    .line 1241
    check-cast p2, Lo/FC$TaskStackBuilder;

    invoke-virtual {p2}, Lo/FC$TaskStackBuilder;->c()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 1248
    :cond_3
    iget-object p2, p0, Lo/IL;->L:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq p2, v2, :cond_4

    .line 1249
    invoke-virtual {p0, p1}, Lo/IL;->c(Ljava/util/List;)V

    .line 1252
    :cond_4
    iget p2, p0, Lo/IL;->C:I

    const-string v2, " for show "

    const-string v3, " with season count="

    if-gez p2, :cond_5

    .line 1254
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SPY-12784: negative currSeasonIndex="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lo/IL;->C:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/IL;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1254
    invoke-interface {p2, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 1256
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 1257
    invoke-direct {p0, v1, v1}, Lo/IL;->e(IZ)V

    goto :goto_1

    .line 1259
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt p2, v4, :cond_6

    .line 1262
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-direct {p0, p2, v1}, Lo/IL;->e(IZ)V

    .line 1263
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPY-12784: currSeasonIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/IL;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lo/IL;->x:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1263
    invoke-interface {p2, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 1269
    :cond_6
    iget p2, p0, Lo/IL;->C:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Ba;

    .line 1270
    iget-object p2, p0, Lo/IL;->D:Lo/IL$Activity;

    const/4 v0, -0x1

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lo/IL$Activity;->getItemCount()I

    move-result p2

    goto :goto_0

    :cond_7
    const/4 p2, -0x1

    :goto_0
    if-eqz p1, :cond_9

    if-eq p2, v0, :cond_9

    .line 1271
    invoke-interface {p1}, Lo/Ba;->as()I

    move-result p1

    if-eq p1, p2, :cond_9

    .line 1272
    invoke-direct {p0}, Lo/IL;->R()V

    goto :goto_1

    .line 1275
    :cond_8
    instance-of p1, p2, Lo/FC$TaskDescription;

    if-eqz p1, :cond_9

    .line 1276
    check-cast p2, Lo/FC$TaskDescription;

    invoke-virtual {p2}, Lo/FC$TaskDescription;->a()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    .line 1277
    invoke-direct {p0, p1}, Lo/IL;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_9
    :goto_1
    return-void
.end method

.method private a(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Lo/Be;Ljava/util/Stack;Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/details/DetailsActivity;",
            "Lo/Be;",
            "Ljava/util/Stack<",
            "Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;",
            ">;",
            "Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;",
            ")V"
        }
    .end annotation

    .line 571
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    if-nez p4, :cond_0

    .line 578
    invoke-virtual {p3}, Ljava/util/Stack;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 579
    invoke-interface {p2}, Lo/Be;->aE()I

    move-result p2

    goto :goto_0

    .line 585
    :cond_0
    invoke-virtual {p3}, Ljava/util/Stack;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p4}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->e()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 586
    invoke-virtual {p4}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->e()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-lez p2, :cond_2

    .line 591
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->a(I)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->d(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    :cond_2
    return-void
.end method

.method private static synthetic a(Ljava/lang/Throwable;)V
    .locals 1

    .line 940
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic a(Lo/Am;)V
    .locals 2

    const/4 v0, 0x1

    .line 617
    iput-boolean v0, p0, Lo/IL;->w:Z

    .line 619
    invoke-direct {p0}, Lo/IL;->U()V

    .line 620
    iget-object v0, p0, Lo/IL;->q:Lo/FI;

    iget-object v1, p0, Lo/IL;->o:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lo/FI;->d(Lo/Am;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lo/IL;->s:Lo/UpdateEngine;

    .line 621
    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lo/IN;

    invoke-direct {v0, p0}, Lo/IN;-><init>(Lo/IL;)V

    .line 622
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic a(Lo/FC;)V
    .locals 1

    .line 624
    instance-of v0, p1, Lo/FC$FragmentManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 625
    iput-boolean v0, p0, Lo/IL;->w:Z

    .line 627
    check-cast p1, Lo/FC$FragmentManager;

    invoke-virtual {p1}, Lo/FC$FragmentManager;->c()Lo/AU;

    move-result-object p1

    .line 628
    invoke-direct {p0, p1}, Lo/IL;->c(Lo/AU;)V

    goto :goto_0

    .line 629
    :cond_0
    instance-of v0, p1, Lo/FC$TaskDescription;

    if-eqz v0, :cond_1

    .line 630
    check-cast p1, Lo/FC$TaskDescription;

    invoke-virtual {p1}, Lo/FC$TaskDescription;->a()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    .line 631
    invoke-direct {p0, p1}, Lo/IL;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lo/IL;Lo/AS;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lo/IL;->d(Lo/AS;)V

    return-void
.end method

.method static synthetic a(Lo/IL;Lo/Am;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/IL;->d(Lo/Am;)V

    return-void
.end method

.method static synthetic a(Lo/IL;Lo/FC;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/IL;->a(Lo/FC;)V

    return-void
.end method

.method private synthetic a(Lo/ValidationProbeEvent;)V
    .locals 3

    .line 929
    instance-of p1, p1, Lo/ValidationProbeEvent$TaskDescription;

    if-eqz p1, :cond_1

    .line 931
    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object p1

    .line 932
    instance-of v0, p1, Lo/DatePickerCalendarDelegate$Activity;

    if-eqz v0, :cond_0

    .line 933
    check-cast p1, Lo/DatePickerCalendarDelegate$Activity;

    invoke-interface {p1}, Lo/DatePickerCalendarDelegate$Activity;->d()V

    goto :goto_0

    .line 935
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRetryRequested but activity doesn\'t implement Errors callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lo/IL;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 115
    iget-object p0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic b(Lo/IL;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 115
    iput-object p1, p0, Lo/IL;->n:Ljava/util/List;

    return-object p1
.end method

.method private b(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 307
    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lo/Serializable;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "extra_same_activity_type"

    .line 313
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 317
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lo/IL;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic b(Lo/DG;)V
    .locals 1

    .line 388
    instance-of v0, p1, Lo/DG$StateListAnimator;

    if-eqz v0, :cond_0

    .line 389
    check-cast p1, Lo/DG$StateListAnimator;

    invoke-virtual {p1}, Lo/DG$StateListAnimator;->e()I

    move-result p1

    invoke-direct {p0, p1}, Lo/IL;->e(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lo/IL;Lo/DG;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/IL;->b(Lo/DG;)V

    return-void
.end method

.method private c(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 851
    :goto_0
    iget-object v2, p0, Lo/IL;->L:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 852
    iget-object v2, p0, Lo/IL;->L:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Ba;

    invoke-interface {v2}, Lo/Ba;->X()I

    move-result v2

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 857
    :cond_1
    iget-object p1, p0, Lo/IL;->L:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method static synthetic c(Lo/IL;)Lo/DE;
    .locals 0

    .line 115
    iget-object p0, p0, Lo/IL;->v:Lo/DE;

    return-object p0
.end method

.method private c(Landroid/view/ViewGroup;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 921
    new-instance v0, Lo/BeamShareData;

    new-instance v1, Lo/IpUtils;

    invoke-direct {v1, p1}, Lo/IpUtils;-><init>(Landroid/view/ViewGroup;)V

    iget-object v2, p0, Lo/IL;->s:Lo/UpdateEngine;

    const-class v3, Lo/ApduList;

    invoke-virtual {v2, v3}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/BeamShareData;-><init>(Lo/NsdServiceInfo;Lio/reactivex/Observable;)V

    .line 923
    new-instance v0, Lo/WakeupStats;

    invoke-direct {v0, p1}, Lo/WakeupStats;-><init>(Landroid/view/ViewGroup;)V

    .line 924
    new-instance p1, Lo/WakeupEvent;

    iget-object v1, p0, Lo/IL;->s:Lo/UpdateEngine;

    const-class v2, Lo/ApduList;

    invoke-virtual {v1, v2}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lo/WakeupEvent;-><init>(Lo/WimaxManagerConstants;Lio/reactivex/Observable;)V

    .line 926
    invoke-virtual {v0}, Lo/WakeupStats;->w()Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lo/IL;->s:Lo/UpdateEngine;

    .line 927
    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lo/IU;

    invoke-direct {v0, p0}, Lo/IU;-><init>(Lo/IL;)V

    sget-object v1, Lo/IT;->e:Lo/IT;

    .line 928
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const-string v0, "KidsCharacterDetailsFrag"

    const-string v1, "Showing error view"

    .line 1488
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Display Page Retry Error Message"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1490
    iput-boolean v0, p0, Lo/IL;->w:Z

    .line 1491
    invoke-virtual {p0, p1}, Lo/IL;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1493
    iget-object p1, p0, Lo/IL;->s:Lo/UpdateEngine;

    const-class v1, Lo/ApduList;

    new-instance v2, Lo/ApduList$Application;

    invoke-direct {v2, v0}, Lo/ApduList$Application;-><init>(Z)V

    invoke-virtual {p1, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 1495
    iget-object p1, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 1496
    iget-object p1, p0, Lo/IL;->s:Lo/UpdateEngine;

    const-class v0, Lo/DC;

    new-instance v1, Lo/DC$PendingIntent;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/DC$PendingIntent;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method static synthetic c(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lo/IL;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(Lo/AU;)V
    .locals 4

    .line 639
    invoke-interface {p1}, Lo/AU;->h()Ljava/util/List;

    move-result-object v0

    .line 640
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 641
    sget-object p1, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-direct {p0, p1}, Lo/IL;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 645
    :cond_0
    iput-object p1, p0, Lo/IL;->l:Lo/AU;

    .line 647
    invoke-virtual {p0}, Lo/IL;->g()V

    const/4 p1, 0x0

    .line 650
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AR;

    .line 651
    invoke-interface {v1}, Lo/AR;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    .line 655
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    .line 656
    invoke-interface {v1}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/IL;->x:Ljava/lang/String;

    .line 657
    iput-boolean p1, p0, Lo/IL;->i:Z

    .line 658
    invoke-virtual {p0, v2, p1}, Lo/IL;->e(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V

    goto :goto_1

    .line 661
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v0, :cond_3

    .line 662
    invoke-interface {v1}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/IL;->x:Ljava/lang/String;

    .line 663
    iput-boolean v3, p0, Lo/IL;->i:Z

    .line 665
    iget-object v0, p0, Lo/IL;->u:Lo/Jj;

    invoke-virtual {v0}, Lo/Jj;->l()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 666
    iget-object v0, p0, Lo/IL;->u:Lo/Jj;

    invoke-virtual {v0}, Lo/Jj;->l()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lo/IL;->M:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 668
    :cond_2
    invoke-virtual {p0, v2, p1}, Lo/IL;->e(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V

    goto :goto_1

    .line 669
    :cond_3
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, p1, :cond_5

    .line 672
    invoke-virtual {p0}, Lo/IL;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->performUpAction()V

    .line 674
    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object p1

    instance-of p1, p1, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;

    if-eqz p1, :cond_4

    .line 675
    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterDetailsActivity;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object p1

    goto :goto_0

    .line 677
    :cond_4
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-17538: Activity is not KidsCharacterDetailsActivity"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 678
    new-instance p1, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v0, -0x1b8

    const-string v2, "KidsCharacterDetailsFrag"

    invoke-direct {p1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    .line 681
    :goto_0
    invoke-virtual {p0}, Lo/IL;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const-string v2, "CharacterClickListener"

    .line 680
    invoke-static {v0, v1, p1, v2}, Lo/Dw;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AR;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    .line 688
    :cond_5
    :goto_1
    invoke-direct {p0}, Lo/IL;->J()Lo/DE;

    return-void
.end method

.method private c(Lo/Bb;)V
    .locals 3

    .line 742
    invoke-virtual {p0}, Lo/IL;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 743
    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 747
    :cond_0
    invoke-direct {p0}, Lo/IL;->L()V

    .line 748
    iget-boolean v0, p0, Lo/IL;->i:Z

    if-eqz v0, :cond_3

    .line 749
    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v0, :cond_1

    .line 750
    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-interface {p1}, Lo/Bb;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lo/Bb;->ax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :cond_1
    iput-object p1, p0, Lo/IL;->J:Lo/Bb;

    .line 755
    iget-object v0, p0, Lo/IL;->D:Lo/IL$Activity;

    invoke-virtual {v0, p1}, Lo/IL$Activity;->c(Lo/Bb;)V

    .line 757
    iget-object v0, p0, Lo/IL;->u:Lo/Jj;

    invoke-virtual {v0, p1}, Lo/Jj;->d(Lo/Bc;)V

    .line 758
    iget-object v0, p0, Lo/IL;->u:Lo/Jj;

    invoke-virtual {v0, p1}, Lo/Jj;->setCopyright(Lo/Bc;)V

    .line 761
    iget-object p1, p0, Lo/IL;->A:Ljava/lang/String;

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 762
    iget-object p1, p0, Lo/IL;->J:Lo/Bb;

    invoke-interface {p1}, Lo/Bb;->ax()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/IL;->A:Ljava/lang/String;

    .line 765
    :cond_2
    iget-object p1, p0, Lo/IL;->u:Lo/Jj;

    iget-object v0, p0, Lo/IL;->J:Lo/Bb;

    invoke-virtual {p1, v0}, Lo/Jj;->setupDownloadButton(Lo/Bc;)V

    .line 767
    invoke-direct {p0}, Lo/IL;->M()V

    .line 769
    invoke-direct {p0}, Lo/IL;->K()V

    .line 770
    invoke-virtual {p0}, Lo/IL;->A()V

    .line 771
    invoke-virtual {p0}, Lo/IL;->g()V

    .line 773
    invoke-direct {p0}, Lo/IL;->P()V

    goto :goto_0

    .line 775
    :cond_3
    invoke-virtual {p0, p1}, Lo/IL;->a(Lo/Bc;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lo/IL;ILandroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/IL;->d(ILandroidx/recyclerview/widget/GridLayoutManager;)V

    return-void
.end method

.method static synthetic c(Lo/IL;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLo/Am;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/IL;->e(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLo/Am;)V

    return-void
.end method

.method static synthetic c(Lo/IL;Lo/FC;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/IL;->e(Lo/FC;)V

    return-void
.end method

.method private synthetic d(ILandroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1560
    invoke-virtual {p0}, Lo/IL;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->e(II)V

    :cond_0
    return-void
.end method

.method private static synthetic d(Ljava/lang/Throwable;)V
    .locals 1

    .line 1281
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private d(Lo/AS;)V
    .locals 4

    .line 1566
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->playButton:Lcom/netflix/cl/model/AppView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance v2, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    invoke-direct {v2, v3}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 1567
    invoke-virtual {p0}, Lo/IL;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 1568
    invoke-static {v0}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Lo/CY;

    if-eqz v1, :cond_0

    .line 1570
    move-object v1, v0

    check-cast v1, Lo/CY;

    invoke-interface {v1}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    .line 1571
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->a:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V

    .line 1572
    invoke-interface {p1}, Lo/AS;->bb()Lo/AK;

    move-result-object p1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-static {v0, p1, v2, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    :cond_0
    return-void
.end method

.method private synthetic d(Lo/Am;)V
    .locals 8

    .line 1297
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/IL;->F:J

    .line 1298
    iget v0, p0, Lo/IL;->E:I

    iget-object v1, p0, Lo/IL;->H:Lo/Ba;

    invoke-interface {v1}, Lo/Ba;->as()I

    move-result v1

    if-lt v0, v1, :cond_0

    const-string p1, "KidsCharacterDetailsFrag"

    const-string v0, "nothing more to fetch"

    .line 1299
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1300
    iput-boolean p1, p0, Lo/IL;->G:Z

    return-void

    .line 1304
    :cond_0
    iget v0, p0, Lo/IL;->E:I

    add-int/lit8 v0, v0, 0x28

    add-int/lit8 v0, v0, -0x1

    .line 1305
    iget-object v1, p0, Lo/IL;->H:Lo/Ba;

    invoke-interface {v1}, Lo/Ba;->as()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1306
    iget-object v0, p0, Lo/IL;->H:Lo/Ba;

    invoke-interface {v0}, Lo/Ba;->as()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    move v7, v0

    .line 1309
    iget-object v0, p0, Lo/IL;->H:Lo/Ba;

    invoke-interface {v0}, Lo/Ba;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1314
    invoke-static {v3}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1315
    invoke-virtual {p1}, Lo/Am;->p()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object p1

    iget-object v0, p0, Lo/IL;->x:Ljava/lang/String;

    iget-object v1, p0, Lo/IL;->H:Lo/Ba;

    invoke-static {p1, v0, v1}, Lo/adS;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging;Ljava/lang/String;Lo/Ba;)V

    return-void

    .line 1320
    :cond_2
    sget-object v0, Lo/gB;->e:Lo/gB$Application;

    invoke-virtual {v0}, Lo/gB$Application;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1321
    iget-object v1, p0, Lo/IL;->q:Lo/FI;

    iget-wide v4, p0, Lo/IL;->F:J

    iget p1, p0, Lo/IL;->E:I

    move-object v2, v3

    move-wide v3, v4

    move v5, p1

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lo/FI;->e(Ljava/lang/String;JII)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 1328
    :cond_3
    iget-object v1, p0, Lo/IL;->q:Lo/FI;

    iget-wide v4, p0, Lo/IL;->F:J

    iget v6, p0, Lo/IL;->E:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lo/FI;->b(Lo/Am;Ljava/lang/String;JII)Lio/reactivex/Observable;

    move-result-object p1

    .line 1336
    :goto_0
    iget-object v0, p0, Lo/IL;->s:Lo/UpdateEngine;

    .line 1337
    invoke-virtual {v0}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lo/IV;

    invoke-direct {v0, p0}, Lo/IV;-><init>(Lo/IL;)V

    .line 1338
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic d(Lo/IL;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lo/IL;->H()V

    return-void
.end method

.method static synthetic d(Lo/IL;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/FC;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/IL;->a(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/FC;)V

    return-void
.end method

.method static synthetic d(Lo/IL;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lo/IL;->e(Z)V

    return-void
.end method

.method private d(Z)V
    .locals 0

    .line 1545
    iput-boolean p1, p0, Lo/IL;->I:Z

    return-void
.end method

.method public static e(Ljava/lang/String;I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 219
    new-instance v0, Lo/IL;

    invoke-direct {v0}, Lo/IL;-><init>()V

    .line 220
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_chararcter_id"

    .line 222
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "extra_kids_color_id"

    .line 223
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    invoke-virtual {v0, v1}, Lo/IL;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic e(Lo/IL;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 115
    iput-object p1, p0, Lo/IL;->A:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lo/IL;)Lo/IL$Activity;
    .locals 0

    .line 115
    iget-object p0, p0, Lo/IL;->D:Lo/IL$Activity;

    return-object p0
.end method

.method private e(I)V
    .locals 3

    const/4 v0, 0x1

    .line 1549
    invoke-direct {p0, p1, v0}, Lo/IL;->e(IZ)V

    .line 1550
    iget-object p1, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    return-void

    .line 1554
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 1555
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->h()I

    move-result v0

    .line 1557
    iget-object v1, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lo/IX;

    invoke-direct {v2, p0, v0, p1}, Lo/IX;-><init>(Lo/IL;ILandroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private e(IZ)V
    .locals 3

    .line 814
    invoke-direct {p0}, Lo/IL;->T()V

    .line 816
    iget-object p2, p0, Lo/IL;->L:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, p1, :cond_0

    iget-object p2, p0, Lo/IL;->L:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/Ba;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lo/IL;->H:Lo/Ba;

    .line 817
    iput p1, p0, Lo/IL;->C:I

    .line 819
    iget-object p2, p0, Lo/IL;->H:Lo/Ba;

    .line 825
    iget-object p2, p0, Lo/IL;->s:Lo/UpdateEngine;

    const-class v0, Lo/ApduList;

    new-instance v1, Lo/ApduList$TaskDescription;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo/ApduList$TaskDescription;-><init>(Z)V

    invoke-virtual {p2, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 827
    invoke-direct {p0}, Lo/IL;->Q()V

    const/4 p2, -0x1

    .line 830
    iput p2, p0, Lo/IL;->B:I

    .line 831
    iget-object p2, p0, Lo/IL;->s:Lo/UpdateEngine;

    const-class v0, Lo/DC;

    new-instance v1, Lo/DC$Dialog;

    invoke-direct {v1, p1}, Lo/DC$Dialog;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method private synthetic e(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLo/Am;)V
    .locals 7

    const/4 v0, 0x1

    .line 1213
    iput-boolean v0, p0, Lo/IL;->w:Z

    .line 1215
    iget-object v1, p0, Lo/IL;->q:Lo/FI;

    iget-object v3, p0, Lo/IL;->x:Ljava/lang/String;

    iget-object v5, p0, Lo/IL;->A:Ljava/lang/String;

    move-object v2, p3

    move-object v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lo/FI;->d(Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p2

    iget-object p3, p0, Lo/IL;->s:Lo/UpdateEngine;

    .line 1216
    invoke-virtual {p3}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lo/IZ;

    invoke-direct {p3, p0, p1}, Lo/IZ;-><init>(Lo/IL;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    sget-object p1, Lo/IM;->a:Lo/IM;

    .line 1217
    invoke-virtual {p2, p3, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic e(Lo/FC;)V
    .locals 6

    .line 1340
    instance-of v0, p1, Lo/FC$PendingIntent;

    if-eqz v0, :cond_5

    .line 1341
    iget-wide v0, p0, Lo/IL;->F:J

    check-cast p1, Lo/FC$PendingIntent;

    invoke-virtual {p1}, Lo/FC$PendingIntent;->e()J

    move-result-wide v2

    const-string v4, "KidsCharacterDetailsFrag"

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const-string p1, "Ignoring stale request"

    .line 1342
    invoke-static {v4, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1346
    iput-boolean v0, p0, Lo/IL;->G:Z

    .line 1347
    iget-object v1, p0, Lo/IL;->D:Lo/IL$Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/IL$Activity;->a(Z)V

    .line 1349
    invoke-virtual {p1}, Lo/FC$PendingIntent;->c()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    .line 1350
    iget-object v3, p0, Lo/IL;->D:Lo/IL$Activity;

    invoke-virtual {v3, v1}, Lo/IL$Activity;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1352
    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "Invalid status code"

    .line 1353
    invoke-static {v4, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object p1, p0, Lo/IL;->D:Lo/IL$Activity;

    invoke-virtual {p1}, Lo/IL$Activity;->notifyDataSetChanged()V

    .line 1355
    invoke-direct {p0, v1}, Lo/IL;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 1359
    :cond_1
    invoke-virtual {p1}, Lo/FC$PendingIntent;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1360
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1369
    :cond_2
    invoke-virtual {p1}, Lo/FC$PendingIntent;->d()I

    move-result v3

    .line 1370
    invoke-virtual {p1}, Lo/FC$PendingIntent;->b()I

    move-result p1

    sub-int/2addr p1, v3

    add-int/2addr p1, v0

    .line 1374
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_3

    .line 1375
    iput-boolean v2, p0, Lo/IL;->G:Z

    .line 1378
    :cond_3
    iget-object p1, p0, Lo/IL;->D:Lo/IL$Activity;

    invoke-virtual {p1, v1, v3}, Lo/IL$Activity;->c(Ljava/util/List;I)V

    .line 1379
    iget p1, p0, Lo/IL;->E:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lo/IL;->E:I

    .line 1381
    invoke-virtual {p0}, Lo/IL;->D()V

    .line 1382
    invoke-virtual {p0, v1}, Lo/IL;->d(Ljava/util/List;)V

    .line 1385
    invoke-static {v1}, Lo/Dj;->b(Ljava/util/List;)Z

    move-result p1

    invoke-direct {p0, p1}, Lo/IL;->d(Z)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "No details in response"

    .line 1361
    invoke-static {v4, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iput-boolean v2, p0, Lo/IL;->G:Z

    .line 1363
    iget-object p1, p0, Lo/IL;->D:Lo/IL$Activity;

    invoke-virtual {p1}, Lo/IL$Activity;->notifyDataSetChanged()V

    .line 1364
    sget-object p1, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-direct {p0, p1}, Lo/IL;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic e(Lo/IL;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lo/IL;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic e(Lo/IL;Lo/Am;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/IL;->a(Lo/Am;)V

    return-void
.end method

.method static synthetic e(Lo/IL;Lo/ValidationProbeEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/IL;->a(Lo/ValidationProbeEvent;)V

    return-void
.end method

.method private synthetic e(Z)V
    .locals 3

    .line 417
    iget-object v0, p0, Lo/IL;->s:Lo/UpdateEngine;

    const-class v1, Lo/DC;

    new-instance v2, Lo/DC$ActionBar;

    invoke-direct {v2, p1}, Lo/DC$ActionBar;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method static synthetic f(Lo/IL;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lo/IL;->R()V

    return-void
.end method

.method static synthetic g(Lo/IL;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lo/IL;->G:Z

    return p0
.end method

.method static synthetic h(Lo/IL;)Lo/Bb;
    .locals 0

    .line 115
    iget-object p0, p0, Lo/IL;->J:Lo/Bb;

    return-object p0
.end method

.method static synthetic i(Lo/IL;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lo/IL;->O()V

    return-void
.end method

.method static synthetic j(Lo/IL;)Ljava/util/List;
    .locals 0

    .line 115
    iget-object p0, p0, Lo/IL;->n:Ljava/util/List;

    return-object p0
.end method

.method private z()V
    .locals 2

    .line 294
    iget-object v0, p0, Lo/IL;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;

    iput-object v0, p0, Lo/IL;->p:Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;

    .line 296
    iget-object v0, p0, Lo/IL;->p:Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->d:Ljava/lang/String;

    iput-object v0, p0, Lo/IL;->x:Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lo/IL;->p:Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;

    iget v0, v0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->b:I

    iput v0, p0, Lo/IL;->C:I

    .line 299
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo/IL;->e(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 2

    .line 781
    iget-boolean v0, p0, Lo/IL;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 782
    iput-boolean v0, p0, Lo/IL;->r:Z

    .line 783
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/IL$3;

    invoke-direct {v1, p0}, Lo/IL$3;-><init>(Lo/IL;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 793
    :cond_0
    iget-object v0, p0, Lo/IL;->p:Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->c:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    iget-object v1, p0, Lo/IL;->p:Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->c:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    .line 795
    iput-object v0, p0, Lo/IL;->p:Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;

    :cond_1
    return-void
.end method

.method public D()V
    .locals 5

    .line 1393
    iget v0, p0, Lo/IL;->z:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1394
    iput v0, p0, Lo/IL;->B:I

    .line 1395
    iput v1, p0, Lo/IL;->z:I

    .line 1398
    :cond_0
    iget v0, p0, Lo/IL;->B:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 1399
    iget-object v0, p0, Lo/IL;->D:Lo/IL$Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/IL;->J:Lo/Bb;

    if-eqz v0, :cond_3

    .line 1400
    invoke-interface {v0}, Lo/Bb;->ax()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 1404
    :goto_0
    iget-object v4, p0, Lo/IL;->D:Lo/IL$Activity;

    invoke-virtual {v4}, Lo/IL$Activity;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1405
    iget-object v4, p0, Lo/IL;->D:Lo/IL$Activity;

    invoke-virtual {v4, v3}, Lo/IL$Activity;->d(I)Lo/AR;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 1410
    :cond_1
    invoke-interface {v4}, Lo/AR;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1414
    iput v3, p0, Lo/IL;->B:I

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1421
    :cond_3
    iget v0, p0, Lo/IL;->B:I

    if-ne v0, v1, :cond_4

    .line 1422
    iput v2, p0, Lo/IL;->B:I

    .line 1429
    :cond_4
    invoke-direct {p0}, Lo/IL;->O()V

    .line 1430
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lo/IL;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1432
    iget v0, p0, Lo/IL;->B:I

    iget-object v1, p0, Lo/IL;->D:Lo/IL$Activity;

    invoke-virtual {v1}, Lo/IL$Activity;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 1433
    invoke-direct {p0, v0}, Lo/IL;->a(I)V

    return-void
.end method

.method protected a(Lo/Bc;)V
    .locals 2

    .line 878
    iget-object v0, p0, Lo/IL;->D:Lo/IL$Activity;

    iget-object v1, p0, Lo/IL;->l:Lo/AU;

    invoke-interface {v1}, Lo/AU;->h()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/IL$Activity;->d(Ljava/util/Collection;)V

    .line 881
    iget-object v0, p0, Lo/IL;->u:Lo/Jj;

    invoke-virtual {v0, p1}, Lo/Jj;->d(Lo/Bc;)V

    .line 882
    iget-object p1, p0, Lo/IL;->u:Lo/Jj;

    iget-object v0, p0, Lo/IL;->l:Lo/AU;

    invoke-virtual {p1, v0}, Lo/Jj;->c(Lo/AU;)V

    .line 885
    iget-object p1, p0, Lo/IL;->b:Lo/IL$Application;

    if-eqz p1, :cond_0

    .line 886
    invoke-virtual {p1}, Lo/IL$Application;->a()V

    .line 889
    :cond_0
    invoke-virtual {p0}, Lo/IL;->y()V

    .line 890
    invoke-direct {p0}, Lo/IL;->O()V

    return-void
.end method

.method public ad_()Z
    .locals 4

    .line 895
    invoke-virtual {p0}, Lo/IL;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 897
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 899
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    const/4 v2, 0x1

    .line 900
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 902
    iget-object v3, p0, Lo/IL;->v:Lo/DE;

    if-eqz v3, :cond_0

    .line 903
    invoke-virtual {v3}, Lo/DE;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Landroid/graphics/drawable/Drawable;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    .line 905
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ae_()V
    .locals 4

    .line 1471
    invoke-virtual {p0}, Lo/IL;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 1472
    iget-object v1, p0, Lo/IL;->N:Lo/Bc;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1474
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getTutorialHelper()Lo/Se;

    move-result-object v0

    iget-object v2, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lo/IL;->U_()Lo/Am;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lo/Se;->a(Lo/Se$StateListAnimator;Lo/Bc;Landroidx/recyclerview/widget/RecyclerView;Lo/Am;)V

    :cond_0
    return-void
.end method

.method public b(Lo/BC;)Lo/HwBlob;
    .locals 2

    .line 1461
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->gs:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1466
    :cond_0
    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lo/Se;->a(Landroid/view/View;Landroid/app/Activity;Lo/BC;)Lo/HwBlob;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 2

    .line 357
    iget-boolean v0, p0, Lo/IL;->i:Z

    if-eqz v0, :cond_0

    .line 358
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lo/IL;->e(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V

    :cond_0
    return-void
.end method

.method protected c(Landroid/view/View;)V
    .locals 1

    const v0, 0x102000a

    .line 425
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    .line 426
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jA:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/IL;->t:Landroid/view/View;

    return-void
.end method

.method protected c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;)V"
        }
    .end annotation

    .line 800
    iget-boolean v0, p0, Lo/IL;->i:Z

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lo/IL;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 802
    iget-object v0, p0, Lo/IL;->L:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 803
    iget-object v0, p0, Lo/IL;->s:Lo/UpdateEngine;

    const-class v1, Lo/DC;

    new-instance v2, Lo/DC$PendingIntent;

    invoke-direct {v2, p1}, Lo/DC$PendingIntent;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 804
    invoke-direct {p0}, Lo/IL;->S()V

    goto :goto_0

    .line 806
    :cond_0
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, p1}, Lo/IL;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 364
    invoke-virtual {p0}, Lo/IL;->U_()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-direct {p0}, Lo/IL;->N()V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 4

    .line 1628
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lo/IL;->d:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lo/IL;->g:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;)V"
        }
    .end annotation

    .line 1440
    invoke-virtual {p0}, Lo/IL;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1444
    iput-object v0, p0, Lo/IL;->N:Lo/Bc;

    if-eqz p1, :cond_2

    .line 1446
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Bc;

    .line 1448
    invoke-interface {v0}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    invoke-interface {v1}, Lo/AK;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1449
    iput-object v0, p0, Lo/IL;->N:Lo/Bc;

    .line 1450
    invoke-virtual {p0}, Lo/IL;->af_()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1451
    invoke-virtual {p0}, Lo/IL;->ae_()V

    :cond_2
    return-void
.end method

.method protected e(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult",
            "AutoDispose"
        }
    .end annotation

    .line 1206
    invoke-virtual {p0}, Lo/IL;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 1207
    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/IL;->x:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1212
    :cond_0
    new-instance v1, Lo/IR;

    invoke-direct {v1, p0, p1, p2}, Lo/IR;-><init>(Lo/IL;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected g()V
    .locals 2

    .line 446
    iget-object v0, p0, Lo/IL;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lo/IL;->t:Landroid/view/View;

    new-instance v1, Lo/IL$1;

    invoke-direct {v1, p0}, Lo/IL$1;-><init>(Lo/IL;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 285
    iget-object v0, p0, Lo/IL;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    invoke-direct {p0}, Lo/IL;->z()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lo/IL;->w:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 238
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreate(Landroid/os/Bundle;)V

    .line 240
    invoke-virtual {p0}, Lo/IL;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lo/IL;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_chararcter_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/IL;->o:Ljava/lang/String;

    .line 242
    invoke-virtual {p0}, Lo/IL;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_kids_color_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/IL;->m:I

    .line 245
    :cond_0
    new-instance v0, Lo/IL$Application;

    invoke-virtual {p0}, Lo/IL;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lo/IL$Application;-><init>(Lo/IL;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/IL$4;)V

    iput-object v0, p0, Lo/IL;->b:Lo/IL$Application;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 246
    :goto_0
    iput-boolean v0, p0, Lo/IL;->j:Z

    .line 247
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/IL;->M:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    .line 250
    invoke-virtual {p0}, Lo/IL;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_episode_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/IL;->A:Ljava/lang/String;

    const-string v0, "extra_season_index"

    .line 251
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/IL;->C:I

    const-string v0, "extra_episode_index"

    .line 252
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/IL;->z:I

    .line 254
    iget-object v0, p0, Lo/IL;->k:Ljava/util/Stack;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState$ActionBar;->a(Landroid/os/Bundle;Ljava/util/Stack;)V

    .line 256
    iget-object p1, p0, Lo/IL;->k:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 257
    iget-object p1, p0, Lo/IL;->k:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;

    iput-object p1, p0, Lo/IL;->p:Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;

    .line 258
    iget-object p1, p0, Lo/IL;->p:Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;->d:Ljava/lang/String;

    iput-object p1, p0, Lo/IL;->x:Ljava/lang/String;

    .line 263
    :cond_2
    invoke-virtual {p0}, Lo/IL;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 264
    invoke-virtual {p0}, Lo/IL;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    iget-object v0, p0, Lo/IL;->R:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.netflix.mediaclient.intent.action.DETAIL_PAGE_REFRESH"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p2, "KidsCharacterDetailsFrag"

    const-string p3, "onCreateView called"

    .line 270
    invoke-static {p2, p3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->fv:I

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 272
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lo/IL;->c(Landroid/view/ViewGroup;)V

    .line 274
    invoke-virtual {p0, p1}, Lo/IL;->c(Landroid/view/View;)V

    .line 275
    invoke-direct {p0}, Lo/IL;->G()V

    .line 277
    invoke-direct {p0}, Lo/IL;->B()V

    .line 279
    invoke-direct {p0, p1}, Lo/IL;->b(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1603
    invoke-virtual {p0}, Lo/IL;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1604
    invoke-virtual {p0}, Lo/IL;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/IL;->R:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 1606
    :cond_0
    iget-object v0, p0, Lo/IL;->b:Lo/IL$Application;

    if-eqz v0, :cond_1

    .line 1607
    invoke-virtual {v0}, Lo/IL$Application;->c()V

    .line 1609
    :cond_1
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroy()V

    return-void
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 346
    invoke-direct {p0}, Lo/IL;->N()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 8

    .line 323
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 325
    iget-object v0, p0, Lo/IL;->K:Lo/Fy;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lo/IL;->D:Lo/IL$Activity;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/IL$Activity;->b()I

    move-result v0

    .line 330
    :goto_0
    iget v1, p0, Lo/IL;->C:I

    const-string v2, "extra_season_index"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "extra_episode_index"

    .line 331
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 334
    :cond_1
    iget-object v0, p0, Lo/IL;->A:Ljava/lang/String;

    const-string v1, "extra_episode_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lo/IL;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 338
    iget-object v0, p0, Lo/IL;->k:Ljava/util/Stack;

    new-instance v7, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;

    iget-object v2, p0, Lo/IL;->x:Ljava/lang/String;

    iget-object v1, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    iget v4, p0, Lo/IL;->C:I

    .line 339
    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-static {v1}, Lo/adq;->e(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState;-><init>(Ljava/lang/String;Landroid/os/Parcelable;IILcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 338
    invoke-virtual {v0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lo/IL;->k:Ljava/util/Stack;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/kids/character_details/KidsCharacterRelatedTitleState$Application;->e(Landroid/os/Bundle;Ljava/util/Stack;)V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/IL;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected v()V
    .locals 5

    .line 505
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KidsCharacterDetailsFrag"

    const-string v1, "Showing recycler view"

    .line 507
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 511
    :cond_0
    invoke-virtual {p0}, Lo/IL;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/16 v1, 0x1f4

    .line 514
    invoke-virtual {v0, v2, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(FI)V

    return-void
.end method

.method protected x()I
    .locals 2

    .line 540
    iget-boolean v0, p0, Lo/IL;->i:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 542
    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x2

    goto :goto_0

    .line 544
    :cond_1
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 546
    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    const/4 v1, 0x4

    :cond_3
    :goto_0
    return v1
.end method

.method protected y()V
    .locals 3

    .line 481
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/IL;->t:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lo/IL;->getActivity()Lo/Serializable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "KidsCharacterDetailsFrag"

    const-string v1, "animateIn()"

    .line 485
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-boolean v1, p0, Lo/IL;->j:Z

    if-eqz v1, :cond_2

    .line 488
    iget-object v1, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    const-string v1, "Showing recycler view"

    .line 490
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lo/IL;->y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAlpha(F)V

    .line 495
    :cond_1
    invoke-virtual {p0}, Lo/IL;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 497
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->b(F)V

    goto :goto_0

    .line 500
    :cond_2
    invoke-virtual {p0}, Lo/IL;->v()V

    :cond_3
    :goto_0
    return-void
.end method
