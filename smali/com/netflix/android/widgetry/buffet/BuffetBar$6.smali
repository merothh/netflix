.class Lcom/netflix/android/widgetry/buffet/BuffetBar$6;
.super Ljava/lang/Object;
.source "BuffetBar.java"

# interfaces
.implements Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

.field final synthetic val$animate:Z


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;Z)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$6;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    iput-boolean p2, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$6;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$6;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    iget-object v0, v0, Lcom/netflix/android/widgetry/buffet/BuffetBar;->mView:Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout;->setOnLayoutChangeListener(Lcom/netflix/android/widgetry/buffet/BuffetBar$BuffetLayout$OnLayoutChangeListener;)V

    .line 568
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$6;->val$animate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$6;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$6;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->animateViewIn()V

    .line 575
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$6;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->onViewShown()V

    goto :goto_0
.end method
