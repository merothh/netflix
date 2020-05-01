.class Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$10;
.super Ljava/lang/Object;
.source "WPInteractiveMomentsManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$10;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WPInteractiveMomentsManager"

    const-string/jumbo v1, "Close button onClick invoked "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$10;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->hide()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$10;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->backButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->reportCommandEvent(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$10;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->reportMomentEnded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    return-void
.end method
