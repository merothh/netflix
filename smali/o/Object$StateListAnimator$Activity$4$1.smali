.class Lo/Object$StateListAnimator$Activity$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Object$StateListAnimator$Activity$4;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Object$StateListAnimator$Activity$4;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lo/Object$StateListAnimator$Activity$4;I)V
    .locals 0

    .line 2799
    iput-object p1, p0, Lo/Object$StateListAnimator$Activity$4$1;->d:Lo/Object$StateListAnimator$Activity$4;

    iput p2, p0, Lo/Object$StateListAnimator$Activity$4$1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2802
    iget-object v0, p0, Lo/Object$StateListAnimator$Activity$4$1;->d:Lo/Object$StateListAnimator$Activity$4;

    iget-object v0, v0, Lo/Object$StateListAnimator$Activity$4;->d:Lo/Object$StateListAnimator$Activity;

    iget-object v0, v0, Lo/Object$StateListAnimator$Activity;->b:Lo/Object$StateListAnimator;

    iget-object v0, v0, Lo/Object$StateListAnimator;->i:Lo/Object$LoaderManager;

    if-eqz v0, :cond_0

    .line 2803
    iget-object v0, p0, Lo/Object$StateListAnimator$Activity$4$1;->d:Lo/Object$StateListAnimator$Activity$4;

    iget-object v0, v0, Lo/Object$StateListAnimator$Activity$4;->d:Lo/Object$StateListAnimator$Activity;

    iget-object v0, v0, Lo/Object$StateListAnimator$Activity;->b:Lo/Object$StateListAnimator;

    iget-object v0, v0, Lo/Object$StateListAnimator;->i:Lo/Object$LoaderManager;

    iget v1, p0, Lo/Object$StateListAnimator$Activity$4$1;->e:I

    invoke-virtual {v0, v1}, Lo/Object$LoaderManager;->c(I)V

    :cond_0
    return-void
.end method