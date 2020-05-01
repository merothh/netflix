.class Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$1;
.super Ljava/lang/Object;
.source "CoppolaLoadingDecorator.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/player/PlayerFragment$OnPlaybackStateListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackRestarting()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x1

    .line 120
    const-string/jumbo v0, "CoppolaLoadingDecorator"

    const-string/jumbo v1, "onPlaybackRestarting()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->access$000(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)V

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->showProgressAndTextIndicator(Z)V

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->access$200(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->access$300(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)V

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->access$400(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;ZI)Landroid/view/ViewPropertyAnimator;

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->access$500(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;ZI)Landroid/view/ViewPropertyAnimator;

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->access$600(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;ZI)Landroid/view/ViewPropertyAnimator;

    .line 128
    return-void
.end method

.method public onPlaybackStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    const-string/jumbo v0, "CoppolaLoadingDecorator"

    const-string/jumbo v1, "onPlaybackStarted()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->access$000(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)V

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->access$100(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;Z)V

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->playerScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->setMediaImage(Z)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/Coppola1Utils;->unlockOrientationIfNeeded(Landroid/app/Activity;)V

    .line 109
    return-void
.end method

.method public onPlaybackStopped()V
    .locals 3

    .prologue
    .line 113
    const-string/jumbo v0, "CoppolaLoadingDecorator"

    const-string/jumbo v1, "onPlaybackStopped()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->showProgressAndTextIndicator(Z)V

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$1;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->access$200(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;ZI)Landroid/view/ViewPropertyAnimator;

    .line 116
    return-void
.end method
