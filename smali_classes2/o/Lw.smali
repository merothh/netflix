.class public final Lo/Lw;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Lw$Activity;
    }
.end annotation


# static fields
.field public static final a:Lo/Lw$Activity;


# instance fields
.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private d:F

.field private final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Lw$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Lw$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Lw;->a:Lo/Lw$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lo/Lw;-><init>(IIFILo/amc;)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p3, p0, Lo/Lw;->e:F

    .line 26
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p3, p0, Lo/Lw;->c:Landroid/graphics/Paint;

    .line 27
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p3, p0, Lo/Lw;->b:Landroid/graphics/Paint;

    .line 30
    invoke-virtual {p0, p1}, Lo/Lw;->a(I)V

    .line 31
    invoke-virtual {p0, p2}, Lo/Lw;->d(I)V

    return-void
.end method

.method public synthetic constructor <init>(IIFILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 19
    sget-object p1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 81
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 19
    sget p5, Lcom/netflix/mediaclient/ui/R$Application;->g:I

    invoke-static {p1, p5}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 20
    sget-object p2, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 82
    const-class p2, Landroid/content/Context;

    invoke-static {p2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    .line 20
    sget p5, Lcom/netflix/mediaclient/ui/R$Application;->k:I

    invoke-static {p2, p5}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 21
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lo/Lw;-><init>(IIF)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 35
    iget-object v0, p0, Lo/Lw;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    invoke-virtual {p0}, Lo/Lw;->invalidateSelf()V

    return-void
.end method

.method public final c(F)V
    .locals 0

    .line 46
    iput p1, p0, Lo/Lw;->d:F

    .line 47
    invoke-virtual {p0}, Lo/Lw;->invalidateSelf()V

    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lo/Lw;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    invoke-virtual {p0}, Lo/Lw;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget v0, p0, Lo/Lw;->d:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    .line 67
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 68
    iget v2, p0, Lo/Lw;->e:F

    .line 70
    iget-object v3, p0, Lo/Lw;->b:Landroid/graphics/Paint;

    .line 66
    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 73
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 74
    iget v0, p0, Lo/Lw;->e:F

    .line 76
    iget-object v2, p0, Lo/Lw;->c:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lo/Lw;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 52
    iget-object v0, p0, Lo/Lw;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 53
    invoke-virtual {p0}, Lo/Lw;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lo/Lw;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 60
    iget-object v0, p0, Lo/Lw;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 61
    invoke-virtual {p0}, Lo/Lw;->invalidateSelf()V

    return-void
.end method
