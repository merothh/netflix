.class Lo/UnsatisfiedLinkError$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UnsatisfiedLinkError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic e:Lo/UnsatisfiedLinkError;


# direct methods
.method constructor <init>(Lo/UnsatisfiedLinkError;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lo/UnsatisfiedLinkError$ActionBar;->e:Lo/UnsatisfiedLinkError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 582
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 583
    iget-object v0, p0, Lo/UnsatisfiedLinkError$ActionBar;->e:Lo/UnsatisfiedLinkError;

    iget-object v0, v0, Lo/UnsatisfiedLinkError;->d:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 584
    iget-object v0, p0, Lo/UnsatisfiedLinkError$ActionBar;->e:Lo/UnsatisfiedLinkError;

    iget-object v0, v0, Lo/UnsatisfiedLinkError;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 585
    iget-object p1, p0, Lo/UnsatisfiedLinkError$ActionBar;->e:Lo/UnsatisfiedLinkError;

    invoke-virtual {p1}, Lo/UnsatisfiedLinkError;->d()V

    return-void
.end method
