.class public Lo/aaz;
.super Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aaz$ActionBar;
    }
.end annotation


# static fields
.field static final synthetic p:[Lo/amT;

.field public static final q:Lo/aaz$ActionBar;


# instance fields
.field private final k:Lo/ams;

.field protected s:Lo/aaA;

.field private t:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/aaz;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "searchResultsViewGroup"

    const-string v4, "getSearchResultsViewGroup()Landroid/view/ViewGroup;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/aaz;->p:[Lo/amT;

    new-instance v0, Lo/aaz$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aaz$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/aaz;->q:Lo/aaz$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;-><init>()V

    .line 22
    sget v0, Lo/aax$StateListAnimator;->e:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/aaz;->k:Lo/ams;

    return-void
.end method

.method private final U()Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lo/aaz;->k:Lo/ams;

    sget-object v1, Lo/aaz;->p:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static final synthetic a(Lo/aaz;)V
    .locals 0

    .line 15
    invoke-virtual {p0}, Lo/aaz;->I()V

    return-void
.end method

.method public static final synthetic a(Lo/aaz;ILcom/netflix/android/imageloader/api/ImageDataSource;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lo/aaz;->d(ILcom/netflix/android/imageloader/api/ImageDataSource;)V

    return-void
.end method

.method private final d(ILcom/netflix/android/imageloader/api/ImageDataSource;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lo/aaz;->o:Lo/ZB;

    invoke-virtual {v0, p1, p2}, Lo/ZB;->e(ILcom/netflix/android/imageloader/api/ImageDataSource;)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 88
    iget-object v0, p0, Lo/aaz;->s:Lo/aaA;

    if-nez v0, :cond_0

    const-string v1, "searchResultsListUIView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/aaA;->h()V

    return-void
.end method

.method public B()V
    .locals 3

    .line 68
    sget-object v0, Lo/aaz;->q:Lo/aaz$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 69
    invoke-virtual {p0}, Lo/aaz;->c()Lo/Bs;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v1, p0, Lo/aaz;->s:Lo/aaA;

    if-nez v1, :cond_0

    const-string v2, "searchResultsListUIView"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lo/aaz;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lo/aaA;->e(Lo/Bs;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public D()V
    .locals 0

    return-void
.end method

.method public P()V
    .locals 2

    .line 60
    iget-object v0, p0, Lo/aaz;->s:Lo/aaA;

    if-nez v0, :cond_0

    const-string v1, "searchResultsListUIView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/aaA;->e()V

    return-void
.end method

.method public S()V
    .locals 2

    .line 56
    iget-object v0, p0, Lo/aaz;->s:Lo/aaA;

    if-nez v0, :cond_0

    const-string v1, "searchResultsListUIView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/aaA;->b()V

    return-void
.end method

.method public final T()Lo/aaA;
    .locals 2

    .line 24
    iget-object v0, p0, Lo/aaz;->s:Lo/aaA;

    if-nez v0, :cond_0

    const-string v1, "searchResultsListUIView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public V()V
    .locals 1

    iget-object v0, p0, Lo/aaz;->t:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 3

    if-nez p1, :cond_0

    .line 39
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "Can\'t create search results ui, null parent"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 42
    :cond_0
    new-instance p2, Lo/aaA;

    .line 44
    new-instance v0, Lo/aaz$StateListAnimator;

    invoke-direct {v0, p0}, Lo/aaz$StateListAnimator;-><init>(Lo/aaz;)V

    check-cast v0, Landroid/view/View$OnTouchListener;

    .line 48
    new-instance v1, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsFrag$setupSearchResultsViews$2;

    move-object v2, p0

    check-cast v2, Lo/aaz;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsFrag$setupSearchResultsViews$2;-><init>(Lo/aaz;)V

    check-cast v1, Lo/alN;

    .line 42
    invoke-direct {p2, p1, v0, v1}, Lo/aaA;-><init>(Landroid/view/View;Landroid/view/View$OnTouchListener;Lo/alN;)V

    iput-object p2, p0, Lo/aaz;->s:Lo/aaA;

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lo/aaz;->U()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lo/aaz;->b(Landroid/view/View;)V

    return-void
.end method

.method public d(Lo/RatingBar;)V
    .locals 0

    return-void
.end method

.method public g()I
    .locals 2

    .line 33
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Using soal_search_results_frag_phone"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 34
    sget v0, Lo/aax$TaskDescription;->f:I

    return v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->onDestroyView()V

    invoke-virtual {p0}, Lo/aaz;->V()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->onHiddenChanged(Z)V

    .line 84
    iget-object v0, p0, Lo/aaz;->s:Lo/aaA;

    if-nez v0, :cond_0

    const-string v1, "searchResultsListUIView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lo/aaA;->e(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 92
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->onPause()V

    .line 93
    iget-object v0, p0, Lo/aaz;->s:Lo/aaA;

    if-nez v0, :cond_0

    const-string v1, "searchResultsListUIView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/aaA;->e(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 97
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->onResume()V

    .line 98
    sget-object v0, Lo/eo;->e:Lo/eo$ActionBar;

    invoke-virtual {v0}, Lo/eo$ActionBar;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lo/aaz;->s:Lo/aaA;

    if-nez v0, :cond_0

    const-string v1, "searchResultsListUIView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/aaA;->e(Z)V

    :cond_1
    return-void
.end method

.method public x()V
    .locals 0

    return-void
.end method

.method public z()V
    .locals 0

    return-void
.end method
