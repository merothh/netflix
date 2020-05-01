.class public Lo/TimeAnimator;
.super Lo/AnimatorRes;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AnimatorRes<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ActivityView<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lo/AnimatorRes;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Z
    .locals 1

    .line 11
    invoke-super {p0}, Lo/AnimatorRes;->c()Z

    move-result v0

    return v0
.end method

.method public d()Lo/AccountManagerInternal;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/AccountManagerInternal<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Lo/OnAccountsUpdateListener;

    iget-object v1, p0, Lo/TimeAnimator;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Lo/OnAccountsUpdateListener;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic e()Ljava/util/List;
    .locals 1

    .line 11
    invoke-super {p0}, Lo/AnimatorRes;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 11
    invoke-super {p0}, Lo/AnimatorRes;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
