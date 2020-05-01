.class Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WPMomentScreen.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)V
    .locals 0

    .prologue
    .line 1645
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$14;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1649
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1650
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1651
    const-string/jumbo v0, "WPMomentScreen"

    const-string/jumbo v1, "startRecapAnimation onAnimationEnd"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$14;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isMomentClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1669
    :cond_1
    :goto_0
    return-void

    .line 1656
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$14;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$300(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$14;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$300(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1657
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1658
    const-string/jumbo v0, "WPMomentScreen"

    const-string/jumbo v1, "onAnimationEnd: cardsList is null or empty"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1662
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1663
    const-string/jumbo v0, "WPMomentScreen"

    const-string/jumbo v1, "startRecapAnimation onAnimationEnd: card.reveal for recap item"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$14;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$300(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    .line 1668
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->revealCard()V

    goto :goto_0
.end method
