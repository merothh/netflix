.class Lcom/netflix/mediaclient/ui/player/PostPlay$8;
.super Ljava/lang/Object;
.source "PostPlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V
    .locals 0

    .prologue
    .line 922
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$8;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 926
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$8;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-nez v0, :cond_1

    .line 927
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "onInterrupterDismiss() - called with null PlayerFragment!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 931
    :cond_1
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "After 60 minutes of waiting for user input, stop player ui"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$8;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isActivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$8;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->mPlayerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->finish()V

    goto :goto_0
.end method
