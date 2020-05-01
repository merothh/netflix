.class public final Lo/aaE;
.super Lo/VibrationEffect;
.source ""

# interfaces
.implements Lo/aar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aaE$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Ljava/lang/Object;",
        ">;",
        "Lo/aar;"
    }
.end annotation


# static fields
.field public static final a:Lo/aaE$TaskDescription;


# instance fields
.field private final b:Landroid/view/View;

.field private c:Lcom/airbnb/epoxy/EpoxyRecyclerView;

.field private final d:Lo/aka;

.field private e:Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;

.field private final f:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "Ljava/lang/String;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "Ljava/lang/String;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lo/aau;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/aaE$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aaE$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/aaE;->a:Lo/aaE$TaskDescription;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnTouchListener;Lo/alA;Lo/alA;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View$OnTouchListener;",
            "Lo/alA<",
            "-",
            "Ljava/lang/String;",
            "Lo/akj;",
            ">;",
            "Lo/alA<",
            "-",
            "Ljava/lang/String;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyboardHider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget v0, Lo/aax$StateListAnimator;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "rootView.findViewById(R.\u2026pletion_results_epoxy_rv)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lo/aaE;->f:Lo/alA;

    iput-object p4, p0, Lo/aaE;->h:Lo/alA;

    .line 24
    iput-object p1, p0, Lo/aaE;->b:Landroid/view/View;

    .line 26
    new-instance p1, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionResultsUIView$containerId$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionResultsUIView$containerId$2;-><init>(Lo/aaE;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/aaE;->d:Lo/aka;

    .line 28
    invoke-virtual {p0}, Lo/aaE;->y()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/airbnb/epoxy/EpoxyRecyclerView;

    iput-object p1, p0, Lo/aaE;->c:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 31
    new-instance p1, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;

    new-instance p3, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionResultsUIView$queryCompletionEpoxyController$1;

    move-object p4, p0

    check-cast p4, Lo/aaE;

    invoke-direct {p3, p4}, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionResultsUIView$queryCompletionEpoxyController$1;-><init>(Lo/aaE;)V

    check-cast p3, Lo/alO;

    new-instance v0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionResultsUIView$queryCompletionEpoxyController$2;

    invoke-direct {v0, p4}, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionResultsUIView$queryCompletionEpoxyController$2;-><init>(Lo/aaE;)V

    check-cast v0, Lo/alO;

    invoke-direct {p1, p3, v0}, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;-><init>(Lo/alO;Lo/alO;)V

    iput-object p1, p0, Lo/aaE;->e:Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;

    .line 33
    new-instance p1, Lo/aau;

    invoke-direct {p1}, Lo/aau;-><init>()V

    iput-object p1, p0, Lo/aaE;->j:Lo/aau;

    .line 36
    iget-object p1, p0, Lo/aaE;->c:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 37
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lo/aaE;->d()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {p1, p3}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 38
    iget-object p3, p0, Lo/aaE;->e:Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;

    check-cast p3, Lo/OfPrimitive;

    invoke-virtual {p1, p3}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setController(Lo/OfPrimitive;)V

    .line 39
    invoke-virtual {p1, p2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p2, 0x0

    .line 40
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;

    invoke-virtual {p1, p2}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$FragmentManager;)V

    return-void

    .line 28
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.airbnb.epoxy.EpoxyRecyclerView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 45
    iget-object v0, p0, Lo/aaE;->j:Lo/aau;

    invoke-virtual {v0, p1, p2, p3}, Lo/aau;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    iget-object p2, p0, Lo/aaE;->f:Lo/alA;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/akj;

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lo/aaE;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lo/aaE;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic b(Lo/aaE;)Lo/aau;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/aaE;->j:Lo/aau;

    return-object p0
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lo/aaE;->j:Lo/aau;

    invoke-virtual {v0, p1, p2, p3}, Lo/aau;->e(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    iget-object p2, p0, Lo/aaE;->h:Lo/alA;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/akj;

    :cond_0
    return-void
.end method

.method public static final synthetic e(Lo/aaE;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lo/aaE;->b(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lo/aaE;->d:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    .line 59
    iget-object v0, p0, Lo/aaE;->c:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lo/aaE;->j:Lo/aau;

    invoke-virtual {v0}, Lo/aau;->d()V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/aaE;->b:Landroid/view/View;

    return-object v0
.end method

.method public d(Lo/Bs;Ljava/lang/String;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lo/aaE;->c:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->scrollToPosition(I)V

    .line 65
    iget-object v0, p0, Lo/aaE;->e:Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionEpoxyController;->setData(Lo/Bs;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionResultsUIView$updateQueryCompletionResultsList$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/searchlite/SearchQueryCompletionResultsUIView$updateQueryCompletionResultsList$1;-><init>(Lo/aaE;)V

    check-cast v0, Lo/alN;

    invoke-static {p1, p2, v0}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method

.method public d(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lo/aaE;->j:Lo/aau;

    invoke-virtual {p1}, Lo/aau;->d()V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lo/aaE;->j:Lo/aau;

    invoke-virtual {p1}, Lo/aau;->c()V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 55
    iget-object v0, p0, Lo/aaE;->c:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->setVisibility(I)V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lo/aaE;->c:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    invoke-virtual {v0}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
