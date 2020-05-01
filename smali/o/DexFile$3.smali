.class final Lo/DexFile$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DexClassLoader$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DexFile;->b(Landroid/content/Context;Lo/Toast;Lo/ViewTreeObserver$StateListAnimator;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/DexClassLoader$ActionBar<",
        "Lo/DexFile$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/ViewTreeObserver$StateListAnimator;

.field final synthetic e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lo/ViewTreeObserver$StateListAnimator;Landroid/os/Handler;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lo/DexFile$3;->d:Lo/ViewTreeObserver$StateListAnimator;

    iput-object p2, p0, Lo/DexFile$3;->e:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 273
    check-cast p1, Lo/DexFile$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/DexFile$3;->e(Lo/DexFile$StateListAnimator;)V

    return-void
.end method

.method public e(Lo/DexFile$StateListAnimator;)V
    .locals 2

    if-nez p1, :cond_0

    .line 277
    iget-object p1, p0, Lo/DexFile$3;->d:Lo/ViewTreeObserver$StateListAnimator;

    const/4 v0, 0x1

    iget-object v1, p0, Lo/DexFile$3;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lo/ViewTreeObserver$StateListAnimator;->callbackFailAsync(ILandroid/os/Handler;)V

    goto :goto_0

    .line 279
    :cond_0
    iget v0, p1, Lo/DexFile$StateListAnimator;->e:I

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lo/DexFile$3;->d:Lo/ViewTreeObserver$StateListAnimator;

    iget-object p1, p1, Lo/DexFile$StateListAnimator;->a:Landroid/graphics/Typeface;

    iget-object v1, p0, Lo/DexFile$3;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Lo/ViewTreeObserver$StateListAnimator;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lo/DexFile$3;->d:Lo/ViewTreeObserver$StateListAnimator;

    iget p1, p1, Lo/DexFile$StateListAnimator;->e:I

    iget-object v1, p0, Lo/DexFile$3;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Lo/ViewTreeObserver$StateListAnimator;->callbackFailAsync(ILandroid/os/Handler;)V

    :goto_0
    return-void
.end method
