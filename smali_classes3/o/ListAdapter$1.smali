.class public final Lo/ListAdapter$1;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ListAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final c:Landroid/graphics/Rect;

.field final synthetic e:Lo/ListAdapter;


# direct methods
.method constructor <init>(Lo/ListAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lo/ListAdapter$1;->e:Lo/ListAdapter;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 213
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/ListAdapter$1;->c:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outline"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lo/ListAdapter$1;->c:Landroid/graphics/Rect;

    iget-object v0, p0, Lo/ListAdapter$1;->e:Lo/ListAdapter;

    invoke-virtual {v0}, Lo/ListAdapter;->getPaddingTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 216
    iget-object p1, p0, Lo/ListAdapter$1;->c:Landroid/graphics/Rect;

    iget-object v0, p0, Lo/ListAdapter$1;->e:Lo/ListAdapter;

    invoke-virtual {v0}, Lo/ListAdapter;->getPaddingLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 217
    iget-object p1, p0, Lo/ListAdapter$1;->c:Landroid/graphics/Rect;

    iget-object v0, p0, Lo/ListAdapter$1;->e:Lo/ListAdapter;

    invoke-virtual {v0}, Lo/ListAdapter;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lo/ListAdapter$1;->e:Lo/ListAdapter;

    invoke-virtual {v1}, Lo/ListAdapter;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 218
    iget-object p1, p0, Lo/ListAdapter$1;->c:Landroid/graphics/Rect;

    iget-object v0, p0, Lo/ListAdapter$1;->e:Lo/ListAdapter;

    invoke-virtual {v0}, Lo/ListAdapter;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lo/ListAdapter$1;->e:Lo/ListAdapter;

    invoke-virtual {v1}, Lo/ListAdapter;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 219
    iget-object p1, p0, Lo/ListAdapter$1;->c:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 220
    iget-object p1, p0, Lo/ListAdapter$1;->e:Lo/ListAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lo/ListAdapter;->setClipToOutline(Z)V

    return-void
.end method
