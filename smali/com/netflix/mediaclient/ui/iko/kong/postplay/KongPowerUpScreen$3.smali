.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$3;
.super Lcom/netflix/mediaclient/util/OnAnimationEndListener;
.source "KongPowerUpScreen.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-direct {p0}, Lcom/netflix/mediaclient/util/OnAnimationEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->access$100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->access$200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->access$300(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

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

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->access$400(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
