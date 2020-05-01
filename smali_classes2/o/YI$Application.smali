.class public final Lo/YI$Application;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/YI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/YI$Application$Activity;
    }
.end annotation


# instance fields
.field final synthetic c:Lo/YI;

.field private final d:Lo/YI$Application$Activity;

.field private final e:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lo/YI;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lo/YI$Application;->c:Lo/YI;

    sget-object p1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 206
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 149
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance p1, Lo/YI$Application$Activity;

    const/high16 v0, 0x42b40000    # 90.0f

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-direct {p1, p0, v0, v1}, Lo/YI$Application$Activity;-><init>(Lo/YI$Application;FF)V

    iput-object p1, p0, Lo/YI$Application;->d:Lo/YI$Application$Activity;

    .line 155
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 156
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    iget-object v0, p0, Lo/YI$Application;->c:Lo/YI;

    invoke-static {v0}, Lo/YI;->c(Lo/YI;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->ap:I

    .line 207
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 208
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 207
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 158
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    iput-object p1, p0, Lo/YI$Application;->e:Landroid/graphics/Paint;

    return-void
.end method

.method public static final synthetic d(Lo/YI$Application;)Landroid/graphics/Paint;
    .locals 0

    .line 149
    iget-object p0, p0, Lo/YI$Application;->e:Landroid/graphics/Paint;

    return-object p0
.end method


# virtual methods
.method public final c()Lo/YI$Application$Activity;
    .locals 1

    .line 150
    iget-object v0, p0, Lo/YI$Application;->d:Lo/YI$Application$Activity;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 165
    iget-object v0, p0, Lo/YI$Application;->d:Lo/YI$Application$Activity;

    invoke-virtual {v0, p1}, Lo/YI$Application$Activity;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 169
    iget-object v0, p0, Lo/YI$Application;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lo/YI$Application;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
