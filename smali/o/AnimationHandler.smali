.class public Lo/AnimationHandler;
.super Lo/AccountManagerInternal;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AccountManagerInternal<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/graphics/PointF;

.field private final e:Lo/AccountManagerInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AccountManagerInternal<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/AccountManagerInternal;Lo/AccountManagerInternal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AccountManagerInternal<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Lo/AccountManagerInternal<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/AccountManagerInternal;-><init>(Ljava/util/List;)V

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lo/AnimationHandler;->b:Landroid/graphics/PointF;

    .line 19
    iput-object p1, p0, Lo/AnimationHandler;->a:Lo/AccountManagerInternal;

    .line 20
    iput-object p2, p0, Lo/AnimationHandler;->e:Lo/AccountManagerInternal;

    .line 22
    invoke-virtual {p0}, Lo/AnimationHandler;->i()F

    move-result p1

    invoke-virtual {p0, p1}, Lo/AnimationHandler;->c(F)V

    return-void
.end method


# virtual methods
.method a(Lo/ActivityView;F)Landroid/graphics/PointF;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityView<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 39
    iget-object p1, p0, Lo/AnimationHandler;->b:Landroid/graphics/PointF;

    return-object p1
.end method

.method synthetic c(Lo/ActivityView;F)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lo/AnimationHandler;->a(Lo/ActivityView;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public c(F)V
    .locals 2

    .line 26
    iget-object v0, p0, Lo/AnimationHandler;->a:Lo/AccountManagerInternal;

    invoke-virtual {v0, p1}, Lo/AccountManagerInternal;->c(F)V

    .line 27
    iget-object v0, p0, Lo/AnimationHandler;->e:Lo/AccountManagerInternal;

    invoke-virtual {v0, p1}, Lo/AccountManagerInternal;->c(F)V

    .line 28
    iget-object p1, p0, Lo/AnimationHandler;->b:Landroid/graphics/PointF;

    iget-object v0, p0, Lo/AnimationHandler;->a:Lo/AccountManagerInternal;

    invoke-virtual {v0}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lo/AnimationHandler;->e:Lo/AccountManagerInternal;

    invoke-virtual {v1}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x0

    .line 29
    :goto_0
    iget-object v0, p0, Lo/AnimationHandler;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 30
    iget-object v0, p0, Lo/AnimationHandler;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AccountManagerInternal$ActionBar;

    invoke-interface {v0}, Lo/AccountManagerInternal$ActionBar;->e()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g()Landroid/graphics/PointF;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, v0, v1}, Lo/AnimationHandler;->a(Lo/ActivityView;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lo/AnimationHandler;->g()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
