.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$13;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 3124
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$13;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$13;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$2700(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;

    move-result-object v0

    .line 3128
    if-eqz v0, :cond_0

    .line 3129
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/JPlayer/SecondSurface;->setSurfaceVisible()V

    .line 3131
    :cond_0
    return-void
.end method
