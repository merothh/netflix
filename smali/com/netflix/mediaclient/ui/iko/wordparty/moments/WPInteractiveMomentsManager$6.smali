.class Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WPInteractiveMomentsManager.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$6;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WPInteractiveMomentsManager"

    const-string/jumbo v1, "startPugIntroAnimation onAnimationEnd "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$6;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->access$600(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$6;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$6;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->access$700(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->access$800(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;IF)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$6;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->reportIkoNotificationImpressionEnded()V

    return-void
.end method
