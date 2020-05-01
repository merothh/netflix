.class Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;
.super Ljava/lang/Object;
.source "PostPlayForPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field background:Lcom/netflix/mediaclient/ui/player/PostPlayBackground;

.field index:I

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;ILcom/netflix/mediaclient/ui/player/PostPlayBackground;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput p2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;->index:I

    .line 212
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;->background:Lcom/netflix/mediaclient/ui/player/PostPlayBackground;

    .line 213
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 219
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const-string/jumbo v0, "nf_postplay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BoxArt touched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->access$000(Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Video was full size, scale down"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->access$100(Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;)V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;

    iget v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer$SelectListener;->index:I

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;->access$200(Lcom/netflix/mediaclient/ui/player/PostPlayForPlayer;I)V

    .line 229
    return-void
.end method
