.class Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WPMomentScreen.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

.field final synthetic val$v:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$3;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$3;->val$v:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WPMomentScreen"

    const-string/jumbo v1, "zoomInCard onAnimationEnd"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$3;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isMomentClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$3;->val$v:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->revealCard()V

    goto :goto_0
.end method
