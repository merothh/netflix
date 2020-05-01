.class Lo/TypeVariable$5;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TypeVariable;->e(II)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/TypeVariable;

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(Lo/TypeVariable;II)V
    .locals 0

    .line 499
    iput-object p1, p0, Lo/TypeVariable$5;->a:Lo/TypeVariable;

    iput p2, p0, Lo/TypeVariable$5;->c:I

    iput p3, p0, Lo/TypeVariable$5;->b:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 502
    iget-object p2, p0, Lo/TypeVariable$5;->a:Lo/TypeVariable;

    iget-object p2, p2, Lo/TypeVariable;->l:Lo/URL;

    iget v0, p0, Lo/TypeVariable$5;->c:I

    int-to-float v1, v0

    iget v2, p0, Lo/TypeVariable$5;->b:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    invoke-virtual {p2, p1}, Lo/URL;->setAlpha(I)V

    return-void
.end method
