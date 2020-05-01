.class public Lo/RectEvaluator;
.super Lo/AnimatorRes;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AnimatorRes<",
        "Lcom/airbnb/lottie/model/DocumentData;",
        "Lcom/airbnb/lottie/model/DocumentData;",
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
            "Lcom/airbnb/lottie/model/DocumentData;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lo/AnimatorRes;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Lo/AnimatorListenerAdapter;
    .locals 2

    .line 16
    new-instance v0, Lo/AnimatorListenerAdapter;

    iget-object v1, p0, Lo/RectEvaluator;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Lo/AnimatorListenerAdapter;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic c()Z
    .locals 1

    .line 9
    invoke-super {p0}, Lo/AnimatorRes;->c()Z

    move-result v0

    return v0
.end method

.method public synthetic d()Lo/AccountManagerInternal;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lo/RectEvaluator;->a()Lo/AnimatorListenerAdapter;

    move-result-object v0

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
