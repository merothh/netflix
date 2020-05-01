.class Lo/ViewTreeObserver$StateListAnimator$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ViewTreeObserver$StateListAnimator;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/ViewTreeObserver$StateListAnimator;

.field final synthetic e:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Lo/ViewTreeObserver$StateListAnimator;Landroid/graphics/Typeface;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lo/ViewTreeObserver$StateListAnimator$4;->a:Lo/ViewTreeObserver$StateListAnimator;

    iput-object p2, p0, Lo/ViewTreeObserver$StateListAnimator$4;->e:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 273
    iget-object v0, p0, Lo/ViewTreeObserver$StateListAnimator$4;->a:Lo/ViewTreeObserver$StateListAnimator;

    iget-object v1, p0, Lo/ViewTreeObserver$StateListAnimator$4;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lo/ViewTreeObserver$StateListAnimator;->onFontRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method
