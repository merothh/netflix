.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$5;
.super Lcom/netflix/mediaclient/util/OnAnimationEndListener;
.source "KongGearSelectionScreen.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-direct {p0}, Lcom/netflix/mediaclient/util/OnAnimationEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->animationEndUIState()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$900(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$900(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$1002(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;I)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$5;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->setCountdownTimerText()V

    goto :goto_0
.end method
