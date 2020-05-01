.class final Lo/HwBlob$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HwBlob;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/HwBlob;


# direct methods
.method constructor <init>(Lo/HwBlob;)V
    .locals 0

    iput-object p1, p0, Lo/HwBlob$StateListAnimator;->e:Lo/HwBlob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .line 120
    iget-object v0, p0, Lo/HwBlob$StateListAnimator;->e:Lo/HwBlob;

    invoke-virtual {v0}, Lo/HwBlob;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lo/HwBlob$StateListAnimator;->e:Lo/HwBlob;

    invoke-static {v0}, Lo/HwBlob;->i(Lo/HwBlob;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lo/HwBlob$StateListAnimator;->e:Lo/HwBlob;

    invoke-virtual {v0}, Lo/HwBlob;->requestLayout()V

    goto :goto_1

    .line 121
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/HwBlob$StateListAnimator;->e:Lo/HwBlob;

    invoke-virtual {v0}, Lo/HwBlob;->a()V

    :cond_2
    :goto_1
    return-void
.end method
