.class Lo/ViewTreeObserver$StateListAnimator$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ViewTreeObserver$StateListAnimator;->callbackFailAsync(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Lo/ViewTreeObserver$StateListAnimator;


# direct methods
.method constructor <init>(Lo/ViewTreeObserver$StateListAnimator;I)V
    .locals 0

    .line 289
    iput-object p1, p0, Lo/ViewTreeObserver$StateListAnimator$2;->e:Lo/ViewTreeObserver$StateListAnimator;

    iput p2, p0, Lo/ViewTreeObserver$StateListAnimator$2;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 292
    iget-object v0, p0, Lo/ViewTreeObserver$StateListAnimator$2;->e:Lo/ViewTreeObserver$StateListAnimator;

    iget v1, p0, Lo/ViewTreeObserver$StateListAnimator$2;->d:I

    invoke-virtual {v0, v1}, Lo/ViewTreeObserver$StateListAnimator;->onFontRetrievalFailed(I)V

    return-void
.end method
