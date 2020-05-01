.class Landroid/support/design/widget/Snackbar$6;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Landroid/support/design/widget/Snackbar$6;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$6;->this$0:Landroid/support/design/widget/Snackbar;

    iget-object v0, v0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setOnLayoutChangeListener(Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;)V

    .line 522
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$6;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$6;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->animateViewIn()V

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/Snackbar$6;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->onViewShown()V

    goto :goto_0
.end method
