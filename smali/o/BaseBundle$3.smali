.class Lo/BaseBundle$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BaseBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/BaseBundle;


# direct methods
.method constructor <init>(Lo/BaseBundle;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lo/BaseBundle$3;->d:Lo/BaseBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lo/BaseBundle$3;->d:Lo/BaseBundle;

    iget-object v0, v0, Lo/BaseBundle;->a:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lo/BaseBundle$3;->d:Lo/BaseBundle;

    iget-object v0, v0, Lo/BaseBundle;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/BaseBundle$3;->d:Lo/BaseBundle;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, v0, Lo/BaseBundle;->a:Landroid/view/ViewTreeObserver;

    .line 89
    :cond_0
    iget-object v0, p0, Lo/BaseBundle$3;->d:Lo/BaseBundle;

    iget-object v0, v0, Lo/BaseBundle;->a:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lo/BaseBundle$3;->d:Lo/BaseBundle;

    iget-object v1, v1, Lo/BaseBundle;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 91
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
