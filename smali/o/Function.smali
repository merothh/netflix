.class Lo/Function;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private final b:Landroid/graphics/Rect;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private o:Z


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/Function;->b:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lo/Function;->e:I

    const/4 v1, 0x0

    .line 44
    iput-boolean v1, p0, Lo/Function;->j:Z

    .line 45
    iput-boolean v1, p0, Lo/Function;->i:Z

    .line 46
    iput-boolean v1, p0, Lo/Function;->o:Z

    .line 49
    iput v0, p0, Lo/Function;->l:I

    .line 50
    iput v0, p0, Lo/Function;->k:I

    .line 53
    invoke-virtual {p0, p1}, Lo/Function;->e(I)V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 157
    iget v0, p0, Lo/Function;->c:I

    iget v1, p0, Lo/Function;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/Function;->h:I

    iget v1, p0, Lo/Function;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c()Z
    .locals 5

    .line 145
    iget v0, p0, Lo/Function;->g:I

    iget v1, p0, Lo/Function;->f:I

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 146
    iget v1, p0, Lo/Function;->d:I

    iget v2, p0, Lo/Function;->a:I

    mul-int v1, v1, v2

    .line 147
    iget v2, p0, Lo/Function;->c:I

    iget v3, p0, Lo/Function;->h:I

    mul-int v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v0, :cond_0

    if-lt v2, v0, :cond_1

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private e()Z
    .locals 1

    .line 141
    iget v0, p0, Lo/Function;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lo/Function;->h:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method a(Lo/Consumer;Z)V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lo/Function;->o:Z

    if-nez p2, :cond_0

    .line 103
    invoke-direct {p0}, Lo/Function;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lo/Function;->o:Z

    .line 104
    iget-boolean p2, p0, Lo/Function;->o:Z

    if-eq p2, v0, :cond_2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    .line 106
    invoke-virtual {p1, p2}, Lo/Consumer;->c(I)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x3

    .line 108
    invoke-virtual {p1, p2}, Lo/Consumer;->c(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Z)Z
    .locals 3

    .line 65
    iget-object v0, p0, Lo/Function;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 66
    iget-object v0, p0, Lo/Function;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 67
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lo/Function;->d:I

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lo/Function;->a:I

    .line 69
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p1

    iput p1, p0, Lo/Function;->g:I

    .line 70
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p1

    iput p1, p0, Lo/Function;->f:I

    if-eqz p3, :cond_1

    .line 71
    iget-object p1, p0, Lo/Function;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lo/Function;->c:I

    if-eqz p3, :cond_2

    .line 72
    iget-object p1, p0, Lo/Function;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput p1, p0, Lo/Function;->h:I

    .line 73
    iget p1, p0, Lo/Function;->d:I

    if-lez p1, :cond_3

    iget p1, p0, Lo/Function;->a:I

    if-lez p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method b(Lo/Consumer;Z)V
    .locals 1

    .line 114
    iget-boolean v0, p0, Lo/Function;->j:Z

    if-nez p2, :cond_0

    .line 115
    invoke-direct {p0}, Lo/Function;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lo/Function;->j:Z

    .line 116
    iget-boolean p2, p0, Lo/Function;->j:Z

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    .line 118
    invoke-virtual {p1, p2}, Lo/Consumer;->c(I)V

    :cond_1
    return-void
.end method

.method c(Lo/Consumer;Z)Z
    .locals 4

    .line 125
    iget v0, p0, Lo/Function;->c:I

    iget v1, p0, Lo/Function;->l:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo/Function;->h:I

    iget v1, p0, Lo/Function;->k:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 127
    iget p2, p0, Lo/Function;->d:I

    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float p2, v0, p2

    iget v1, p0, Lo/Function;->c:I

    int-to-float v2, v1

    mul-float p2, p2, v2

    iget v2, p0, Lo/Function;->a:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lo/Function;->h:I

    int-to-float v3, v2

    mul-float v0, v0, v3

    invoke-virtual {p1, p2, v0, v1, v2}, Lo/Consumer;->e(FFII)V

    .line 133
    :cond_2
    iget p1, p0, Lo/Function;->c:I

    iput p1, p0, Lo/Function;->l:I

    .line 134
    iget p1, p0, Lo/Function;->h:I

    iput p1, p0, Lo/Function;->k:I

    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method d()I
    .locals 1

    .line 77
    iget v0, p0, Lo/Function;->e:I

    return v0
.end method

.method d(I)V
    .locals 1

    .line 161
    iget v0, p0, Lo/Function;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/Function;->e:I

    return-void
.end method

.method e(I)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lo/Function;->j:Z

    .line 82
    iput-boolean v0, p0, Lo/Function;->i:Z

    .line 83
    iput-boolean v0, p0, Lo/Function;->o:Z

    .line 84
    iput p1, p0, Lo/Function;->e:I

    const/4 p1, -0x1

    .line 85
    iput p1, p0, Lo/Function;->l:I

    .line 86
    iput p1, p0, Lo/Function;->k:I

    return-void
.end method

.method e(Lo/Consumer;Z)V
    .locals 3

    .line 90
    iget-boolean v0, p0, Lo/Function;->i:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 91
    invoke-direct {p0}, Lo/Function;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lo/Function;->i:Z

    .line 92
    iget-boolean p2, p0, Lo/Function;->i:Z

    if-eq p2, v0, :cond_2

    if-eqz p2, :cond_1

    .line 94
    invoke-virtual {p1, v2}, Lo/Consumer;->c(I)V

    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {p1, v1}, Lo/Consumer;->c(I)V

    :cond_2
    :goto_1
    return-void
.end method
