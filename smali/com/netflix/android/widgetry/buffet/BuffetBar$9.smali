.class Lcom/netflix/android/widgetry/buffet/BuffetBar$9;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "BuffetBar.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;I)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$9;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    iput p2, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$9;->val$event:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$9;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    iget v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$9;->val$event:I

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->onViewHidden(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$9;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    iget-object v0, v0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    const/4 v1, 0x0

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->animateChildrenOut(II)V

    return-void
.end method
