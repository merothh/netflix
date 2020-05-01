.class Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$9;
.super Ljava/lang/Object;
.source "WPInteractiveMomentsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$9;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$9;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->access$1600(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WPInteractiveMomentsManager"

    const-string/jumbo v2, "loadMomentScreenResources: configuring card resources in bg thread"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager$9;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->access$1700(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;)Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->configureCards(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMoment;)V

    goto :goto_0
.end method
