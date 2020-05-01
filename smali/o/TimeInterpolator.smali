.class public Lo/TimeInterpolator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AnimRes;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/AnimRes<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/LayoutTransition;

.field private final e:Lo/LayoutTransition;


# direct methods
.method public constructor <init>(Lo/LayoutTransition;Lo/LayoutTransition;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lo/TimeInterpolator;->a:Lo/LayoutTransition;

    .line 20
    iput-object p2, p0, Lo/TimeInterpolator;->e:Lo/LayoutTransition;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lo/TimeInterpolator;->a:Lo/LayoutTransition;

    invoke-virtual {v0}, Lo/LayoutTransition;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/TimeInterpolator;->e:Lo/LayoutTransition;

    invoke-virtual {v0}, Lo/LayoutTransition;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Lo/AccountManagerInternal;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/AccountManagerInternal<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lo/AnimationHandler;

    iget-object v1, p0, Lo/TimeInterpolator;->a:Lo/LayoutTransition;

    .line 35
    invoke-virtual {v1}, Lo/LayoutTransition;->d()Lo/AccountManagerInternal;

    move-result-object v1

    iget-object v2, p0, Lo/TimeInterpolator;->e:Lo/LayoutTransition;

    invoke-virtual {v2}, Lo/LayoutTransition;->d()Lo/AccountManagerInternal;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/AnimationHandler;-><init>(Lo/AccountManagerInternal;Lo/AccountManagerInternal;)V

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/ActivityView<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
