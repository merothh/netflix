.class final Lcom/netflix/android/widgetry/buffet/BuffetBar$Behavior;
.super Landroid/support/design/widget/SwipeDismissBehavior;
.source "BuffetBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/SwipeDismissBehavior",
        "<",
        "Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V
    .locals 0

    .prologue
    .line 902
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$Behavior;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-direct {p0}, Landroid/support/design/widget/SwipeDismissBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 905
    instance-of v0, p1, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    return v0
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 902
    check-cast p2, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/buffet/BuffetBar$Behavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 913
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 925
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/SwipeDismissBehavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 916
    :pswitch_1
    invoke-static {}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->getInstance()Lcom/netflix/android/widgetry/buffet/BuffetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$Behavior;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    iget-object v1, v1, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->cancelTimeout(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V

    goto :goto_0

    .line 920
    :pswitch_2
    invoke-static {}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->getInstance()Lcom/netflix/android/widgetry/buffet/BuffetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$Behavior;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    iget-object v1, v1, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mManagerCallback:Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->restoreTimeout(Lcom/netflix/android/widgetry/buffet/BuffetManager$Callback;)V

    goto :goto_0

    .line 914
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
