.class Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:Z

.field d:Z

.field e:I

.field final synthetic h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

.field i:[I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V
    .locals 0

    .line 3267
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3268
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->b()V

    return-void
.end method


# virtual methods
.method b()V
    .locals 2

    const/4 v0, -0x1

    .line 3272
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->e:I

    const/high16 v1, -0x80000000

    .line 3273
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->b:I

    const/4 v1, 0x0

    .line 3274
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->d:Z

    .line 3275
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->a:Z

    .line 3276
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->c:Z

    .line 3277
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->i:[I

    if-eqz v1, :cond_0

    .line 3278
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method

.method d()V
    .locals 1

    .line 3294
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lo/VerifyError;

    invoke-virtual {v0}, Lo/VerifyError;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lo/VerifyError;

    .line 3295
    invoke-virtual {v0}, Lo/VerifyError;->a()I

    move-result v0

    :goto_0
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->b:I

    return-void
.end method

.method d(I)V
    .locals 1

    .line 3299
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->d:Z

    if-eqz v0, :cond_0

    .line 3300
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lo/VerifyError;

    invoke-virtual {v0}, Lo/VerifyError;->b()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->b:I

    goto :goto_0

    .line 3302
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c:Lo/VerifyError;

    invoke-virtual {v0}, Lo/VerifyError;->a()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->b:I

    :goto_0
    return-void
.end method

.method e([Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Application;)V
    .locals 5

    .line 3283
    array-length v0, p1

    .line 3284
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->i:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 3285
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Application;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->i:[I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3289
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$TaskDescription;->i:[I

    aget-object v3, p1, v1

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Application;->c(I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method