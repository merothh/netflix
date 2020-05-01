.class Lo/TypeVariable$3;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TypeVariable;->e(Landroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/TypeVariable;


# direct methods
.method constructor <init>(Lo/TypeVariable;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lo/TypeVariable$3;->d:Lo/TypeVariable;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 481
    iget-object p2, p0, Lo/TypeVariable$3;->d:Lo/TypeVariable;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lo/TypeVariable;->d(F)V

    return-void
.end method
