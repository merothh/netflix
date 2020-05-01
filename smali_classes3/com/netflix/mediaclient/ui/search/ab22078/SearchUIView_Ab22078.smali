.class public Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;
.super Lo/VibrationEffect;
.source ""

# interfaces
.implements Lo/ClassCircularityError;
.implements Lo/ZP$ActionBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/ZR;",
        ">;",
        "Lo/ClassCircularityError;",
        "Lo/ZP$ActionBar;"
    }
.end annotation


# static fields
.field public static final e:Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078$ActionBar;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;

.field private c:Z

.field private d:Lo/ZU;

.field private final f:Lo/EditText;

.field private final g:Lo/ImageSwitcher;

.field private h:Landroidx/recyclerview/widget/RecyclerView;

.field private final i:Landroid/view/ViewGroup;

.field private final j:I

.field private m:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

.field private final n:Lo/ImageSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->e:Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;Lo/UpdateEngine;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBusFactory"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->c:Z

    .line 43
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->d(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->a:Landroid/view/View;

    .line 44
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->p()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "root.findViewById(getRecyclerViewId())"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->b:Landroid/view/View;

    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->j:I

    .line 46
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->p()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->a:Landroid/view/View;

    sget v0, Lo/Zt$Application;->D:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "root.findViewById(R.id.s\u2026e_instructions_container)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->i:Landroid/view/ViewGroup;

    .line 51
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->a:Landroid/view/View;

    sget v0, Lo/Zt$Application;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->g:Lo/ImageSwitcher;

    .line 52
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->a:Landroid/view/View;

    sget v0, Lo/Zt$Application;->e:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->n:Lo/ImageSwitcher;

    .line 54
    new-instance p1, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    move-object v0, p0

    check-cast v0, Lo/ZP$ActionBar;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "root.context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p2, p3, v1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;-><init>(Lo/ZP$ActionBar;Lcom/netflix/cl/model/AppView;Lo/UpdateEngine;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->m:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    .line 57
    new-instance p1, Lo/EditText;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->a:Landroid/view/View;

    new-instance p3, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078$3;

    invoke-direct {p3, p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078$3;-><init>(Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;)V

    check-cast p3, Lo/DatePickerCalendarDelegate$Activity;

    invoke-direct {p1, p2, p3}, Lo/EditText;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->f:Lo/EditText;

    .line 60
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->j()V

    .line 63
    sget-object p1, Lo/ab;->d:Lo/ab$StateListAnimator;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "recyclerView.context"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lo/ab$StateListAnimator;->c(Landroid/content/Context;)Lo/ab;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->h:Landroidx/recyclerview/widget/RecyclerView;

    const-string p3, "search_scroll"

    invoke-interface {p1, p2, p3}, Lo/ab;->d(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;Lo/UpdateEngine;ILo/amc;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 31
    sget-object p2, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;-><init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;Lo/UpdateEngine;)V

    return-void
.end method

.method private final h()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->h:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->j:I

    return v0
.end method

.method protected final b(Lo/ZU;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->m:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->setData(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic c(Lo/ZR;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->b:Landroid/view/View;

    return-object v0
.end method

.method public d(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->i()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026ayoutId(), parent, false)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public e(Lo/ZU;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {p1}, Lo/ZU;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->f:Lo/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/EditText;->a(Z)V

    .line 109
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->d:Lo/ZU;

    .line 110
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->b(Lo/ZU;)V

    .line 111
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->x()V

    return-void

    .line 105
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->f()V

    return-void
.end method

.method public f()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->f:Lo/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/EditText;->a(Z)V

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->g:Lo/ImageSwitcher;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->m()I

    move-result v2

    invoke-virtual {v0, v2}, Lo/ImageSwitcher;->setText(I)V

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->n:Lo/ImageSwitcher;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->k()I

    move-result v2

    invoke-virtual {v0, v2}, Lo/ImageSwitcher;->setText(I)V

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 125
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->h()V

    return-void
.end method

.method public i()I
    .locals 1

    .line 100
    sget v0, Lo/Zt$LoaderManager;->x:I

    return v0
.end method

.method public j()V
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->h:Landroidx/recyclerview/widget/RecyclerView;

    instance-of v1, v0, Lcom/airbnb/epoxy/EpoxyRecyclerView;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 79
    check-cast v0, Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 80
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->m:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    check-cast v1, Lo/OfPrimitive;

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lo/OfPrimitive;)V

    .line 81
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->h:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$FragmentManager;)V

    .line 83
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 84
    invoke-virtual {v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 83
    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 89
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->m:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;)V

    .line 88
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 91
    new-instance v0, Lo/DoubleBinaryOperator;

    invoke-direct {v0}, Lo/DoubleBinaryOperator;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lo/DoubleBinaryOperator;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.airbnb.epoxy.EpoxyRecyclerView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final l()Landroid/view/View;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->a:Landroid/view/View;

    return-object v0
.end method

.method protected final m()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->c:Z

    return v0
.end method

.method public n()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->f:Lo/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/EditText;->c(Z)V

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->g:Lo/ImageSwitcher;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(I)V

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->n:Lo/ImageSwitcher;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(I)V

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->i:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 133
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->h()V

    return-void
.end method

.method public o()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->f:Lo/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/EditText;->b(Z)V

    return-void
.end method

.method public final p()I
    .locals 1

    .line 71
    sget v0, Lo/Zt$Application;->x:I

    return v0
.end method

.method protected final q()Lo/EditText;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->f:Lo/EditText;

    return-object v0
.end method

.method public final r()Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->m:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    return-object v0
.end method

.method protected final s()Landroid/view/ViewGroup;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->i:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final t()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->h:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final u()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->f:Lo/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/EditText;->a(Z)V

    return-void
.end method

.method public final v()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->f:Lo/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/EditText;->c(Z)V

    return-void
.end method

.method public final x()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->h:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->i:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
