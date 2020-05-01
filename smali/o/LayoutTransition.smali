.class public Lo/LayoutTransition;
.super Lo/AnimatorRes;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AnimatorRes<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/AnimatorRes;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ActivityView<",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .line 16
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
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lo/ChooseAccountActivity;

    iget-object v1, p0, Lo/LayoutTransition;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Lo/ChooseAccountActivity;-><init>(Ljava/util/List;)V

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
