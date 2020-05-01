.class Lcom/netflix/android/widgetry/buffet/BuffetBar$7;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "BuffetBar.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$7;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$7;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->onViewShown()V

    .line 597
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$7;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    iget-object v0, v0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    const/16 v1, 0x46

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->animateChildrenIn(II)V

    .line 592
    return-void
.end method
