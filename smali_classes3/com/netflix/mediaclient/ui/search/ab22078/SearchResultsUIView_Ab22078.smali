.class public final Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;
.super Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078$StateListAnimator;

.field static final synthetic c:[Lo/amT;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private d:Z

.field private final g:Lo/amB;

.field private final h:Lo/UpdateEngine;

.field private final i:Lcom/netflix/cl/model/AppView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "query"

    const-string v4, "getQuery()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lo/amP;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->c:[Lo/amT;

    new-instance v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->b:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;Lo/UpdateEngine;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBusFactory"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;-><init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;Lo/UpdateEngine;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->i:Lcom/netflix/cl/model/AppView;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->h:Lo/UpdateEngine;

    .line 24
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->l()Landroid/view/View;

    move-result-object p1

    sget p2, Lo/Zt$Application;->o:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "root.findViewById(R.id.search_prequery_container)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->a:Landroid/view/ViewGroup;

    .line 27
    sget-object p1, Lo/amt;->c:Lo/amt;

    .line 94
    new-instance p1, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078$ActionBar;

    const-string p2, ""

    invoke-direct {p1, p2, p2, p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078$ActionBar;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;)V

    check-cast p1, Lo/amB;

    .line 96
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->g:Lo/amB;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;Lo/UpdateEngine;ILo/amc;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 18
    sget-object p2, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;-><init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;Lo/UpdateEngine;)V

    return-void
.end method

.method private final c(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private final z()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->g:Lo/amB;

    sget-object v1, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->c:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lo/amB;->b(Ljava/lang/Object;Lo/amT;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lo/ZU;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->e(Lo/ZU;)V

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Lo/ZU;->c()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 58
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->c(I)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 63
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->f()V

    const/16 v0, 0x8

    .line 64
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->c(I)V

    .line 65
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->s()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final h()Landroid/view/ViewGroup;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 52
    sget v0, Lo/Zt$LoaderManager;->q:I

    return v0
.end method

.method public j()V
    .locals 2

    .line 34
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->j()V

    .line 36
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->t()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    instance-of v0, v0, Lcom/airbnb/epoxy/EpoxyRecyclerView;

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->t()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 38
    new-instance v1, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078$TaskDescription;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/EpoxyRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.airbnb.epoxy.EpoxyRecyclerView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->d:Z

    return-void
.end method

.method public n()V
    .locals 4

    .line 69
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->n()V

    .line 70
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->s()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->z()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->c(I)V

    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->q()Lo/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/EditText;->a(Z)V

    .line 73
    sget-object v0, Lo/ZR$PictureInPictureParams;->e:Lo/ZR$PictureInPictureParams;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public o()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchUIView_Ab22078;->o()V

    const/16 v0, 0x8

    .line 86
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->c(I)V

    return-void
.end method
