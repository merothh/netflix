.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KongPowerUpScreen.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$2;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->access$100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->access$100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->access$000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    return-void
.end method
