.class final Lo/HwBlob$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HwBlob;->setOnTooltipClickListener(Lo/HandlerExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/HandlerExecutor;

.field final synthetic c:Lo/HwBlob;


# direct methods
.method constructor <init>(Lo/HwBlob;Lo/HandlerExecutor;)V
    .locals 0

    iput-object p1, p0, Lo/HwBlob$ActionBar;->c:Lo/HwBlob;

    iput-object p2, p0, Lo/HwBlob$ActionBar;->a:Lo/HandlerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 498
    iget-object p1, p0, Lo/HwBlob$ActionBar;->c:Lo/HwBlob;

    invoke-static {p1}, Lo/HwBlob;->d(Lo/HwBlob;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lo/HwBlob$ActionBar;->c:Lo/HwBlob;

    invoke-static {v0}, Lo/HwBlob;->a(Lo/HwBlob;)Landroid/graphics/PointF;

    move-result-object v0

    .line 522
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 499
    iget-object p1, p0, Lo/HwBlob$ActionBar;->a:Lo/HandlerExecutor;

    iget-object v0, p0, Lo/HwBlob$ActionBar;->c:Lo/HwBlob;

    invoke-interface {p1, v0}, Lo/HandlerExecutor;->c(Lo/HwBlob;)V

    goto :goto_0

    .line 501
    :cond_0
    iget-object p1, p0, Lo/HwBlob$ActionBar;->a:Lo/HandlerExecutor;

    iget-object v0, p0, Lo/HwBlob$ActionBar;->c:Lo/HwBlob;

    invoke-interface {p1, v0}, Lo/HandlerExecutor;->e(Lo/HwBlob;)V

    :goto_0
    return-void
.end method
