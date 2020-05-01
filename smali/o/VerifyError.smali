.class public abstract Lo/VerifyError;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

.field private b:I

.field final d:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 42
    iput v0, p0, Lo/VerifyError;->b:I

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/VerifyError;->d:Landroid/graphics/Rect;

    .line 47
    iput-object p1, p0, Lo/VerifyError;->a:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Fragment;Lo/VerifyError$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lo/VerifyError;-><init>(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    return-void
.end method

.method public static c(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/VerifyError;
    .locals 1

    .line 356
    new-instance v0, Lo/VerifyError$5;

    invoke-direct {v0, p0}, Lo/VerifyError$5;-><init>(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    return-object v0
.end method

.method public static d(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/VerifyError;
    .locals 1

    .line 258
    new-instance v0, Lo/VerifyError$1;

    invoke-direct {v0, p0}, Lo/VerifyError$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    return-object v0
.end method

.method public static d(Landroidx/recyclerview/widget/RecyclerView$Fragment;I)Lo/VerifyError;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 245
    invoke-static {p0}, Lo/VerifyError;->c(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/VerifyError;

    move-result-object p0

    return-object p0

    .line 247
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 243
    :cond_1
    invoke-static {p0}, Lo/VerifyError;->d(Landroidx/recyclerview/widget/RecyclerView$Fragment;)Lo/VerifyError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Landroid/view/View;)I
.end method

.method public abstract a(I)V
.end method

.method public abstract b()I
.end method

.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract c()I
.end method

.method public abstract c(Landroid/view/View;)I
.end method

.method public d()I
    .locals 2

    .line 78
    iget v0, p0, Lo/VerifyError;->b:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/VerifyError;->j()I

    move-result v0

    iget v1, p0, Lo/VerifyError;->b:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e(Landroid/view/View;)I
.end method

.method public e()V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lo/VerifyError;->j()I

    move-result v0

    iput v0, p0, Lo/VerifyError;->b:I

    return-void
.end method

.method public abstract f()I
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public abstract j()I
.end method

.method public abstract j(Landroid/view/View;)I
.end method
