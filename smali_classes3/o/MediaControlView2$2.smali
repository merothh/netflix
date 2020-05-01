.class public final Lo/MediaControlView2$2;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaControlView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/MediaControlView2;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lo/MediaControlView2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lo/MediaControlView2$2;->a:Lo/MediaControlView2;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 115
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/MediaControlView2$2;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outline"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lo/MediaControlView2$2;->b:Landroid/graphics/Rect;

    iget-object v0, p0, Lo/MediaControlView2$2;->a:Lo/MediaControlView2;

    invoke-virtual {v0}, Lo/MediaControlView2;->getPaddingTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 118
    iget-object p1, p0, Lo/MediaControlView2$2;->b:Landroid/graphics/Rect;

    iget-object v0, p0, Lo/MediaControlView2$2;->a:Lo/MediaControlView2;

    invoke-virtual {v0}, Lo/MediaControlView2;->getPaddingLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 119
    iget-object p1, p0, Lo/MediaControlView2$2;->b:Landroid/graphics/Rect;

    iget-object v0, p0, Lo/MediaControlView2$2;->a:Lo/MediaControlView2;

    invoke-virtual {v0}, Lo/MediaControlView2;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lo/MediaControlView2$2;->a:Lo/MediaControlView2;

    invoke-virtual {v1}, Lo/MediaControlView2;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 120
    iget-object p1, p0, Lo/MediaControlView2$2;->b:Landroid/graphics/Rect;

    iget-object v0, p0, Lo/MediaControlView2$2;->a:Lo/MediaControlView2;

    invoke-virtual {v0}, Lo/MediaControlView2;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lo/MediaControlView2$2;->a:Lo/MediaControlView2;

    invoke-virtual {v1}, Lo/MediaControlView2;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 121
    iget-object p1, p0, Lo/MediaControlView2$2;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 122
    iget-object p1, p0, Lo/MediaControlView2$2;->a:Lo/MediaControlView2;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lo/MediaControlView2;->setClipToOutline(Z)V

    return-void
.end method
