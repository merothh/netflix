.class public final Lo/IHwBinder;
.super Lo/IInterface;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/IHwBinder$Application;
    }
.end annotation


# static fields
.field public static final c:Lo/IHwBinder$Application;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/IHwBinder$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/IHwBinder$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/IHwBinder;->c:Lo/IHwBinder$Application;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "paint"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lo/IInterface;-><init>()V

    iput-object p1, p0, Lo/IHwBinder;->a:Landroid/graphics/Paint;

    .line 26
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lo/IHwBinder;->e:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public b(ZFFFLandroid/graphics/Rect;)V
    .locals 4

    const-string v0, "arrow"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lo/IHwBinder;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 31
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v1, p4, v0

    add-float/2addr v0, p4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    .line 36
    iget-object v3, p0, Lo/IHwBinder;->e:Landroid/graphics/Path;

    invoke-virtual {v3, v2, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 37
    iget-object v3, p0, Lo/IHwBinder;->e:Landroid/graphics/Path;

    invoke-virtual {v3, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 38
    iget-object v1, p0, Lo/IHwBinder;->e:Landroid/graphics/Path;

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p5

    int-to-float p5, p5

    sub-float p5, p1, p5

    invoke-virtual {v1, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 39
    iget-object p4, p0, Lo/IHwBinder;->e:Landroid/graphics/Path;

    invoke-virtual {p4, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 40
    iget-object p4, p0, Lo/IHwBinder;->e:Landroid/graphics/Path;

    invoke-virtual {p4, p2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 41
    iget-object p1, p0, Lo/IHwBinder;->e:Landroid/graphics/Path;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 42
    iget-object p1, p0, Lo/IHwBinder;->e:Landroid/graphics/Path;

    invoke-virtual {p1, v2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p3, p1

    .line 46
    iget-object p1, p0, Lo/IHwBinder;->e:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 47
    iget-object p1, p0, Lo/IHwBinder;->e:Landroid/graphics/Path;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 48
    iget-object p1, p0, Lo/IHwBinder;->e:Landroid/graphics/Path;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49
    iget-object p1, p0, Lo/IHwBinder;->e:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 50
    iget-object p1, p0, Lo/IHwBinder;->e:Landroid/graphics/Path;

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p3

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 51
    iget-object p1, p0, Lo/IHwBinder;->e:Landroid/graphics/Path;

    invoke-virtual {p1, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    iget-object p1, p0, Lo/IHwBinder;->e:Landroid/graphics/Path;

    invoke-virtual {p1, v2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 54
    :goto_0
    iget-object p1, p0, Lo/IHwBinder;->e:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public final d()Landroid/graphics/Paint;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/IHwBinder;->a:Landroid/graphics/Paint;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lo/IHwBinder;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lo/IHwBinder;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 62
    iget-object v0, p0, Lo/IHwBinder;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lo/IHwBinder;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
