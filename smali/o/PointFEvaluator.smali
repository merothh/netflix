.class public Lo/PointFEvaluator;
.super Lo/AnimatorRes;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AnimatorRes<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
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
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lo/AnimatorRes;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Z
    .locals 1

    .line 9
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
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Lo/ChooseAccountTypeActivity;

    iget-object v1, p0, Lo/PointFEvaluator;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Lo/ChooseAccountTypeActivity;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic e()Ljava/util/List;
    .locals 1

    .line 9
    invoke-super {p0}, Lo/AnimatorRes;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 9
    invoke-super {p0}, Lo/AnimatorRes;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
