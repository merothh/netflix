.class public Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;,
        Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;,
        Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Fragment;,
        Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;,
        Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;,
        Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$StateListAnimator;,
        Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;

.field private C:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

.field private D:Lo/ZG;

.field private E:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private F:Lo/RatingBar;

.field private G:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;

.field private H:Lo/RatingBar;

.field private I:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private J:Lo/DateTimeView;

.field private K:Lo/ExpandableListConnector;

.field private L:Lo/ExpandableListConnector;

.field private M:Landroid/widget/TextView;

.field private final N:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;

.field private O:Lo/Bs;

.field private P:I

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/ProgressBar;

.field private T:Ljava/lang/String;

.field private U:I

.field private V:Z

.field private W:I

.field private X:I

.field private final Y:Ljava/lang/Runnable;

.field private Z:Lo/JsPromptResult;

.field private ab:J

.field public b:Lo/EditText;

.field public f:Lo/OnDateChangedListener;

.field protected h:Landroid/view/ViewGroup;

.field public i:Z

.field public j:Ljava/lang/Long;

.field private k:Landroid/view/ViewGroup;

.field l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final n:Lo/DatePickerCalendarDelegate$Activity;

.field protected final o:Lo/ZB;

.field private p:Ljava/lang/Runnable;

.field private q:Lo/ZN;

.field private r:J

.field private s:Z

.field private t:J

.field private u:Landroid/view/ViewGroup;

.field private v:Landroid/widget/TextView;

.field private w:Lio/reactivex/disposables/Disposable;

.field private x:Landroid/widget/TextView;

.field private y:Lo/RecoverySystem$ActionBar;

.field private final z:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/netflix/mediaclient/ui/search/SearchItemClick;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 94
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->s:Z

    const-wide/16 v0, 0x0

    .line 127
    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->t:J

    .line 128
    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->r:J

    const/4 v2, 0x0

    .line 129
    iput-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->j:Ljava/lang/Long;

    .line 135
    iput-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->y:Lo/RecoverySystem$ActionBar;

    .line 145
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->z:Ljava/util/Stack;

    .line 147
    sget-object v3, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->C:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    const/4 v3, -0x1

    .line 152
    iput v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->A:I

    .line 169
    new-instance v3, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->N:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;

    const-string v3, ""

    .line 185
    iput-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    .line 190
    iput-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->Z:Lo/JsPromptResult;

    .line 193
    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->ab:J

    .line 199
    new-instance v0, Lo/ZB;

    invoke-direct {v0}, Lo/ZB;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->o:Lo/ZB;

    .line 706
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->l:Ljava/util/HashMap;

    .line 709
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->m:Ljava/util/HashMap;

    .line 1771
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$11;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$11;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->n:Lo/DatePickerCalendarDelegate$Activity;

    .line 1782
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->Y:Ljava/lang/Runnable;

    return-void
.end method

.method private T()V
    .locals 0

    .line 491
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->aa()V

    .line 492
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->ac()V

    return-void
.end method

.method private U()V
    .locals 3

    .line 455
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->M:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 457
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lo/Zt$Fragment;->o:I

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget v2, Lo/Zt$Fragment;->o:I

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->Q:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 461
    sget v2, Lo/Zt$Fragment;->e:I

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private V()I
    .locals 3

    .line 276
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search Exp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->b()Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$2;->d:[I

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->b()Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->g()I

    move-result v0

    return v0

    .line 279
    :cond_0
    sget v0, Lo/Zt$LoaderManager;->s:I

    return v0
.end method

.method private W()V
    .locals 4

    .line 466
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->F:Lo/RatingBar;

    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    iget v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->A:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 471
    invoke-virtual {v0, v1}, Lo/RatingBar;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 472
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->I:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;ZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->G:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;

    .line 477
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->F:Lo/RatingBar;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->G:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;

    invoke-virtual {v0, v1}, Lo/RatingBar;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 478
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->F:Lo/RatingBar;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->G:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;

    invoke-virtual {v0, v1}, Lo/RatingBar;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 481
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 482
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->ae()V

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->F:Lo/RatingBar;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->d(Lo/RatingBar;)V

    .line 486
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->F:Lo/RatingBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->d(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/RatingBar;->setNumColumns(I)V

    return-void
.end method

.method private Y()V
    .locals 7

    .line 520
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->F:Lo/RatingBar;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lo/RatingBar;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 521
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->F:Lo/RatingBar;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->K:Lo/ExpandableListConnector;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->c(Lo/RatingBar;Landroid/widget/ScrollView;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 524
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 525
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 529
    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$2;->a:[I

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->C:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 534
    sget-object v2, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    goto :goto_0

    .line 531
    :cond_0
    sget-object v2, Lcom/netflix/cl/model/AppView;->searchSuggestionTitleResults:Lcom/netflix/cl/model/AppView;

    .line 538
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->F:Lo/RatingBar;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->I:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-eqz v3, :cond_4

    :goto_1
    if-gt v1, v0, :cond_4

    .line 540
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->F:Lo/RatingBar;

    invoke-virtual {v3, v1}, Lo/RatingBar;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/agj;

    if-eqz v3, :cond_3

    .line 543
    instance-of v4, v3, Lo/agg;

    if-eqz v4, :cond_1

    .line 544
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->I:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    check-cast v3, Lo/agg;

    invoke-interface {v3}, Lo/agg;->as_()Lo/AR;

    move-result-object v3

    invoke-virtual {v4, v3, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lo/AR;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v3

    goto :goto_2

    .line 545
    :cond_1
    instance-of v4, v3, Lcom/netflix/model/leafs/SearchCollectionEntity;

    if-eqz v4, :cond_2

    .line 546
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->I:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    check-cast v3, Lcom/netflix/model/leafs/SearchCollectionEntity;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v1, v5}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->a(Lcom/netflix/model/leafs/SearchCollectionEntity;IZ)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v3

    goto :goto_2

    .line 548
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Search item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 549
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " incorrect type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 550
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->I:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 553
    :goto_2
    invoke-static {v2, v3}, Lo/Zy;->a(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private Z()V
    .locals 2

    .line 644
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 645
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->j:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 646
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->j:Ljava/lang/Long;

    .line 648
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->I:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 649
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->E:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 650
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    invoke-static {v0}, Lo/Zy;->d(Lcom/netflix/cl/model/AppView;)V

    .line 651
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    invoke-static {v0}, Lo/Zy;->d(Lcom/netflix/cl/model/AppView;)V

    .line 653
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->A()V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->U:I

    return p0
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;J)J
    .locals 0

    .line 94
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->ab:J

    return-wide p1
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 6

    .line 717
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    if-eqz v0, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->F:Lo/RatingBar;

    if-ne p2, v0, :cond_1

    .line 722
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    .line 723
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    invoke-interface {v1}, Lo/Bs;->getVideosListTrackable()Lo/Bz;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Lo/Bz;)Ljava/lang/String;

    move-result-object v1

    .line 724
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->I:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 725
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    invoke-interface {v3}, Lo/Bs;->getNumResultsVideoEntities()I

    move-result v3

    goto :goto_0

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->H:Lo/RatingBar;

    if-ne p2, v0, :cond_7

    .line 727
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    .line 728
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    invoke-interface {v1}, Lo/Bs;->getSuggestionsListTrackable()Lo/Bz;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Lo/Bz;)Ljava/lang/String;

    move-result-object v1

    .line 729
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->E:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 730
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    invoke-interface {v3}, Lo/Bs;->getNumResultsSuggestions()I

    move-result v3

    .line 736
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 737
    invoke-virtual {p2, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    if-lez v3, :cond_4

    .line 739
    iget v3, v4, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lt v3, v5, :cond_2

    iget v3, v4, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v3, v5, :cond_3

    :cond_2
    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-le v3, v5, :cond_4

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v3, p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 743
    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->m:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const/4 v4, 0x0

    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_5

    .line 746
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->l:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 747
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, v3}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    move-object v3, v4

    :cond_5
    if-nez v3, :cond_7

    .line 753
    invoke-static {v0, v2}, Lo/Zy;->e(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Ljava/lang/Long;

    move-result-object p1

    .line 754
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->l:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_7

    .line 759
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, v3}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 760
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->m:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->l:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 0

    .line 856
    check-cast p1, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    .line 857
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setTitleTextWithSelectdHighlighting()V

    return-void
.end method

.method private a(Lcom/netflix/mediaclient/ui/search/SearchResultView;IJ)V
    .locals 7

    .line 815
    iput p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->A:I

    .line 816
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->I()V

    .line 818
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->af()V

    .line 819
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->a(Landroid/view/View;)V

    .line 821
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->d()Ljava/lang/String;

    move-result-object v0

    .line 822
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->e(Landroid/view/View;)V

    .line 824
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Ljava/lang/String;)V

    .line 826
    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->a(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;Landroid/view/View;IJ)V

    .line 828
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->S:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 829
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private a(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;Landroid/view/View;IJ)V
    .locals 8

    .line 835
    sget v0, Lo/Zt$Application;->d:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 837
    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_2

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->z:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->z:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->z:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;

    iget v0, v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->d:I

    if-eq v0, p3, :cond_2

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->z:Ljava/util/Stack;

    new-instance v7, Lcom/netflix/mediaclient/ui/search/SearchItemClick;

    move-object v1, p2

    check-cast v1, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->c()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/search/SearchItemClick;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;IJLjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    :cond_2
    sget p1, Lo/Zt$Application;->d:I

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Ljava/util/List;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lo/Bs;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Lo/Bs;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1738
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->f:Lo/OnDateChangedListener;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 1739
    invoke-virtual {p1, v0}, Lo/OnDateChangedListener;->c(Z)V

    goto :goto_0

    .line 1742
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->f:Lo/OnDateChangedListener;

    if-eqz p1, :cond_1

    .line 1743
    invoke-virtual {p1}, Lo/OnDateChangedListener;->w()V

    .line 1745
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O()V

    :cond_2
    :goto_0
    return-void
.end method

.method private aa()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->K:Lo/ExpandableListConnector;

    if-eqz v0, :cond_0

    .line 498
    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Fragment;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Fragment;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V

    invoke-virtual {v0, v1}, Lo/ExpandableListConnector;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->L:Lo/ExpandableListConnector;

    if-eqz v0, :cond_1

    .line 502
    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Fragment;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Fragment;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V

    invoke-virtual {v0, v1}, Lo/ExpandableListConnector;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method private ab()V
    .locals 4

    .line 780
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->H:Lo/RatingBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 784
    invoke-virtual {v0, v1}, Lo/RatingBar;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 785
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    .line 787
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->a()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->E:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;ZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->B:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;

    .line 790
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->H:Lo/RatingBar;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->B:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;

    invoke-virtual {v0, v1}, Lo/RatingBar;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 792
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 793
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->ae()V

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->H:Lo/RatingBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/RatingBar;->setNumColumns(I)V

    return-void
.end method

.method private ac()V
    .locals 2

    .line 508
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$StateListAnimator;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V

    .line 509
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->K:Lo/ExpandableListConnector;

    if-eqz v1, :cond_0

    .line 510
    invoke-virtual {v1, v0}, Lo/ExpandableListConnector;->setOnScrollStopListener(Lo/ExpandableListConnector$Application;)V

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->L:Lo/ExpandableListConnector;

    if-eqz v1, :cond_1

    .line 514
    invoke-virtual {v1, v0}, Lo/ExpandableListConnector;->setOnScrollStopListener(Lo/ExpandableListConnector$Application;)V

    :cond_1
    return-void
.end method

.method private ad()V
    .locals 4

    .line 957
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->K:Lo/ExpandableListConnector;

    if-nez v0, :cond_0

    goto :goto_1

    .line 961
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->K:Lo/ExpandableListConnector;

    invoke-virtual {v1}, Lo/ExpandableListConnector;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->K:Lo/ExpandableListConnector;

    invoke-virtual {v1}, Lo/ExpandableListConnector;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Lo/Serializable;

    move-result-object v2

    invoke-static {v2}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->K:Lo/ExpandableListConnector;

    invoke-virtual {v1}, Lo/ExpandableListConnector;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sub-int/2addr v0, v1

    .line 962
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->d(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_2

    .line 965
    div-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->U:I

    int-to-double v0, v0

    .line 966
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->e()D

    move-result-wide v2

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->X:I

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imgHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->X:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchResultsFrag"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private ae()V
    .locals 2

    .line 800
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->H:Lo/RatingBar;

    if-nez v0, :cond_0

    return-void

    .line 803
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$5;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V

    invoke-virtual {v0, v1}, Lo/RatingBar;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private af()V
    .locals 0

    .line 861
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->ag()V

    .line 862
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->ah()V

    return-void
.end method

.method private ag()V
    .locals 2

    .line 876
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->H:Lo/RatingBar;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 877
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->H:Lo/RatingBar;

    invoke-virtual {v1}, Lo/RatingBar;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 878
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->H:Lo/RatingBar;

    invoke-virtual {v1, v0}, Lo/RatingBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 879
    check-cast v1, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    .line 880
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ah()V
    .locals 2

    .line 866
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->J:Lo/DateTimeView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 867
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->J:Lo/DateTimeView;

    invoke-virtual {v1}, Lo/DateTimeView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 868
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->J:Lo/DateTimeView;

    invoke-virtual {v1, v0}, Lo/DateTimeView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 869
    check-cast v1, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    .line 870
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ai()V
    .locals 1

    .line 1038
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->e(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->P:I

    .line 1039
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->W:I

    return-void
.end method

.method private aj()V
    .locals 4

    .line 1055
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->Q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    invoke-interface {v1}, Lo/Bs;->getNumResultsVideoEntities()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    .line 1056
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->M:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    invoke-interface {v1}, Lo/Bs;->getNumResultsSuggestions()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    return-void
.end method

.method private ak()V
    .locals 2

    .line 1043
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->G:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;

    if-eqz v0, :cond_0

    .line 1044
    iget v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->W:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->e(I)V

    .line 1045
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->G:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->notifyDataSetChanged()V

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->B:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;

    if-eqz v0, :cond_1

    .line 1049
    iget v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->P:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->e(I)V

    .line 1050
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->B:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$TaskDescription;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private al()V
    .locals 2

    .line 1020
    iget v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->A:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1021
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->W()V

    .line 1024
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->ab()V

    return-void
.end method

.method private am()V
    .locals 2

    .line 1028
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->K:Lo/ExpandableListConnector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1029
    invoke-virtual {v0, v1, v1}, Lo/ExpandableListConnector;->scrollTo(II)V

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->L:Lo/ExpandableListConnector;

    if-eqz v0, :cond_1

    .line 1033
    invoke-virtual {v0, v1, v1}, Lo/ExpandableListConnector;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method private ao()V
    .locals 1

    .line 1732
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->f:Lo/OnDateChangedListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/OnDateChangedListener;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    .line 1733
    :goto_0
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->a(Z)V

    return-void
.end method

.method private ar()V
    .locals 2

    .line 1523
    invoke-static {}, Lo/dZ;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1524
    invoke-static {}, Lo/dO;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1525
    invoke-static {}, Lo/fl;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1526
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->Z:Lo/JsPromptResult;

    if-nez v0, :cond_1

    .line 1527
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$10;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$10;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->Z:Lo/JsPromptResult;

    .line 1534
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->H()Lo/MimeTypeMap;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->Z:Lo/JsPromptResult;

    invoke-virtual {v0, v1}, Lo/MimeTypeMap;->b(Lo/JavascriptInterface;)Z

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    return-object p0
.end method

.method private b(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 1

    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Landroid/view/View;Landroid/view/LayoutInflater;)V

    .line 420
    new-instance p2, Lo/EditText;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->n:Lo/DatePickerCalendarDelegate$Activity;

    invoke-direct {p2, p1, v0}, Lo/EditText;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b:Lo/EditText;

    .line 421
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b:Lo/EditText;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lo/EditText;->a(Z)V

    .line 423
    sget p2, Lo/Zt$Application;->o:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->h:Landroid/view/ViewGroup;

    .line 425
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->v()V

    .line 427
    sget p2, Lo/Zt$Application;->i:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->S:Landroid/widget/ProgressBar;

    .line 429
    sget p2, Lo/Zt$Application;->D:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->u:Landroid/view/ViewGroup;

    .line 430
    sget p2, Lo/Zt$Application;->e:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->x:Landroid/widget/TextView;

    .line 431
    sget p2, Lo/Zt$Application;->a:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->v:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private b(Lo/RatingBar;)V
    .locals 2

    .line 897
    invoke-virtual {p1}, Lo/RatingBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$1;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lo/RatingBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic c(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;I)I
    .locals 0

    .line 94
    iput p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->A:I

    return p1
.end method

.method private c(Lo/Bz;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 776
    invoke-interface {p1}, Lo/Bz;->getReferenceId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static synthetic c(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/Bs;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 10

    .line 1306
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->U_()Lo/Am;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "SearchResultsFrag"

    const-string v0, "Manager is null/notReady - can\'t load data"

    .line 1308
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1312
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->F:Lo/RatingBar;

    if-eqz v1, :cond_1

    .line 1313
    new-instance v1, Lo/ZG;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Lo/Serializable;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->F:Lo/RatingBar;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lo/ZG;-><init>(Landroid/app/Activity;Landroid/widget/GridView;Z)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->D:Lo/ZG;

    .line 1314
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->F:Lo/RatingBar;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->D:Lo/ZG;

    invoke-virtual {v1, v2}, Lo/RatingBar;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1315
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->F:Lo/RatingBar;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Lo/RatingBar;)V

    .line 1318
    :cond_1
    iget-wide v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->r:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->r:J

    .line 1320
    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v3

    sget-object v5, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    const/4 v6, 0x0

    const/16 v7, 0x26

    .line 1324
    invoke-static {}, Lo/adq;->d()Z

    move-result v8

    new-instance v9, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->r:J

    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-direct {v9, p0, v0, v1, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Application;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;JLcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;)V

    move-object v4, p1

    .line 1320
    invoke-interface/range {v3 .. v9}, Lo/zG;->a(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IIZLo/zU;)Z

    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Bx;",
            ">;)V"
        }
    .end annotation

    .line 953
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->U_()Lo/Am;

    move-result-object v0

    invoke-static {v0, p1}, Lo/DA;->d(Lo/Am;Ljava/util/List;)V

    return-void
.end method

.method private c(Lo/Bs;)V
    .locals 8

    const/4 v0, 0x0

    .line 601
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->I:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 602
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->E:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-eqz p1, :cond_4

    .line 603
    invoke-interface {p1}, Lo/Bs;->hasResults()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 607
    :cond_0
    invoke-interface {p1}, Lo/Bs;->getNumResultsVideoEntities()I

    move-result v0

    if-lez v0, :cond_2

    .line 608
    invoke-interface {p1}, Lo/Bs;->getVideosListTrackable()Lo/Bz;

    move-result-object v0

    if-nez v0, :cond_1

    .line 611
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " numVideoEntities = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-interface {p1}, Lo/Bs;->getNumResultsVideoEntities()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " numVideos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-interface {p1}, Lo/Bs;->getResultsVideos()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " numSuggestions = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/Bs;->getNumResultsSuggestions()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " videoListSummary = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-interface {p1}, Lo/Bs;->getVideosListTrackable()Lo/Bz;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " suggestionListSummary "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/Bs;->getSuggestionsListTrackable()Lo/Bz;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 611
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 615
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "null SearchTrackable"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 616
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    invoke-static {v0}, Lo/Zy;->d(Lcom/netflix/cl/model/AppView;)V

    goto :goto_0

    .line 618
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v2, Lcom/netflix/cl/model/AppView;->searchResults:Lcom/netflix/cl/model/AppView;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    .line 619
    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d(Lo/Bz;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->I:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 621
    sget-object v2, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Lo/Bz;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lo/Zy;->d(Lcom/netflix/cl/model/AppView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    goto :goto_0

    .line 624
    :cond_2
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    invoke-static {v0}, Lo/Zy;->d(Lcom/netflix/cl/model/AppView;)V

    .line 627
    :goto_0
    invoke-interface {p1}, Lo/Bs;->getNumResultsSuggestions()I

    move-result v0

    if-lez v0, :cond_3

    .line 628
    invoke-interface {p1}, Lo/Bs;->getSuggestionsListTrackable()Lo/Bz;

    move-result-object p1

    .line 630
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v1, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    .line 631
    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d(Lo/Bz;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->E:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 633
    sget-object v1, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Lo/Bz;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lo/Zy;->d(Lcom/netflix/cl/model/AppView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    goto :goto_2

    .line 635
    :cond_3
    sget-object p1, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    invoke-static {p1}, Lo/Zy;->d(Lcom/netflix/cl/model/AppView;)V

    goto :goto_2

    .line 604
    :cond_4
    :goto_1
    sget-object p1, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    invoke-static {p1}, Lo/Zy;->d(Lcom/netflix/cl/model/AppView;)V

    .line 605
    sget-object p1, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    invoke-static {p1}, Lo/Zy;->d(Lcom/netflix/cl/model/AppView;)V

    :goto_2
    return-void
.end method

.method static synthetic c(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->s:Z

    return p1
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;)Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->C:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    return-object p1
.end method

.method public static d(Lo/Bs;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1230
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$2;->a:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    return-object v0

    .line 1232
    :cond_1
    invoke-interface {p0, p2}, Lo/Bs;->getResultsVideoEntities(I)Lcom/netflix/model/leafs/SearchCollectionEntity;

    move-result-object p0

    return-object p0

    .line 1234
    :cond_2
    invoke-interface {p0, p2}, Lo/Bs;->getResultsSuggestions(I)Lo/By;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->Y()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 11

    .line 972
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->J:Lo/DateTimeView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->E:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-eqz v1, :cond_0

    .line 973
    invoke-virtual {v0}, Lo/DateTimeView;->removeAllViews()V

    .line 975
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    invoke-interface {v0}, Lo/Bs;->getNumResultsSuggestions()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->e(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 978
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    invoke-interface {v2}, Lo/Bs;->getSuggestionsListTrackable()Lo/Bz;

    move-result-object v2

    .line 979
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    invoke-interface {v3, v1}, Lo/Bs;->getResultsSuggestions(I)Lo/By;

    move-result-object v5

    .line 981
    new-instance v3, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    .line 982
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Lo/Serializable;

    move-result-object v4

    .line 983
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->c()I

    move-result v6

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->E:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 984
    invoke-virtual {v7, v5, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->c(Lo/By;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v7

    invoke-direct {v3, v4, v6, v7}, Lcom/netflix/mediaclient/ui/search/SearchResultView;-><init>(Landroid/content/Context;ILcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    const/4 v6, 0x0

    .line 986
    sget-object v7, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    .line 991
    invoke-interface {v2}, Lo/Bz;->getReferenceId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v4, v3

    move-object v8, p1

    .line 986
    invoke-virtual/range {v4 .. v10}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e(Lo/By;Lo/Bx;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/SingleObserver;)V

    .line 994
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->J:Lo/DateTimeView;

    invoke-virtual {v2}, Lo/DateTimeView;->c()Lo/DateTimeView$Activity;

    move-result-object v2

    .line 995
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->J:Lo/DateTimeView;

    invoke-virtual {v4, v3, v2}, Lo/DateTimeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 998
    new-instance v2, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$9;

    invoke-direct {v2, p0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$9;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;I)V

    invoke-virtual {v3, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Lo/Bs;Ljava/lang/String;)V
    .locals 2

    const-string v0, "SearchResultsFrag"

    const-string v1, "Updating..."

    .line 909
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    .line 913
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Lo/Serializable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 917
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 918
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    .line 919
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->C()V

    .line 922
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->B()V

    .line 924
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->S:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    const/16 p2, 0x8

    .line 925
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 927
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    invoke-interface {p1}, Lo/Bs;->getResultsVideos()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->X:I

    return p0
.end method

.method private e(Landroid/view/View;)V
    .locals 2

    .line 847
    check-cast p1, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->c()Ljava/lang/String;

    move-result-object p1

    .line 849
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->R:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->R:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 851
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->R:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/ui/search/SearchResultView;IJ)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->a(Lcom/netflix/mediaclient/ui/search/SearchResultView;IJ)V

    return-void
.end method

.method static synthetic f(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/ZG;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->D:Lo/ZG;

    return-object p0
.end method

.method static synthetic g(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/RatingBar;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->H:Lo/RatingBar;

    return-object p0
.end method

.method static synthetic h(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lo/DateTimeView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->J:Lo/DateTimeView;

    return-object p0
.end method

.method static synthetic i(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Landroid/widget/ProgressBar;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->S:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic j(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)J
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->r:J

    return-wide v0
.end method

.method static synthetic l(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/util/Stack;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->z:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic m(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->A:I

    return p0
.end method

.method static synthetic n(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)J
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->t:J

    return-wide v0
.end method


# virtual methods
.method protected A()V
    .locals 3

    .line 657
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 659
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v2, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    goto :goto_0

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 664
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected B()V
    .locals 2

    .line 931
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->b()Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->e:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 932
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->K:Lo/ExpandableListConnector;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    invoke-interface {v1}, Lo/Bs;->getNumResultsSuggestions()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    .line 935
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->C:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    .line 937
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->ad()V

    .line 938
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->ai()V

    .line 939
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->aj()V

    .line 940
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->al()V

    .line 942
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->d(Ljava/lang/String;)V

    .line 944
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->ak()V

    .line 945
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->am()V

    .line 947
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->R:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 948
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public C()V
    .locals 1

    .line 1012
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->z:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method protected D()V
    .locals 2

    .line 590
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 591
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->K:Lo/ExpandableListConnector;

    invoke-virtual {v1, v0}, Lo/ExpandableListConnector;->getHitRect(Landroid/graphics/Rect;)V

    .line 592
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->F:Lo/RatingBar;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->a(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 593
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->H:Lo/RatingBar;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->a(Landroid/graphics/Rect;Landroid/view/View;)V

    return-void
.end method

.method public E()V
    .locals 1

    const/4 v0, -0x1

    .line 1016
    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->A:I

    return-void
.end method

.method protected F()Z
    .locals 1

    .line 1565
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->V:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected G()V
    .locals 1

    .line 1559
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->f:Lo/OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 1560
    invoke-virtual {v0}, Lo/OnDateChangedListener;->t()V

    :cond_0
    return-void
.end method

.method protected H()V
    .locals 1

    .line 1553
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->f:Lo/OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 1554
    invoke-virtual {v0}, Lo/OnDateChangedListener;->p()V

    :cond_0
    return-void
.end method

.method public I()V
    .locals 2

    .line 1342
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Lo/Serializable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1346
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Serializable;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 1348
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 1349
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Lo/Serializable;

    move-result-object v1

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v1, v0}, Lo/adq;->d(Landroid/app/Activity;Landroid/widget/EditText;)V

    :cond_1
    return-void
.end method

.method public J()V
    .locals 3

    .line 1679
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b:Lo/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/EditText;->a(Z)V

    .line 1680
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->S()V

    const/16 v0, 0x8

    .line 1682
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->e(I)V

    .line 1684
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->v:Landroid/widget/TextView;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->m()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1685
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->x:Landroid/widget/TextView;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->k()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1686
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1688
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Z)V

    return-void
.end method

.method public K()V
    .locals 4

    .line 1692
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b:Lo/EditText;

    sget v1, Lo/Zt$Fragment;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lo/EditText;->e(IZZ)V

    .line 1693
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->S()V

    const/16 v0, 0x8

    .line 1695
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->e(I)V

    .line 1697
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1699
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Z)V

    return-void
.end method

.method protected L()Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Consumer<",
            "Lo/ApfStats;",
            ">;"
        }
    .end annotation

    .line 1589
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$8;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V

    return-object v0
.end method

.method public M()V
    .locals 4

    .line 1703
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->S()V

    const/4 v0, 0x0

    .line 1704
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Z)V

    .line 1706
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->f:Lo/OnDateChangedListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1707
    invoke-virtual {v1}, Lo/OnDateChangedListener;->m()Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1708
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->f:Lo/OnDateChangedListener;

    const-string v3, ""

    invoke-virtual {v1, v3, v2}, Lo/OnDateChangedListener;->e(Ljava/lang/String;Z)V

    .line 1710
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lo/Zt$Fragment;->l:I

    goto :goto_0

    :cond_1
    sget v1, Lo/Zt$Fragment;->n:I

    :goto_0
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1711
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->f:Lo/OnDateChangedListener;

    invoke-virtual {v3, v1}, Lo/OnDateChangedListener;->a(Ljava/lang/String;)V

    .line 1714
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->F()Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->e(I)V

    .line 1715
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b:Lo/EditText;

    invoke-virtual {v1, v2}, Lo/EditText;->a(Z)V

    .line 1717
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->v:Landroid/widget/TextView;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1718
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->x:Landroid/widget/TextView;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1719
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->u:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->F()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v0, 0x8

    :cond_4
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected N()V
    .locals 3

    .line 1569
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->f:Lo/OnDateChangedListener;

    if-eqz v0, :cond_1

    .line 1570
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->w:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 1571
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1572
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "searchTextChanges should be null"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 1574
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->f:Lo/OnDateChangedListener;

    invoke-virtual {v0}, Lo/OnDateChangedListener;->l()Lio/reactivex/Observable;

    move-result-object v0

    .line 1575
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1577
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->L()Lio/reactivex/functions/Consumer;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$7;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$7;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V

    .line 1576
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->w:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method protected O()V
    .locals 1

    .line 1766
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1767
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->e(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected P()V
    .locals 2

    .line 1723
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->k:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected Q()Lcom/netflix/mediaclient/browse/api/task/TaskMode;
    .locals 2

    .line 1811
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->s:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    :goto_0
    const/4 v1, 0x0

    .line 1812
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->s:Z

    return-object v0
.end method

.method public R()V
    .locals 2

    .line 1760
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b:Lo/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/EditText;->a(Z)V

    const/16 v0, 0x8

    .line 1761
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->e(I)V

    .line 1762
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected S()V
    .locals 2

    .line 1727
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->k:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public X()V
    .locals 1

    const/4 v0, 0x1

    .line 1912
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->V:Z

    .line 1913
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1914
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->M()V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 1656
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1661
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->E()V

    const/4 v0, 0x1

    .line 1663
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Ljava/lang/String;Z)V

    .line 1665
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 1666
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->al()V

    .line 1667
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->M()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1669
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->p:Ljava/lang/Runnable;

    .line 1670
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->U_()Lo/Am;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1671
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->Y:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->p:Ljava/lang/Runnable;

    goto :goto_0

    .line 1673
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->Y:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p1, "SearchResultsFrag"

    const-string v0, "Skip handleQueryUpdate"

    .line 1657
    invoke-static {p1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected a(Lo/Bs;)V
    .locals 1

    .line 1750
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->R()V

    .line 1751
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->P()V

    .line 1752
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->d(Lo/Bs;Ljava/lang/String;)V

    return-void
.end method

.method public ad_()Z
    .locals 2

    .line 1896
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 1897
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1898
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1900
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 1902
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    .line 305
    invoke-static {}, Lo/Zy;->c()V

    .line 306
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->M()V

    goto :goto_0

    :cond_0
    const-string v0, "instance_state_query"

    .line 309
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->N:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->e(Landroid/os/Bundle;)V

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->M()V

    :goto_0
    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    .line 1367
    iget v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->d:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/RemoteException;->e(Landroid/view/View;II)V

    .line 1368
    iget v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->g:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lo/RemoteException;->e(Landroid/view/View;II)V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 1

    .line 1825
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->o:Lo/ZB;

    invoke-virtual {v0, p1}, Lo/ZB;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1829
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->f:Lo/OnDateChangedListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1831
    invoke-virtual {v0}, Lo/OnDateChangedListener;->v()V

    goto :goto_0

    .line 1833
    :cond_0
    invoke-virtual {v0}, Lo/OnDateChangedListener;->x()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Lo/Bs;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    return-object v0
.end method

.method protected c(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 0

    .line 435
    sget p2, Lo/Zt$Application;->x:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->k:Landroid/view/ViewGroup;

    .line 436
    sget p2, Lo/Zt$Application;->p:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/RatingBar;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->H:Lo/RatingBar;

    .line 437
    sget p2, Lo/Zt$Application;->t:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/DateTimeView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->J:Lo/DateTimeView;

    .line 438
    sget p2, Lo/Zt$Application;->r:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/RatingBar;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->F:Lo/RatingBar;

    .line 439
    sget p2, Lo/Zt$Application;->v:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->M:Landroid/widget/TextView;

    .line 440
    sget p2, Lo/Zt$Application;->y:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/ExpandableListConnector;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->L:Lo/ExpandableListConnector;

    .line 441
    sget p2, Lo/Zt$Application;->x:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/ExpandableListConnector;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->K:Lo/ExpandableListConnector;

    .line 442
    sget p2, Lo/Zt$Application;->z:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->R:Landroid/widget/TextView;

    .line 443
    sget p2, Lo/Zt$Application;->u:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->Q:Landroid/widget/TextView;

    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1631
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1632
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->o:Lo/ZB;

    invoke-virtual {v0, p1, p2}, Lo/ZB;->a(Ljava/lang/String;Z)V

    .line 1633
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->u()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1635
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->uiLatencyTrackerFluent:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/ViewSwitcher;

    .line 1636
    invoke-interface {p2}, Lo/ViewSwitcher;->b()Lo/ViewSwitcher;

    move-result-object p2

    .line 1637
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->t()Lcom/netflix/cl/model/AppView;

    move-result-object v0

    invoke-interface {p2, v0, p0}, Lo/ViewSwitcher;->d(Lcom/netflix/cl/model/AppView;Lo/UnicodeScript;)Lo/WrapperListAdapter;

    move-result-object p2

    const/4 v0, 0x1

    .line 1638
    invoke-interface {p2, v0}, Lo/WrapperListAdapter;->c(Z)Lo/WrapperListAdapter;

    move-result-object p2

    .line 1639
    invoke-interface {p2}, Lo/WrapperListAdapter;->a()V

    .line 1642
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    .line 1644
    iget-wide p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->t:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->t:J

    .line 1646
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 1648
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    .line 1651
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->c(Lo/Bs;)V

    :cond_2
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .line 1355
    sget v0, Lo/Zt$Application;->E:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Landroid/view/View;)V

    .line 1356
    sget v0, Lo/Zt$Application;->H:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Landroid/view/View;)V

    .line 1358
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->h:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 1359
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Landroid/view/View;)V

    .line 1361
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->u:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 1362
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .line 1539
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$6;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->y:Lo/RecoverySystem$ActionBar;

    .line 1549
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getKeyboardState()Lo/RecoverySystem;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->y:Lo/RecoverySystem$ActionBar;

    invoke-virtual {p1, v0}, Lo/RecoverySystem;->d(Lo/RecoverySystem$ActionBar;)V

    return-void
.end method

.method public d(Lo/RatingBar;)V
    .locals 2

    .line 886
    invoke-virtual {p1}, Lo/RatingBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$4;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$4;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lo/RatingBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1821
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->o:Lo/ZB;

    invoke-virtual {v0, p1}, Lo/ZB;->c(Z)V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1919
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->h:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1920
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1922
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->q:Lo/ZN;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1923
    :goto_0
    invoke-virtual {v0, p1}, Lo/ZN;->a(Z)V

    :cond_1
    return-void
.end method

.method protected e(Lo/zG;Ljava/lang/String;J)V
    .locals 3

    .line 1817
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->Q()Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    move-result-object v0

    invoke-static {}, Lo/adq;->d()Z

    move-result v1

    new-instance v2, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;

    invoke-direct {v2, p0, p3, p4}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;J)V

    invoke-interface {p1, p2, v0, v1, v2}, Lo/zG;->e(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;ZLo/zU;)Z

    return-void
.end method

.method protected g()I
    .locals 2

    .line 288
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Using search_results_frag_phone"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 289
    sget v0, Lo/Zt$LoaderManager;->p:I

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1930
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->f:Lo/OnDateChangedListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/OnDateChangedListener;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    .line 1931
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1932
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->M()V

    const/4 v0, 0x1

    return v0

    .line 1935
    :cond_1
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->i()Z

    move-result v0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    .line 1242
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->i:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 224
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreate(Landroid/os/Bundle;)V

    .line 225
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->ar()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 239
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->V()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 240
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 241
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    .line 243
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Landroid/view/View;Landroid/view/LayoutInflater;)V

    .line 245
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 247
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 248
    instance-of v1, v0, Lo/OnDateChangedListener;

    if-eqz v1, :cond_1

    .line 249
    check-cast v0, Lo/OnDateChangedListener;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->f:Lo/OnDateChangedListener;

    .line 252
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 255
    :cond_2
    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Landroid/os/Bundle;)V

    .line 256
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->N()V

    .line 258
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->x()V

    return-object p2
.end method

.method public onDestroy()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->Z:Lo/JsPromptResult;

    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->H()Lo/MimeTypeMap;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->Z:Lo/JsPromptResult;

    invoke-virtual {v0, v1}, Lo/MimeTypeMap;->e(Lo/JavascriptInterface;)Z

    .line 233
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->b(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 234
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 325
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroyView()V

    .line 327
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->w:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->y:Lo/RecoverySystem$ActionBar;

    if-eqz v1, :cond_1

    .line 333
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getKeyboardState()Lo/RecoverySystem;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->y:Lo/RecoverySystem$ActionBar;

    invoke-virtual {v0, v1}, Lo/RecoverySystem;->c(Lo/RecoverySystem$ActionBar;)V

    .line 336
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->Z()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 388
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->D()V

    .line 393
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->z()V

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->q:Lo/ZN;

    if-eqz v0, :cond_1

    xor-int/lit8 p1, p1, 0x1

    .line 398
    invoke-virtual {v0, p1}, Lo/ZN;->a(Z)V

    :cond_1
    return-void
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 405
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->p:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 406
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 407
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->p:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 341
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 343
    invoke-static {}, Lo/dZ;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    invoke-static {}, Lo/dO;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-static {}, Lo/fl;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->ab:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->ab:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->M()V

    .line 351
    :cond_1
    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->ab:J

    .line 356
    :cond_2
    invoke-static {}, Lo/eM;->j()Z

    move-result v0

    if-nez v0, :cond_3

    .line 357
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->ao()V

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 361
    invoke-static {}, Lo/eo;->h()Z

    move-result v0

    if-nez v0, :cond_4

    .line 362
    invoke-static {}, Lo/eB;->i()Z

    move-result v0

    if-nez v0, :cond_4

    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->F:Lo/RatingBar;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->d(Lo/RatingBar;)V

    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->N:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$Activity;->c(Landroid/os/Bundle;)V

    .line 320
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 370
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onStart()V

    .line 371
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->q:Lo/ZN;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 373
    invoke-virtual {v0, v1}, Lo/ZN;->a(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 380
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onStop()V

    .line 381
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->q:Lo/ZN;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 382
    invoke-virtual {v0, v1}, Lo/ZN;->a(Z)V

    :cond_0
    return-void
.end method

.method public t()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 265
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchResults:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 270
    invoke-static {}, Lo/gG;->a()Z

    move-result v0

    return v0
.end method

.method protected v()V
    .locals 2

    .line 448
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Lo/Serializable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Serializable;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v1, "PRE_QUERY_LIST"

    invoke-virtual {v0, v1}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/ZN;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->q:Lo/ZN;

    :cond_0
    return-void
.end method

.method protected x()V
    .locals 2

    .line 293
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->U()V

    .line 295
    iget v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->A:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->W()V

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->ab()V

    .line 300
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->T()V

    return-void
.end method

.method public y()J
    .locals 2

    .line 412
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->t:J

    return-wide v0
.end method

.method protected z()V
    .locals 5

    .line 566
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->Y()V

    .line 568
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->E:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->H:Lo/RatingBar;

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {v0}, Lo/RatingBar;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->H:Lo/RatingBar;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->K:Lo/ExpandableListConnector;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->c(Lo/RatingBar;Landroid/widget/ScrollView;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 574
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    if-gt v1, v0, :cond_0

    .line 578
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->O:Lo/Bs;

    invoke-interface {v2, v1}, Lo/Bs;->getResultsSuggestions(I)Lo/By;

    move-result-object v2

    .line 579
    sget-object v3, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->E:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 581
    invoke-virtual {v4, v2, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->c(Lo/By;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v2

    .line 579
    invoke-static {v3, v2}, Lo/Zy;->a(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
