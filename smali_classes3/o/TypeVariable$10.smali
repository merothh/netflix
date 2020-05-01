.class Lo/TypeVariable$10;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TypeVariable;->c(ILandroid/view/animation/Animation$AnimationListener;)V
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

    .line 1152
    iput-object p1, p0, Lo/TypeVariable$10;->c:Lo/TypeVariable;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1155
    iget-object p2, p0, Lo/TypeVariable$10;->c:Lo/TypeVariable;

    iget p2, p2, Lo/TypeVariable;->f:F

    iget-object v0, p0, Lo/TypeVariable$10;->c:Lo/TypeVariable;

    iget v0, v0, Lo/TypeVariable;->f:F

    neg-float v0, v0

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    .line 1156
    iget-object v0, p0, Lo/TypeVariable$10;->c:Lo/TypeVariable;

    invoke-virtual {v0, p2}, Lo/TypeVariable;->d(F)V

    .line 1157
    iget-object p2, p0, Lo/TypeVariable$10;->c:Lo/TypeVariable;

    invoke-virtual {p2, p1}, Lo/TypeVariable;->a(F)V

    return-void
.end method
