.class Lo/UncheckedIOException$Fragment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/fragment/app/Fragment$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UncheckedIOException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Fragment"
.end annotation


# instance fields
.field final b:Lo/Reader;

.field final d:Z

.field private e:I


# direct methods
.method constructor <init>(Lo/Reader;Z)V
    .locals 0

    .line 3329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3330
    iput-boolean p2, p0, Lo/UncheckedIOException$Fragment;->d:Z

    .line 3331
    iput-object p1, p0, Lo/UncheckedIOException$Fragment;->b:Lo/Reader;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 3390
    iget-object v0, p0, Lo/UncheckedIOException$Fragment;->b:Lo/Reader;

    iget-object v0, v0, Lo/Reader;->c:Lo/UncheckedIOException;

    iget-object v1, p0, Lo/UncheckedIOException$Fragment;->b:Lo/Reader;

    iget-boolean v2, p0, Lo/UncheckedIOException$Fragment;->d:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lo/UncheckedIOException;->d(Lo/Reader;ZZZ)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 3355
    iget v0, p0, Lo/UncheckedIOException$Fragment;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/UncheckedIOException$Fragment;->e:I

    return-void
.end method

.method public c()V
    .locals 1

    .line 3341
    iget v0, p0, Lo/UncheckedIOException$Fragment;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/UncheckedIOException$Fragment;->e:I

    .line 3342
    iget v0, p0, Lo/UncheckedIOException$Fragment;->e:I

    if-eqz v0, :cond_0

    return-void

    .line 3345
    :cond_0
    iget-object v0, p0, Lo/UncheckedIOException$Fragment;->b:Lo/Reader;

    iget-object v0, v0, Lo/Reader;->c:Lo/UncheckedIOException;

    invoke-virtual {v0}, Lo/UncheckedIOException;->o()V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 3362
    iget v0, p0, Lo/UncheckedIOException$Fragment;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 7

    .line 3372
    iget v0, p0, Lo/UncheckedIOException$Fragment;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3373
    :goto_0
    iget-object v3, p0, Lo/UncheckedIOException$Fragment;->b:Lo/Reader;

    iget-object v3, v3, Lo/Reader;->c:Lo/UncheckedIOException;

    .line 3374
    iget-object v4, v3, Lo/UncheckedIOException;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_2

    .line 3376
    iget-object v5, v3, Lo/UncheckedIOException;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    const/4 v6, 0x0

    .line 3377
    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$TaskDescription;)V

    if-eqz v0, :cond_1

    .line 3378
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3379
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->startPostponedEnterTransition()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3382
    :cond_2
    iget-object v1, p0, Lo/UncheckedIOException$Fragment;->b:Lo/Reader;

    iget-object v1, v1, Lo/Reader;->c:Lo/UncheckedIOException;

    iget-object v3, p0, Lo/UncheckedIOException$Fragment;->b:Lo/Reader;

    iget-boolean v4, p0, Lo/UncheckedIOException$Fragment;->d:Z

    xor-int/2addr v0, v2

    invoke-virtual {v1, v3, v4, v0, v2}, Lo/UncheckedIOException;->d(Lo/Reader;ZZZ)V

    return-void
.end method
