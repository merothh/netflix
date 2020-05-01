.class public final Lo/ScaleGestureDetector;
.super Lo/OrientationEventListener;
.source ""

# interfaces
.implements Lo/RemoteAnimationDefinition;


# static fields
.field static final synthetic d:[Lo/amT;


# instance fields
.field public e:Lo/RenderNode;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/RecordingCanvas;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lo/ams;

.field private h:Lo/RoundScrollbarRenderer;

.field private final i:Lo/ams;

.field private j:Lo/OrientationListener;

.field private m:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/ScaleGestureDetector;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "recyclerView"

    const-string v5, "getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "seeAllPlansTextView"

    const-string v4, "getSeeAllPlansTextView()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lo/ScaleGestureDetector;->d:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lo/OrientationEventListener;-><init>()V

    .line 28
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qp:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/ScaleGestureDetector;->i:Lo/ams;

    .line 31
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qX:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/ScaleGestureDetector;->g:Lo/ams;

    return-void
.end method

.method private final E()V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lo/ScaleGestureDetector;->u()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lo/ScaleGestureDetector$ActionBar;

    invoke-direct {v1, p0}, Lo/ScaleGestureDetector$ActionBar;-><init>(Lo/ScaleGestureDetector;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final F()V
    .locals 2

    .line 62
    iget-object v0, p0, Lo/ScaleGestureDetector;->h:Lo/RoundScrollbarRenderer;

    if-nez v0, :cond_0

    const-string v1, "viewmodel_Ab22912"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/RoundScrollbarRenderer;->z()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/ScaleGestureDetector;->f:Ljava/util/List;

    return-void
.end method

.method private final G()V
    .locals 5

    .line 108
    iget-object v0, p0, Lo/ScaleGestureDetector;->h:Lo/RoundScrollbarRenderer;

    const-string v1, "viewmodel_Ab22912"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/RoundScrollbarRenderer;->B()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lo/ScaleGestureDetector;->k()Lo/InputChannel;

    move-result-object v0

    invoke-virtual {v0}, Lo/InputChannel;->l()Z

    move-result v0

    if-nez v0, :cond_4

    .line 110
    invoke-virtual {p0}, Lo/ScaleGestureDetector;->C()Lo/ImageSwitcher;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 111
    invoke-virtual {p0}, Lo/ScaleGestureDetector;->C()Lo/ImageSwitcher;

    move-result-object v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/ImageSwitcher;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 113
    new-instance v0, Landroid/text/SpannableString;

    iget-object v2, p0, Lo/ScaleGestureDetector;->h:Lo/RoundScrollbarRenderer;

    if-nez v2, :cond_1

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lo/RoundScrollbarRenderer;->C()Landroid/text/Spannable;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lo/ScaleGestureDetector;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$Application;->T:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 116
    iget-object v3, p0, Lo/ScaleGestureDetector;->h:Lo/RoundScrollbarRenderer;

    if-nez v3, :cond_2

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Lo/RoundScrollbarRenderer;->E()I

    move-result v3

    .line 117
    iget-object v4, p0, Lo/ScaleGestureDetector;->h:Lo/RoundScrollbarRenderer;

    if-nez v4, :cond_3

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v4}, Lo/RoundScrollbarRenderer;->I()I

    move-result v1

    const/16 v4, 0x21

    .line 114
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 120
    invoke-virtual {p0}, Lo/ScaleGestureDetector;->C()Lo/ImageSwitcher;

    move-result-object v1

    check-cast v0, Ljava/lang/CharSequence;

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 122
    invoke-virtual {p0}, Lo/ScaleGestureDetector;->C()Lo/ImageSwitcher;

    move-result-object v0

    new-instance v1, Lo/ScaleGestureDetector$Activity;

    invoke-direct {v1, p0}, Lo/ScaleGestureDetector$Activity;-><init>(Lo/ScaleGestureDetector;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method private final H()V
    .locals 5

    .line 66
    invoke-direct {p0}, Lo/ScaleGestureDetector;->F()V

    .line 68
    invoke-virtual {p0}, Lo/ScaleGestureDetector;->B()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lo/ScaleGestureDetector;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 69
    new-instance v0, Lo/OrientationListener;

    .line 70
    move-object v1, p0

    check-cast v1, Lo/RemoteAnimationDefinition;

    .line 71
    iget-object v2, p0, Lo/ScaleGestureDetector;->h:Lo/RoundScrollbarRenderer;

    const-string v3, "viewmodel_Ab22912"

    if-nez v2, :cond_0

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lo/RoundScrollbarRenderer;->D()Ljava/util/List;

    move-result-object v2

    .line 72
    iget-object v4, p0, Lo/ScaleGestureDetector;->h:Lo/RoundScrollbarRenderer;

    if-nez v4, :cond_1

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v4}, Lo/RoundScrollbarRenderer;->A()Lo/Cloneable;

    move-result-object v4

    .line 69
    invoke-direct {v0, v1, v2, v4}, Lo/OrientationListener;-><init>(Lo/RemoteAnimationDefinition;Ljava/util/List;Lo/Cloneable;)V

    iput-object v0, p0, Lo/ScaleGestureDetector;->j:Lo/OrientationListener;

    .line 75
    iget-object v0, p0, Lo/ScaleGestureDetector;->h:Lo/RoundScrollbarRenderer;

    if-nez v0, :cond_2

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lo/RoundScrollbarRenderer;->A()Lo/Cloneable;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lo/UnicodeScript;

    new-instance v2, Lo/ScaleGestureDetector$TaskDescription;

    invoke-direct {v2, p0}, Lo/ScaleGestureDetector$TaskDescription;-><init>(Lo/ScaleGestureDetector;)V

    check-cast v2, Lo/ClassFormatError;

    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    .line 82
    iget-object v0, p0, Lo/ScaleGestureDetector;->j:Lo/OrientationListener;

    const-string v1, "planCardAdapter"

    if-nez v0, :cond_3

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lo/ScaleGestureDetector;->f:Ljava/util/List;

    if-nez v2, :cond_4

    const-string v4, "planCardsDataList"

    invoke-static {v4}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0, v2}, Lo/OrientationListener;->e(Ljava/util/List;)V

    .line 83
    iget-object v0, p0, Lo/ScaleGestureDetector;->h:Lo/RoundScrollbarRenderer;

    if-nez v0, :cond_5

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lo/RoundScrollbarRenderer;->A()Lo/Cloneable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Cloneable;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/ScaleGestureDetector;->a(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lo/ScaleGestureDetector;->B()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lo/ScaleGestureDetector;->j:Lo/OrientationListener;

    if-nez v2, :cond_6

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_6
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 3

    .line 88
    new-instance v0, Lo/RenderNode;

    .line 89
    invoke-virtual {p0}, Lo/ScaleGestureDetector;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->af:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 90
    invoke-direct {p0, p1}, Lo/ScaleGestureDetector;->b(Ljava/lang/String;)I

    move-result p1

    .line 88
    invoke-direct {v0, v1, p1}, Lo/RenderNode;-><init>(II)V

    iput-object v0, p0, Lo/ScaleGestureDetector;->e:Lo/RenderNode;

    .line 92
    invoke-virtual {p0}, Lo/ScaleGestureDetector;->B()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lo/ScaleGestureDetector;->e:Lo/RenderNode;

    if-nez v0, :cond_0

    const-string v1, "itemDecoration"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    return-void
.end method

.method public static final synthetic a(Lo/ScaleGestureDetector;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/ScaleGestureDetector;->H()V

    return-void
.end method

.method private final b(Ljava/lang/String;)I
    .locals 4

    .line 103
    iget-object v0, p0, Lo/ScaleGestureDetector;->f:Ljava/util/List;

    const-string v1, "planCardsDataList"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lo/RecordingCanvas;

    invoke-virtual {v3}, Lo/RecordingCanvas;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lo/RecordingCanvas;

    .line 104
    iget-object p1, p0, Lo/ScaleGestureDetector;->f:Ljava/util/List;

    if-nez p1, :cond_3

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    invoke-static {p1, v2}, Lo/akz;->e(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public static final synthetic b(Lo/ScaleGestureDetector;)Ljava/util/List;
    .locals 1

    .line 25
    iget-object p0, p0, Lo/ScaleGestureDetector;->f:Ljava/util/List;

    if-nez p0, :cond_0

    const-string v0, "planCardsDataList"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic c(Lo/ScaleGestureDetector;Ljava/util/List;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/ScaleGestureDetector;->f:Ljava/util/List;

    return-void
.end method

.method public static final synthetic e(Lo/ScaleGestureDetector;)Lo/RoundScrollbarRenderer;
    .locals 1

    .line 25
    iget-object p0, p0, Lo/ScaleGestureDetector;->h:Lo/RoundScrollbarRenderer;

    if-nez p0, :cond_0

    const-string v0, "viewmodel_Ab22912"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final B()Landroidx/recyclerview/widget/RecyclerView;
    .locals 3

    iget-object v0, p0, Lo/ScaleGestureDetector;->i:Lo/ams;

    sget-object v1, Lo/ScaleGestureDetector;->d:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final C()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/ScaleGestureDetector;->g:Lo/ams;

    sget-object v1, Lo/ScaleGestureDetector;->d:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method public final I()Lo/RenderNode;
    .locals 2

    .line 39
    iget-object v0, p0, Lo/ScaleGestureDetector;->e:Lo/RenderNode;

    if-nez v0, :cond_0

    const-string v1, "itemDecoration"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/ScaleGestureDetector;->m:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ScaleGestureDetector;->m:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/ScaleGestureDetector;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/ScaleGestureDetector;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lo/ScaleGestureDetector;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .line 96
    invoke-virtual {p0}, Lo/ScaleGestureDetector;->k()Lo/InputChannel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/InputChannel;->b(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lo/ScaleGestureDetector;->B()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lo/ScaleGestureDetector;->e:Lo/RenderNode;

    if-nez v1, :cond_0

    const-string v2, "itemDecoration"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    .line 98
    invoke-direct {p0, p1}, Lo/ScaleGestureDetector;->a(Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lo/ScaleGestureDetector;->j:Lo/OrientationListener;

    if-nez p1, :cond_1

    const-string v0, "planCardAdapter"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lo/OrientationListener;->notifyDataSetChanged()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1}, Lo/OrientationEventListener;->onAttach(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0}, Lo/ScaleGestureDetector;->t()Lo/InputEventSender;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/InputEventSender;->b(Landroidx/fragment/app/Fragment;)Lo/RoundScrollbarRenderer;

    move-result-object p1

    iput-object p1, p0, Lo/ScaleGestureDetector;->h:Lo/RoundScrollbarRenderer;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->dK:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/OrientationEventListener;->onDestroyView()V

    invoke-virtual {p0}, Lo/ScaleGestureDetector;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-super {p0}, Lo/OrientationEventListener;->A()V

    .line 52
    invoke-super {p0}, Lo/OrientationEventListener;->D()V

    .line 53
    invoke-super {p0}, Lo/OrientationEventListener;->z()V

    .line 54
    invoke-super {p0}, Lo/OrientationEventListener;->d()V

    .line 55
    invoke-super {p0}, Lo/OrientationEventListener;->c()V

    .line 56
    invoke-direct {p0}, Lo/ScaleGestureDetector;->H()V

    .line 57
    invoke-direct {p0}, Lo/ScaleGestureDetector;->G()V

    .line 58
    invoke-direct {p0}, Lo/ScaleGestureDetector;->E()V

    return-void
.end method
