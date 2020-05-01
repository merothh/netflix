.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;
.super Lcom/netflix/mediaclient/util/OnAnimationEndListener;
.source "KongBattleIntroScreen.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-direct {p0}, Lcom/netflix/mediaclient/util/OnAnimationEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->postPlayManager:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->setScaleX(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$300(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->setScaleY(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$500(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$400(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$600(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$700(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$800(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$900(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$700(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$1000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$1100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$1100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$1100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$1100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$400(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;->access$1100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleIntroScreen;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
