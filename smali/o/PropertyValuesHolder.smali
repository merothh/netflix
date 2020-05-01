.class public Lo/PropertyValuesHolder;
.super Lo/AnimatorRes;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AnimatorRes<",
        "Lo/ActivityTransitionCoordinator;",
        "Lo/ActivityTransitionCoordinator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 13
    new-instance v0, Lo/ActivityTransitionCoordinator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Lo/ActivityTransitionCoordinator;-><init>(FF)V

    invoke-direct {p0, v0}, Lo/PropertyValuesHolder;-><init>(Lo/ActivityTransitionCoordinator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ActivityView<",
            "Lo/ActivityTransitionCoordinator;",
            ">;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lo/AnimatorRes;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lo/ActivityTransitionCoordinator;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lo/AnimatorRes;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Z
    .locals 1

    .line 10
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
            "Lo/ActivityTransitionCoordinator;",
            "Lo/ActivityTransitionCoordinator;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lo/OperationCanceledException;

    iget-object v1, p0, Lo/PropertyValuesHolder;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Lo/OperationCanceledException;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic e()Ljava/util/List;
    .locals 1

    .line 10
    invoke-super {p0}, Lo/AnimatorRes;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-super {p0}, Lo/AnimatorRes;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
