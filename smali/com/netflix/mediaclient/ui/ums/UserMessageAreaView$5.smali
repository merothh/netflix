.class Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UserMessageAreaView.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$5;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$5;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$5;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->access$300(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$5;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 159
    :cond_0
    return-void
.end method
