.class Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WPMomentScreen.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

.field final synthetic val$open:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Z)V
    .locals 0

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$11;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$11;->val$open:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1221
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1222
    const-string/jumbo v0, "WPMomentScreen"

    const-string/jumbo v1, "startPanelAnimation onAnimationEnd"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$11;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isMomentClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1240
    :cond_1
    :goto_0
    return-void

    .line 1228
    :cond_2
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$11;->val$open:Z

    if-eqz v0, :cond_3

    .line 1229
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$11;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$1400(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)V

    goto :goto_0

    .line 1231
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$11;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$300(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$11;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$300(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1232
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1233
    const-string/jumbo v0, "WPMomentScreen"

    const-string/jumbo v1, "startPanelAnimation onAnimationEnd: cardsList is null or empty"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1238
    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$11;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$11;->val$open:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$400(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Z)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method
