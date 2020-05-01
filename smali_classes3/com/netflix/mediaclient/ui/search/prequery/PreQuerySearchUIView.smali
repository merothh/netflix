.class public Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;
.super Lo/VibrationEffect;
.source ""

# interfaces
.implements Lo/ClassCircularityError;
.implements Lo/ZP$ActionBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$StateListAnimator;
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
.field public static final a:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$StateListAnimator;

.field static final synthetic b:[Lo/amT;

.field private static m:I


# instance fields
.field private final c:Landroid/view/View;

.field private final d:Landroid/view/View;

.field private e:Z

.field private f:Landroidx/recyclerview/widget/RecyclerView;

.field private final g:Lo/EditText;

.field private final h:Lo/ZP;

.field private final i:Lo/amB;

.field private final j:I

.field private final l:Lcom/netflix/cl/model/AppView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;

    invoke-static {v3}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "visibility"

    const-string v5, "getVisibility()Z"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/MutablePropertyReference1;)Lo/amP;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->b:[Lo/amT;

    new-instance v1, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$StateListAnimator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v1, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->a:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$StateListAnimator;

    const/4 v1, 0x2

    int-to-float v1, v1

    .line 190
    sget-object v2, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 191
    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "Lookup.get<Context>().resources"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 190
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->e:Z

    .line 35
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->c:Landroid/view/View;

    .line 37
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->m()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "root.findViewById(getRecyclerViewId())"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->d:Landroid/view/View;

    .line 39
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->j:I

    .line 41
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->m()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    new-instance p1, Lo/ZP;

    move-object v1, p0

    check-cast v1, Lo/ZP$ActionBar;

    invoke-direct {p1, v1}, Lo/ZP;-><init>(Lo/ZP$ActionBar;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->h:Lo/ZP;

    .line 48
    sget-object p1, Lo/amt;->c:Lo/amt;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 187
    new-instance v0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$ActionBar;

    invoke-direct {v0, p1, p1, p0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$ActionBar;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;)V

    check-cast v0, Lo/amB;

    .line 189
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->i:Lo/amB;

    .line 54
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->l:Lcom/netflix/cl/model/AppView;

    .line 56
    new-instance p1, Lo/EditText;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->c:Landroid/view/View;

    new-instance v0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$1;-><init>(Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;)V

    check-cast v0, Lo/DatePickerCalendarDelegate$Activity;

    invoke-direct {p1, p2, v0}, Lo/EditText;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->g:Lo/EditText;

    .line 59
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->l()V

    .line 62
    sget-object p1, Lo/ab;->d:Lo/ab$StateListAnimator;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "recyclerView.context"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lo/ab$StateListAnimator;->c(Landroid/content/Context;)Lo/ab;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->f:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "search_prequery_scroll"

    invoke-interface {p1, p2, v0}, Lo/ab;->d(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;ILo/amc;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 25
    sget-object p2, Lcom/netflix/cl/model/AppView;->preQuery:Lcom/netflix/cl/model/AppView;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;-><init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;)V

    return-void
.end method

.method public static final synthetic t()I
    .locals 1

    .line 25
    sget v0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->m:I

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->j:I

    return v0
.end method

.method public final a(Z)V
    .locals 1

    .line 136
    sget-object v0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->a:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 137
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->e:Z

    return-void
.end method

.method public b(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->i()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026LayoutId(), parent, true)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 110
    sget-object v0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->a:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 111
    sget-object v0, Lo/ZR$PendingIntent;->e:Lo/ZR$PendingIntent;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Z)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->i:Lo/amB;

    sget-object v1, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lo/amB;->b(Ljava/lang/Object;Lo/amT;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lo/Bs;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 115
    invoke-interface {p1}, Lo/Bs;->getResultsVideoEntities()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    .line 116
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 119
    :cond_1
    invoke-interface {p1}, Lo/Bs;->getSuggestionsListTrackable()Lo/Bz;

    move-result-object v2

    .line 120
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->h:Lo/ZP;

    .line 121
    invoke-interface {p1}, Lo/Bs;->getResultsVideos()Ljava/util/List;

    move-result-object p1

    .line 120
    invoke-virtual {v3, v1, p1, v2}, Lo/ZP;->a(Ljava/util/List;Ljava/util/List;Lo/Bz;)V

    .line 124
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->n()V

    if-eqz v2, :cond_2

    .line 126
    invoke-interface {v2}, Lo/Bz;->getReferenceId()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_2
    sget-object p1, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$setSearchResults$1;->d:Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$setSearchResults$1;

    check-cast p1, Lo/alN;

    .line 125
    invoke-static {v2, v0, p1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    goto :goto_2

    .line 117
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->b()V

    :goto_2
    return-void
.end method

.method public synthetic c(Lo/ZR;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->d:Landroid/view/View;

    return-object v0
.end method

.method protected final e(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->n()V

    .line 151
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->s()V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->r()V

    :goto_0
    return-void
.end method

.method public final f()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->e:Z

    return v0
.end method

.method protected final h()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->l:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 70
    sget v0, Lo/Zt$LoaderManager;->k:I

    return v0
.end method

.method public final j()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->f:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final k()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->g:Lo/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/EditText;->a(Z)V

    return-void
.end method

.method public l()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 80
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->h:Lo/ZP;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 81
    new-instance v1, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$Application;

    .line 82
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$Application;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;I)V

    .line 93
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lo/Zt$TaskDescription;->c:I

    invoke-static {v2, v3}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$Application;->d(Landroid/graphics/drawable/Drawable;)V

    .line 91
    :cond_0
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    .line 81
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    .line 98
    new-instance v1, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$TaskDescription;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView$TaskDescription;-><init>(Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    return-void
.end method

.method public m()I
    .locals 1

    .line 74
    sget v0, Lo/Zt$Application;->n:I

    return v0
.end method

.method public n()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->h:Lo/ZP;

    invoke-virtual {v0}, Lo/ZP;->d()V

    return-void
.end method

.method public final o()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->g:Lo/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/EditText;->c(Z)V

    return-void
.end method

.method public r()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->h:Lo/ZP;

    invoke-virtual {v0}, Lo/ZP;->b()V

    return-void
.end method

.method public s()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    .line 167
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 168
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->h()I

    move-result v1

    .line 169
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->n()I

    move-result v0

    if-gt v1, v0, :cond_0

    .line 171
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/prequery/PreQuerySearchUIView;->h:Lo/ZP;

    invoke-virtual {v2, v1}, Lo/ZP;->a(I)V

    if-eq v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
