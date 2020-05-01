.class public final Lo/aaA;
.super Lo/VibrationEffect;
.source ""

# interfaces
.implements Lo/aas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aaA$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Ljava/lang/Object;",
        ">;",
        "Lo/aas;"
    }
.end annotation


# static fields
.field public static final e:Lo/aaA$Application;


# instance fields
.field private final a:Lo/aka;

.field private final b:Landroid/view/View;

.field private c:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

.field private d:Lcom/airbnb/epoxy/EpoxyRecyclerView;

.field private f:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/aaA$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aaA$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/aaA;->e:Lo/aaA$Application;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnTouchListener;Lo/alN;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View$OnTouchListener;",
            "Lo/alN<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/netflix/android/imageloader/api/ImageDataSource;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyboardHider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget v0, Lo/aax$StateListAnimator;->c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "rootView.findViewById(R.\u2026.search_results_epoxy_rv)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 29
    iput-object p1, p0, Lo/aaA;->b:Landroid/view/View;

    .line 31
    new-instance p1, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsListUIView$containerId$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsListUIView$containerId$2;-><init>(Lo/aaA;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/aaA;->a:Lo/aka;

    .line 35
    invoke-virtual {p0}, Lo/aaA;->y()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Lcom/airbnb/epoxy/EpoxyRecyclerView;

    iput-object p1, p0, Lo/aaA;->d:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    const-string p1, ""

    .line 41
    iput-object p1, p0, Lo/aaA;->f:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lo/aaA;->i:Ljava/lang/String;

    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 50
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->h()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    const-string v2, "(this as java.lang.String).toUpperCase(locale)"

    if-eqz v0, :cond_1

    .line 51
    sget v0, Lo/aax$Fragment;->c:I

    invoke-direct {p0, v0}, Lo/aaA;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_1
    sget v0, Lo/aax$Fragment;->c:I

    invoke-direct {p0, v0}, Lo/aaA;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_0
    iput-object v0, p0, Lo/aaA;->i:Ljava/lang/String;

    .line 53
    sget v0, Lo/aax$Fragment;->b:I

    invoke-direct {p0, v0}, Lo/aaA;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/aaA;->f:Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_3
    :goto_1
    new-instance p1, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    .line 58
    iget-object v0, p0, Lo/aaA;->f:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lo/aaA;->i:Ljava/lang/String;

    .line 57
    invoke-direct {p1, v0, v1, p3}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/alN;)V

    iput-object p1, p0, Lo/aaA;->c:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    .line 62
    iget-object p1, p0, Lo/aaA;->d:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 63
    new-instance p3, Lcom/netflix/android/widgetry/widget/PrefetchGridLayoutManager;

    invoke-virtual {p0}, Lo/aaA;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "uiView.context"

    invoke-static {v1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lcom/netflix/android/widgetry/widget/PrefetchGridLayoutManager;-><init>(Landroid/content/Context;IIZILo/amc;)V

    .line 64
    sget-object v0, Lo/eB;->e:Lo/eB$StateListAnimator;

    invoke-virtual {v0}, Lo/eB$StateListAnimator;->e()I

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    invoke-static {}, Lo/aek;->h()Z

    move-result v1

    if-nez v1, :cond_4

    .line 66
    invoke-virtual {p3, v0}, Lcom/netflix/android/widgetry/widget/PrefetchGridLayoutManager;->d(I)V

    .line 63
    :cond_4
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {p1, p3}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 69
    iget-object p3, p0, Lo/aaA;->c:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    check-cast p3, Lo/OfPrimitive;

    invoke-virtual {p1, p3}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lo/OfPrimitive;)V

    .line 70
    invoke-virtual {p1, p2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p2, 0x0

    .line 71
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;

    invoke-virtual {p1, p2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$FragmentManager;)V

    .line 72
    new-instance p2, Lo/DoubleBinaryOperator;

    invoke-direct {p2}, Lo/DoubleBinaryOperator;-><init>()V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Lo/DoubleBinaryOperator;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    .line 35
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.airbnb.epoxy.EpoxyRecyclerView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lo/aaA;)Lcom/airbnb/epoxy/EpoxyRecyclerView;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/aaA;->d:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    return-object p0
.end method

.method public static final synthetic b(Lo/aaA;)I
    .locals 0

    .line 19
    iget p0, p0, Lo/aaA;->j:I

    return p0
.end method

.method public static final synthetic b(Lo/aaA;I)V
    .locals 0

    .line 19
    iput p1, p0, Lo/aaA;->h:I

    return-void
.end method

.method public static final synthetic c(Lo/aaA;)I
    .locals 0

    .line 19
    iget p0, p0, Lo/aaA;->h:I

    return p0
.end method

.method private final c(I)Ljava/lang/String;
    .locals 2

    .line 45
    invoke-virtual {p0}, Lo/aaA;->y()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "contentView.context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "contentView.context.resources.getString(resId)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final synthetic d(Lo/aaA;)Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/aaA;->c:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    return-object p0
.end method

.method public static final synthetic d(Lo/aaA;I)V
    .locals 0

    .line 19
    iput p1, p0, Lo/aaA;->j:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lo/aaA;->a:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    .line 82
    iget-object v0, p0, Lo/aaA;->d:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lo/aaA;->j:I

    .line 84
    iput v0, p0, Lo/aaA;->h:I

    .line 85
    iget-object v0, p0, Lo/aaA;->c:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->cleanupLogging()V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/aaA;->b:Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 77
    iget-object v0, p0, Lo/aaA;->d:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setVisibility(I)V

    return-void
.end method

.method public e(Lo/Bs;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez p1, :cond_0

    .line 90
    iget-object p1, p0, Lo/aaA;->c:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, v1, v1}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->setData(Lo/Bs;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lo/aaA;->d:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    invoke-virtual {v1, v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->scrollToPosition(I)V

    .line 96
    iget-object v0, p0, Lo/aaA;->d:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    check-cast v0, Landroid/view/View;

    .line 116
    invoke-static {v0}, Lo/FilterWriter;->y(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_3

    .line 97
    invoke-static {p0}, Lo/aaA;->b(Lo/aaA;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lo/aaA;->c(Lo/aaA;)I

    move-result v0

    if-nez v0, :cond_2

    .line 98
    :cond_1
    invoke-static {p0}, Lo/aaA;->a(Lo/aaA;)Lcom/airbnb/epoxy/EpoxyRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    invoke-static {p0, v0}, Lo/aaA;->d(Lo/aaA;I)V

    .line 99
    invoke-static {p0}, Lo/aaA;->b(Lo/aaA;)I

    move-result v0

    int-to-double v0, v0

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->e()D

    move-result-wide v2

    mul-double v0, v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {p0, v0}, Lo/aaA;->b(Lo/aaA;I)V

    .line 101
    :cond_2
    invoke-static {p0}, Lo/aaA;->d(Lo/aaA;)Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    move-result-object v0

    invoke-static {p0}, Lo/aaA;->b(Lo/aaA;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Lo/aaA;->c(Lo/aaA;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->setData(Lo/Bs;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 120
    :cond_3
    new-instance v1, Lo/aaA$TaskDescription;

    invoke-direct {v1, p0, p1, p2}, Lo/aaA$TaskDescription;-><init>(Lo/aaA;Lo/Bs;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 105
    iget-object v0, p0, Lo/aaA;->c:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->onHiddenChanged(Z)V

    return-void
.end method

.method public h()V
    .locals 1

    .line 107
    iget-object v0, p0, Lo/aaA;->c:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->cleanupLogging()V

    return-void
.end method
