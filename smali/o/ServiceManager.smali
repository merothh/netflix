.class public Lo/ServiceManager;
.super Lo/UnsupportedClassVersionError;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ServiceManager$StateListAnimator;
    }
.end annotation


# instance fields
.field private final a:I

.field private c:Lo/VerifyError;

.field private final d:Lo/ServiceManager$StateListAnimator;

.field private e:Lo/VerifyError;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroidx/recyclerview/widget/RecyclerView;

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lo/ServiceManager;-><init>(ILo/ServiceManager$StateListAnimator;)V

    return-void
.end method

.method public constructor <init>(ILo/ServiceManager$StateListAnimator;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Lo/UnsupportedClassVersionError;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lo/ServiceManager;->g:I

    .line 56
    new-instance v0, Lo/ServiceManager$4;

    invoke-direct {v0, p0}, Lo/ServiceManager$4;-><init>(Lo/ServiceManager;)V

    iput-object v0, p0, Lo/ServiceManager;->o:Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    const v0, 0x800003

    if-eq p1, v0, :cond_1

    const v0, 0x800005

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_1

    const/16 v0, 0x30

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid gravity value. Use START | END | BOTTOM | TOP | CENTER constants"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_1
    :goto_0
    iput-object p2, p0, Lo/ServiceManager;->d:Lo/ServiceManager$StateListAnimator;

    .line 94
    iput p1, p0, Lo/ServiceManager;->a:I

    return-void
.end method

.method static synthetic a(Lo/ServiceManager;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 32
    iget-object p0, p0, Lo/ServiceManager;->j:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private b(Landroid/view/View;Lo/VerifyError;Z)I
    .locals 1

    .line 202
    invoke-static {p1}, Lo/ServiceManager;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const/4 p3, 0x1

    .line 203
    invoke-direct {p0, p1, p2, p3}, Lo/ServiceManager;->e(Landroid/view/View;Lo/VerifyError;Z)I

    move-result p1

    return p1

    .line 206
    :cond_0
    invoke-virtual {p2, p1}, Lo/VerifyError;->e(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, Lo/VerifyError;->a()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method static synthetic b(Lo/ServiceManager;)I
    .locals 0

    .line 32
    iget p0, p0, Lo/ServiceManager;->m:I

    return p0
.end method

.method static synthetic b(Lo/ServiceManager;I)I
    .locals 0

    .line 32
    iput p1, p0, Lo/ServiceManager;->n:I

    return p1
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$Fragment;Lo/VerifyError;)Landroid/view/View;
    .locals 6

    .line 231
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 232
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->h()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 238
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 245
    invoke-static {v2}, Lo/ServiceManager;->e(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 246
    invoke-virtual {p2}, Lo/VerifyError;->j()I

    move-result v3

    invoke-virtual {p2, v2}, Lo/VerifyError;->e(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 247
    invoke-virtual {p2, v2}, Lo/VerifyError;->b(Landroid/view/View;)I

    move-result p2

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {p2, v2}, Lo/VerifyError;->d(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    .line 250
    invoke-virtual {p2, v2}, Lo/VerifyError;->b(Landroid/view/View;)I

    move-result p2

    :goto_0
    int-to-float p2, p2

    div-float/2addr v3, p2

    .line 255
    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 256
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->k()I

    move-result p2

    .line 257
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getItemCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne p2, v4, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    if-nez p2, :cond_3

    return-object v2

    :cond_3
    if-eqz p2, :cond_4

    return-object v1

    :cond_4
    add-int/2addr v0, v5

    .line 266
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v1
.end method

.method static synthetic c(Lo/ServiceManager;)I
    .locals 0

    .line 32
    iget p0, p0, Lo/ServiceManager;->n:I

    return p0
.end method

.method static synthetic c(Lo/ServiceManager;I)I
    .locals 0

    .line 32
    iput p1, p0, Lo/ServiceManager;->m:I

    return p1
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$Fragment;Lo/VerifyError;)Landroid/view/View;
    .locals 6

    .line 276
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 277
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->n()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 283
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 287
    invoke-static {v2}, Lo/ServiceManager;->e(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    invoke-virtual {p2, v2}, Lo/VerifyError;->d(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    .line 289
    invoke-virtual {p2, v2}, Lo/VerifyError;->b(Landroid/view/View;)I

    move-result p2

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {p2}, Lo/VerifyError;->j()I

    move-result v3

    invoke-virtual {p2, v2}, Lo/VerifyError;->e(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 292
    invoke-virtual {p2, v2}, Lo/VerifyError;->b(Landroid/view/View;)I

    move-result p2

    :goto_0
    int-to-float p2, p2

    div-float/2addr v3, p2

    .line 297
    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 298
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->m()I

    move-result p2

    const/4 v4, 0x1

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    if-nez p2, :cond_3

    return-object v2

    :cond_3
    if-eqz p2, :cond_4

    return-object v1

    :cond_4
    sub-int/2addr v0, v4

    .line 306
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v1
.end method

.method static synthetic d(Lo/ServiceManager;)I
    .locals 0

    .line 32
    iget p0, p0, Lo/ServiceManager;->h:I

    return p0
.end method

.method private e(Landroid/view/View;Lo/VerifyError;Z)I
    .locals 1

    .line 214
    invoke-static {p1}, Lo/ServiceManager;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const/4 p3, 0x1

    .line 215
    invoke-direct {p0, p1, p2, p3}, Lo/ServiceManager;->b(Landroid/view/View;Lo/VerifyError;Z)I

    move-result p1

    return p1

    .line 218
    :cond_0
    invoke-virtual {p2, p1}, Lo/VerifyError;->d(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, Lo/VerifyError;->b()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method static synthetic e(Lo/ServiceManager;I)I
    .locals 0

    .line 32
    iput p1, p0, Lo/ServiceManager;->g:I

    return p1
.end method

.method static synthetic e(Lo/ServiceManager;)Lo/ServiceManager$StateListAnimator;
    .locals 0

    .line 32
    iget-object p0, p0, Lo/ServiceManager;->d:Lo/ServiceManager$StateListAnimator;

    return-object p0
.end method

.method private e(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/VerifyError;
    .locals 1

    .line 313
    iget-object v0, p0, Lo/ServiceManager;->e:Lo/VerifyError;

    if-nez v0, :cond_0

    .line 314
    invoke-static {p1}, Lo/VerifyError;->d(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/VerifyError;

    move-result-object p1

    iput-object p1, p0, Lo/ServiceManager;->e:Lo/VerifyError;

    .line 316
    :cond_0
    iget-object p1, p0, Lo/ServiceManager;->e:Lo/VerifyError;

    return-object p1
.end method

.method private static e(Landroid/view/View;)Z
    .locals 1

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic f(Lo/ServiceManager;)I
    .locals 0

    .line 32
    iget p0, p0, Lo/ServiceManager;->i:I

    return p0
.end method

.method static synthetic g(Lo/ServiceManager;)I
    .locals 0

    .line 32
    iget p0, p0, Lo/ServiceManager;->f:I

    return p0
.end method

.method static synthetic i(Lo/ServiceManager;)I
    .locals 0

    .line 32
    iget p0, p0, Lo/ServiceManager;->l:I

    return p0
.end method

.method private i(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/VerifyError;
    .locals 1

    .line 320
    iget-object v0, p0, Lo/ServiceManager;->c:Lo/VerifyError;

    if-nez v0, :cond_0

    .line 321
    invoke-static {p1}, Lo/VerifyError;->c(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/VerifyError;

    move-result-object p1

    iput-object p1, p0, Lo/ServiceManager;->c:Lo/VerifyError;

    .line 323
    :cond_0
    iget-object p1, p0, Lo/ServiceManager;->c:Lo/VerifyError;

    return-object p1
.end method

.method static synthetic j(Lo/ServiceManager;)I
    .locals 0

    .line 32
    iget p0, p0, Lo/ServiceManager;->g:I

    return p0
.end method


# virtual methods
.method protected a(Landroidx/recyclerview/widget/RecyclerView$Fragment;II)I
    .locals 0

    .line 158
    invoke-super {p0, p1, p2, p3}, Lo/UnsupportedClassVersionError;->d(Landroidx/recyclerview/widget/RecyclerView$Fragment;II)I

    move-result p1

    return p1
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Landroid/view/View;
    .locals 5

    .line 164
    invoke-virtual {p0, p1}, Lo/ServiceManager;->b(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "findSnapView mSnappedPosition = %s"

    const-string v4, "GravitySnapHelper"

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lo/ServiceManager;->n:I

    new-array p1, v2, [Ljava/lang/Object;

    .line 167
    iget v2, p0, Lo/ServiceManager;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-static {v4, v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 169
    iput p1, p0, Lo/ServiceManager;->n:I

    new-array p1, v2, [Ljava/lang/Object;

    .line 170
    iget v2, p0, Lo/ServiceManager;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-static {v4, v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-object v0
.end method

.method protected b(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Landroid/view/View;
    .locals 2

    .line 178
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_5

    .line 179
    iget v0, p0, Lo/ServiceManager;->a:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_4

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    const/16 v1, 0x50

    if-eq v0, v1, :cond_2

    const v1, 0x800003

    if-eq v0, v1, :cond_1

    const v1, 0x800005

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-direct {p0, p1}, Lo/ServiceManager;->e(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/VerifyError;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/ServiceManager;->c(Landroidx/recyclerview/widget/RecyclerView$Fragment;Lo/VerifyError;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 184
    :cond_1
    invoke-direct {p0, p1}, Lo/ServiceManager;->e(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/VerifyError;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/ServiceManager;->b(Landroidx/recyclerview/widget/RecyclerView$Fragment;Lo/VerifyError;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 193
    :cond_2
    invoke-direct {p0, p1}, Lo/ServiceManager;->i(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/VerifyError;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/ServiceManager;->c(Landroidx/recyclerview/widget/RecyclerView$Fragment;Lo/VerifyError;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 190
    :cond_3
    invoke-direct {p0, p1}, Lo/ServiceManager;->i(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/VerifyError;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/ServiceManager;->b(Landroidx/recyclerview/widget/RecyclerView$Fragment;Lo/VerifyError;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 181
    :cond_4
    invoke-super {p0, p1}, Lo/UnsupportedClassVersionError;->a(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$Fragment;Landroid/view/View;)[I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 123
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->canScrollHorizontally()Z

    move-result v1

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 124
    iget v1, p0, Lo/ServiceManager;->a:I

    if-ne v1, v2, :cond_0

    .line 125
    invoke-super {p0, p1, p2}, Lo/UnsupportedClassVersionError;->b(Landroidx/recyclerview/widget/RecyclerView$Fragment;Landroid/view/View;)[I

    move-result-object p1

    return-object p1

    :cond_0
    const v4, 0x800003

    if-ne v1, v4, :cond_1

    .line 127
    invoke-direct {p0, p1}, Lo/ServiceManager;->e(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/VerifyError;

    move-result-object v1

    invoke-direct {p0, p2, v1, v3}, Lo/ServiceManager;->b(Landroid/view/View;Lo/VerifyError;Z)I

    move-result v1

    aput v1, v0, v3

    goto :goto_0

    .line 129
    :cond_1
    invoke-direct {p0, p1}, Lo/ServiceManager;->e(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/VerifyError;

    move-result-object v1

    invoke-direct {p0, p2, v1, v3}, Lo/ServiceManager;->e(Landroid/view/View;Lo/VerifyError;Z)I

    move-result v1

    aput v1, v0, v3

    goto :goto_0

    :cond_2
    aput v3, v0, v3

    .line 135
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->canScrollVertically()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    .line 136
    iget v1, p0, Lo/ServiceManager;->a:I

    if-ne v1, v2, :cond_3

    .line 137
    invoke-super {p0, p1, p2}, Lo/UnsupportedClassVersionError;->b(Landroidx/recyclerview/widget/RecyclerView$Fragment;Landroid/view/View;)[I

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v2, 0x30

    if-ne v1, v2, :cond_4

    .line 139
    invoke-direct {p0, p1}, Lo/ServiceManager;->i(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/VerifyError;

    move-result-object p1

    invoke-direct {p0, p2, p1, v3}, Lo/ServiceManager;->b(Landroid/view/View;Lo/VerifyError;Z)I

    move-result p1

    aput p1, v0, v4

    goto :goto_1

    .line 141
    :cond_4
    invoke-direct {p0, p1}, Lo/ServiceManager;->i(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/VerifyError;

    move-result-object p1

    invoke-direct {p0, p2, p1, v3}, Lo/ServiceManager;->e(Landroid/view/View;Lo/VerifyError;Z)I

    move-result p1

    aput p1, v0, v4

    goto :goto_1

    :cond_5
    aput v3, v0, v4

    :goto_1
    return-object v0
.end method

.method protected c(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/UnknownError;
    .locals 1

    .line 341
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$ComponentCallbacks2$ActionBar;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 345
    :cond_0
    new-instance p1, Lo/ServiceManager$5;

    iget-object v0, p0, Lo/ServiceManager;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lo/ServiceManager$5;-><init>(Lo/ServiceManager;Landroid/content/Context;)V

    return-object p1
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView;IIII)V
    .locals 1

    .line 106
    iput-object p1, p0, Lo/ServiceManager;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    iget-object p1, p0, Lo/ServiceManager;->j:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lo/ServiceManager;->o:Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    .line 109
    iput p2, p0, Lo/ServiceManager;->f:I

    .line 110
    iput p3, p0, Lo/ServiceManager;->h:I

    .line 111
    iput p4, p0, Lo/ServiceManager;->i:I

    .line 112
    iput p5, p0, Lo/ServiceManager;->l:I

    .line 115
    :cond_0
    iget-object p1, p0, Lo/ServiceManager;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-super {p0, p1}, Lo/UnsupportedClassVersionError;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView$Fragment;II)I
    .locals 0

    .line 152
    invoke-virtual {p0, p1, p2, p3}, Lo/ServiceManager;->a(Landroidx/recyclerview/widget/RecyclerView$Fragment;II)I

    move-result p1

    iput p1, p0, Lo/ServiceManager;->n:I

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 153
    iget p2, p0, Lo/ServiceManager;->n:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "GravitySnapHelper"

    const-string p3, "findTargetSnapPosition mSnappedPosition = %s"

    invoke-static {p2, p3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 154
    iget p1, p0, Lo/ServiceManager;->n:I

    return p1
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6

    const/16 v2, 0x28

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 102
    invoke-virtual/range {v0 .. v5}, Lo/ServiceManager;->c(Landroidx/recyclerview/widget/RecyclerView;IIII)V

    return-void
.end method
