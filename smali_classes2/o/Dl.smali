.class public final Lo/Dl;
.super Lo/VibrationEffect;
.source ""

# interfaces
.implements Lo/Dp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Dl$StateListAnimator;,
        Lo/Dl$TaskDescription;,
        Lo/Dl$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/FP;",
        ">;",
        "Lo/Dp;"
    }
.end annotation


# static fields
.field public static final a:Lo/Dl$Application;


# instance fields
.field private final b:Landroid/view/View;

.field private c:Ljava/lang/String;

.field private d:Lo/DN;

.field private final e:Landroidx/recyclerview/widget/RecyclerView;

.field private f:Lo/MultiAutoCompleteTextView$Application;

.field private final g:Landroid/view/ViewGroup;

.field private h:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Dl$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Dl$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Dl;->a:Lo/Dl$Application;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/Dl;->g:Landroid/view/ViewGroup;

    .line 32
    iget-object p1, p0, Lo/Dl;->g:Landroid/view/ViewGroup;

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fD:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/Dl;->b:Landroid/view/View;

    .line 33
    iget-object p1, p0, Lo/Dl;->b:Landroid/view/View;

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "rootView.findViewById(android.R.id.list)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lo/Dl;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    invoke-virtual {p0}, Lo/Dl;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 53
    invoke-virtual {p0}, Lo/Dl;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/List;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "episodesList"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentEpisodeId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p3, p0, Lo/Dl;->c:Ljava/lang/String;

    .line 74
    iget-object p3, p0, Lo/Dl;->g:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    if-eqz p3, :cond_0

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 73
    :goto_0
    invoke-virtual {p0, p3}, Lo/Dl;->b(I)V

    .line 77
    iget-object p3, p0, Lo/Dl;->d:Lo/DN;

    if-eqz p3, :cond_1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p3, p1, p2}, Lo/DN;->b(Ljava/util/Collection;I)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lo/Dl;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public b(I)V
    .locals 6

    .line 105
    iget-object v0, p0, Lo/Dl;->h:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->h()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 114
    :goto_1
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v5, p0, Lo/Dl;->g:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v4, p0, Lo/Dl;->h:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 115
    invoke-virtual {p0}, Lo/Dl;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    iget-object v5, p0, Lo/Dl;->h:Landroidx/recyclerview/widget/LinearLayoutManager;

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 117
    new-instance v4, Lo/Dl$TaskDescription;

    iget-object v5, p0, Lo/Dl;->c:Ljava/lang/String;

    invoke-direct {v4, v5, p1}, Lo/Dl$TaskDescription;-><init>(Ljava/lang/String;Z)V

    check-cast v4, Lo/MultiAutoCompleteTextView$Application;

    iput-object v4, p0, Lo/Dl;->f:Lo/MultiAutoCompleteTextView$Application;

    .line 118
    iget-object v4, p0, Lo/Dl;->d:Lo/DN;

    if-nez v4, :cond_2

    .line 120
    new-instance p1, Lo/DN;

    iget-object v3, p0, Lo/Dl;->f:Lo/MultiAutoCompleteTextView$Application;

    new-instance v4, Lo/Dl$StateListAnimator;

    move-object v5, p0

    check-cast v5, Lo/Dp;

    invoke-direct {v4, v5}, Lo/Dl$StateListAnimator;-><init>(Lo/Dp;)V

    check-cast v4, Lo/DN$Application;

    invoke-direct {p1, v3, v4}, Lo/DN;-><init>(Lo/MultiAutoCompleteTextView$Application;Lo/DN$Application;)V

    iput-object p1, p0, Lo/Dl;->d:Lo/DN;

    .line 121
    invoke-virtual {p0}, Lo/Dl;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v3, p0, Lo/Dl;->d:Lo/DN;

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    .line 124
    iget-object v5, p0, Lo/Dl;->f:Lo/MultiAutoCompleteTextView$Application;

    invoke-virtual {v4, v5}, Lo/DN;->e(Lo/MultiAutoCompleteTextView$Application;)V

    .line 125
    :cond_3
    iget-object v4, p0, Lo/Dl;->d:Lo/DN;

    if-eqz v4, :cond_4

    xor-int/2addr p1, v3

    invoke-virtual {v4, p1}, Lo/DN;->e(Z)V

    .line 129
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lo/Dl;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;->d()V

    if-eq v0, v1, :cond_5

    .line 133
    invoke-virtual {p0, v0, v2}, Lo/Dl;->d(II)V

    :cond_5
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lo/Dl;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public d(II)V
    .locals 2

    .line 88
    invoke-virtual {p0}, Lo/Dl;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    .line 89
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 90
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->e(II)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lo/Dl;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public e(II)V
    .locals 0

    add-int/lit8 p2, p2, -0x14

    if-ne p1, p2, :cond_0

    .line 83
    sget-object p1, Lo/FP$TaskDescription;->c:Lo/FP$TaskDescription;

    invoke-virtual {p0, p1}, Lo/Dl;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 46
    invoke-virtual {p0}, Lo/Dl;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    invoke-virtual {p0}, Lo/Dl;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lo/Dl;->d:Lo/DN;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 48
    invoke-virtual {p0}, Lo/Dl;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lo/Dl;->h:Landroidx/recyclerview/widget/LinearLayoutManager;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 49
    invoke-virtual {p0}, Lo/Dl;->i()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public i()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/Dl;->e:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 99
    iget-object v0, p0, Lo/Dl;->d:Lo/DN;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DN;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method
