.class public Lo/ColorInt;
.super Lo/CheckResult;
.source ""


# instance fields
.field private final a:Lo/SecretKeySpec;


# direct methods
.method constructor <init>(Lo/DESKeySpec;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 3

    .line 21
    invoke-direct {p0, p1, p2}, Lo/CheckResult;-><init>(Lo/DESKeySpec;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 24
    new-instance v0, Lo/BytesLong;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->k()Ljava/util/List;

    move-result-object p2

    const-string v1, "__container"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lo/BytesLong;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 25
    new-instance p2, Lo/SecretKeySpec;

    invoke-direct {p2, p1, p0, v0}, Lo/SecretKeySpec;-><init>(Lo/DESKeySpec;Lo/CheckResult;Lo/BytesLong;)V

    iput-object p2, p0, Lo/ColorInt;->a:Lo/SecretKeySpec;

    .line 26
    iget-object p1, p0, Lo/ColorInt;->a:Lo/SecretKeySpec;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lo/SecretKeySpec;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected b(Lo/IntKeyframeSet;ILjava/util/List;Lo/IntKeyframeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/IntKeyframeSet;",
            "I",
            "Ljava/util/List<",
            "Lo/IntKeyframeSet;",
            ">;",
            "Lo/IntKeyframeSet;",
            ")V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lo/ColorInt;->a:Lo/SecretKeySpec;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/SecretKeySpec;->d(Lo/IntKeyframeSet;ILjava/util/List;Lo/IntKeyframeSet;)V

    return-void
.end method

.method public c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 34
    invoke-super {p0, p1, p2, p3}, Lo/CheckResult;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 35
    iget-object p2, p0, Lo/ColorInt;->a:Lo/SecretKeySpec;

    iget-object v0, p0, Lo/ColorInt;->c:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v0, p3}, Lo/SecretKeySpec;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1

    .line 30
    iget-object v0, p0, Lo/ColorInt;->a:Lo/SecretKeySpec;

    invoke-virtual {v0, p1, p2, p3}, Lo/SecretKeySpec;->e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
