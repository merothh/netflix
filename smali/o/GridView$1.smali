.class public final Lo/GridView$1;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final b:Landroid/graphics/Rect;

.field final synthetic c:Lo/GridView;


# direct methods
.method constructor <init>(Lo/GridView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lo/GridView$1;->c:Lo/GridView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 143
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/GridView$1;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outline"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lo/GridView$1;->b:Landroid/graphics/Rect;

    iget-object v0, p0, Lo/GridView$1;->c:Lo/GridView;

    invoke-virtual {v0}, Lo/GridView;->getPaddingTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 147
    iget-object p1, p0, Lo/GridView$1;->b:Landroid/graphics/Rect;

    iget-object v0, p0, Lo/GridView$1;->c:Lo/GridView;

    invoke-virtual {v0}, Lo/GridView;->getPaddingLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 148
    iget-object p1, p0, Lo/GridView$1;->b:Landroid/graphics/Rect;

    iget-object v0, p0, Lo/GridView$1;->c:Lo/GridView;

    invoke-virtual {v0}, Lo/GridView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lo/GridView$1;->c:Lo/GridView;

    invoke-virtual {v1}, Lo/GridView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 149
    iget-object p1, p0, Lo/GridView$1;->b:Landroid/graphics/Rect;

    iget-object v0, p0, Lo/GridView$1;->c:Lo/GridView;

    invoke-virtual {v0}, Lo/GridView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lo/GridView$1;->c:Lo/GridView;

    invoke-virtual {v1}, Lo/GridView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 150
    iget-object p1, p0, Lo/GridView$1;->c:Lo/GridView;

    invoke-virtual {p1}, Lo/GridView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lo/GridView$1;->c:Lo/GridView;

    invoke-static {v0}, Lo/GridView;->c(Lo/GridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lo/GridView$1;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lo/GridView$1;->c:Lo/GridView;

    invoke-static {v0}, Lo/GridView;->d(Lo/GridView;)F

    move-result v0

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 158
    iget-object v0, p0, Lo/GridView$1;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lo/GridView$1;->c:Lo/GridView;

    invoke-static {v1}, Lo/GridView;->d(Lo/GridView;)F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lo/GridView$1;->b:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    :goto_0
    const/4 v1, 0x1

    .line 167
    :cond_2
    invoke-virtual {p1, v1}, Lo/GridView;->setClipToOutline(Z)V

    return-void
.end method
