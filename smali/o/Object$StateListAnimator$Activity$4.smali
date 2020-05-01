.class Lo/Object$StateListAnimator$Activity$4;
.super Lo/InstantiationError;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Object$StateListAnimator$Activity;->d(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Object$StateListAnimator$Activity;


# direct methods
.method constructor <init>(Lo/Object$StateListAnimator$Activity;III)V
    .locals 0

    .line 2796
    iput-object p1, p0, Lo/Object$StateListAnimator$Activity$4;->d:Lo/Object$StateListAnimator$Activity;

    invoke-direct {p0, p2, p3, p4}, Lo/InstantiationError;-><init>(III)V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 2

    .line 2799
    iget-object v0, p0, Lo/Object$StateListAnimator$Activity$4;->d:Lo/Object$StateListAnimator$Activity;

    iget-object v0, v0, Lo/Object$StateListAnimator$Activity;->b:Lo/Object$StateListAnimator;

    iget-object v0, v0, Lo/Object$StateListAnimator;->a:Lo/Object$StateListAnimator$Application;

    new-instance v1, Lo/Object$StateListAnimator$Activity$4$1;

    invoke-direct {v1, p0, p1}, Lo/Object$StateListAnimator$Activity$4$1;-><init>(Lo/Object$StateListAnimator$Activity$4;I)V

    invoke-virtual {v0, v1}, Lo/Object$StateListAnimator$Application;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(I)V
    .locals 2

    .line 2811
    iget-object v0, p0, Lo/Object$StateListAnimator$Activity$4;->d:Lo/Object$StateListAnimator$Activity;

    iget-object v0, v0, Lo/Object$StateListAnimator$Activity;->b:Lo/Object$StateListAnimator;

    iget-object v0, v0, Lo/Object$StateListAnimator;->a:Lo/Object$StateListAnimator$Application;

    new-instance v1, Lo/Object$StateListAnimator$Activity$4$2;

    invoke-direct {v1, p0, p1}, Lo/Object$StateListAnimator$Activity$4$2;-><init>(Lo/Object$StateListAnimator$Activity$4;I)V

    invoke-virtual {v0, v1}, Lo/Object$StateListAnimator$Application;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
