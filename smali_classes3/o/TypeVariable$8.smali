.class Lo/TypeVariable$8;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TypeVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/TypeVariable;


# direct methods
.method constructor <init>(Lo/TypeVariable;)V
    .locals 0

    .line 1117
    iput-object p1, p0, Lo/TypeVariable$8;->c:Lo/TypeVariable;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1122
    iget-object p2, p0, Lo/TypeVariable$8;->c:Lo/TypeVariable;

    iget-boolean p2, p2, Lo/TypeVariable;->n:Z

    if-nez p2, :cond_0

    .line 1123
    iget-object p2, p0, Lo/TypeVariable$8;->c:Lo/TypeVariable;

    iget p2, p2, Lo/TypeVariable;->j:I

    iget-object v0, p0, Lo/TypeVariable$8;->c:Lo/TypeVariable;

    iget v0, v0, Lo/TypeVariable;->h:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr p2, v0

    goto :goto_0

    .line 1125
    :cond_0
    iget-object p2, p0, Lo/TypeVariable$8;->c:Lo/TypeVariable;

    iget p2, p2, Lo/TypeVariable;->j:I

    .line 1127
    :goto_0
    iget-object v0, p0, Lo/TypeVariable$8;->c:Lo/TypeVariable;

    iget v0, v0, Lo/TypeVariable;->g:I

    iget-object v1, p0, Lo/TypeVariable$8;->c:Lo/TypeVariable;

    iget v1, v1, Lo/TypeVariable;->g:I

    sub-int/2addr p2, v1

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p2, p2

    add-int/2addr v0, p2

    .line 1128
    iget-object p2, p0, Lo/TypeVariable$8;->c:Lo/TypeVariable;

    iget-object p2, p2, Lo/TypeVariable;->e:Lo/URI;

    invoke-virtual {p2}, Lo/URI;->getTop()I

    move-result p2

    sub-int/2addr v0, p2

    .line 1129
    iget-object p2, p0, Lo/TypeVariable$8;->c:Lo/TypeVariable;

    invoke-virtual {p2, v0}, Lo/TypeVariable;->d(I)V

    .line 1130
    iget-object p2, p0, Lo/TypeVariable$8;->c:Lo/TypeVariable;

    iget-object p2, p2, Lo/TypeVariable;->l:Lo/URL;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lo/URL;->b(F)V

    return-void
.end method
