.class public Lo/BinaryOperator;
.super Landroidx/recyclerview/widget/RecyclerView$PendingIntent;
.source ""


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lo/BinaryOperator;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lo/BinaryOperator;->e(I)V

    return-void
.end method

.method private a()Z
    .locals 3

    .line 133
    iget-boolean v0, p0, Lo/BinaryOperator;->f:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 134
    iget-boolean v0, p0, Lo/BinaryOperator;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/BinaryOperator;->i:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lo/BinaryOperator;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/BinaryOperator;->g:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    .line 138
    :cond_3
    iget-boolean v0, p0, Lo/BinaryOperator;->d:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lo/BinaryOperator;->c:Z

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private static a(ILandroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-gt v1, p0, :cond_1

    .line 162
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;->d(I)I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView;ILandroidx/recyclerview/widget/RecyclerView$Fragment;)V
    .locals 6

    .line 90
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->getItemCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 91
    :goto_0
    iput-boolean v2, p0, Lo/BinaryOperator;->c:Z

    add-int/lit8 v2, p1, -0x1

    if-ne p2, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 92
    :goto_1
    iput-boolean v2, p0, Lo/BinaryOperator;->b:Z

    .line 93
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->canScrollHorizontally()Z

    move-result v2

    iput-boolean v2, p0, Lo/BinaryOperator;->a:Z

    .line 94
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->canScrollVertically()Z

    move-result v2

    iput-boolean v2, p0, Lo/BinaryOperator;->d:Z

    .line 95
    instance-of v2, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    iput-boolean v2, p0, Lo/BinaryOperator;->f:Z

    .line 97
    iget-boolean v2, p0, Lo/BinaryOperator;->f:Z

    if-eqz v2, :cond_5

    .line 98
    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 99
    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->e()Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;

    move-result-object v2

    .line 100
    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;->d(I)I

    move-result v3

    .line 101
    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->a()I

    move-result p3

    .line 102
    invoke-virtual {v2, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;->e(II)I

    move-result v4

    if-nez v4, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 103
    :goto_2
    iput-boolean v5, p0, Lo/BinaryOperator;->i:Z

    add-int/2addr v4, v3

    if-ne v4, p3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 104
    :goto_3
    iput-boolean v3, p0, Lo/BinaryOperator;->h:Z

    .line 105
    invoke-static {p2, v2, p3}, Lo/BinaryOperator;->a(ILandroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;I)Z

    move-result v3

    iput-boolean v3, p0, Lo/BinaryOperator;->g:Z

    .line 106
    iget-boolean v3, p0, Lo/BinaryOperator;->g:Z

    if-nez v3, :cond_4

    .line 107
    invoke-static {p2, p1, v2, p3}, Lo/BinaryOperator;->c(IILandroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;I)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lo/BinaryOperator;->j:Z

    :cond_5
    return-void
.end method

.method private b()Z
    .locals 3

    .line 124
    iget-boolean v0, p0, Lo/BinaryOperator;->f:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 125
    iget-boolean v0, p0, Lo/BinaryOperator;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/BinaryOperator;->h:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lo/BinaryOperator;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/BinaryOperator;->j:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    .line 129
    :cond_3
    iget-boolean v0, p0, Lo/BinaryOperator;->d:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lo/BinaryOperator;->b:Z

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private c()Z
    .locals 3

    .line 151
    iget-boolean v0, p0, Lo/BinaryOperator;->f:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 152
    iget-boolean v0, p0, Lo/BinaryOperator;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/BinaryOperator;->g:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lo/BinaryOperator;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/BinaryOperator;->i:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    .line 156
    :cond_3
    iget-boolean v0, p0, Lo/BinaryOperator;->a:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lo/BinaryOperator;->c:Z

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private static c(IILandroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;I)Z
    .locals 4

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt p1, p0, :cond_1

    .line 175
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;->d(I)I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, p3, :cond_0

    return v1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static c(Landroidx/recyclerview/widget/RecyclerView$Fragment;Z)Z
    .locals 3

    .line 112
    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 113
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 114
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getLayoutDirection()I

    move-result p0

    if-ne p0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    xor-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method private d()Z
    .locals 3

    .line 142
    iget-boolean v0, p0, Lo/BinaryOperator;->f:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 143
    iget-boolean v0, p0, Lo/BinaryOperator;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/BinaryOperator;->j:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lo/BinaryOperator;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/BinaryOperator;->h:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    .line 147
    :cond_3
    iget-boolean v0, p0, Lo/BinaryOperator;->a:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lo/BinaryOperator;->b:Z

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public e()I
    .locals 1

    .line 46
    iget v0, p0, Lo/BinaryOperator;->e:I

    return v0
.end method

.method public e(I)V
    .locals 0

    .line 41
    iput p1, p0, Lo/BinaryOperator;->e:I

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ComponentName;)V
    .locals 4

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 54
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p4, -0x1

    if-ne p2, p4, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object p4

    .line 61
    invoke-direct {p0, p3, p2, p4}, Lo/BinaryOperator;->b(Landroidx/recyclerview/widget/RecyclerView;ILandroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 63
    invoke-direct {p0}, Lo/BinaryOperator;->c()Z

    move-result p2

    .line 64
    invoke-direct {p0}, Lo/BinaryOperator;->d()Z

    move-result p3

    .line 65
    invoke-direct {p0}, Lo/BinaryOperator;->a()Z

    move-result v0

    .line 66
    invoke-direct {p0}, Lo/BinaryOperator;->b()Z

    move-result v1

    .line 68
    iget-boolean v2, p0, Lo/BinaryOperator;->a:Z

    invoke-static {p4, v2}, Lo/BinaryOperator;->c(Landroidx/recyclerview/widget/RecyclerView$Fragment;Z)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 69
    iget-boolean p4, p0, Lo/BinaryOperator;->a:Z

    if-eqz p4, :cond_1

    move v3, p3

    move p3, p2

    move p2, v3

    goto :goto_0

    :cond_1
    move v3, v1

    move v1, v0

    move v0, v3

    .line 82
    :cond_2
    :goto_0
    iget p4, p0, Lo/BinaryOperator;->e:I

    div-int/lit8 p4, p4, 0x2

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    move p3, p4

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    .line 83
    :goto_1
    iput p3, p1, Landroid/graphics/Rect;->right:I

    if-eqz p2, :cond_4

    move p2, p4

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 84
    :goto_2
    iput p2, p1, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    move p2, p4

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    .line 85
    :goto_3
    iput p2, p1, Landroid/graphics/Rect;->top:I

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 p4, 0x0

    .line 86
    :goto_4
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
