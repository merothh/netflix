.class Lcom/netflix/mediaclient/ui/player/PostPlay$2;
.super Ljava/lang/Object;
.source "PostPlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$2;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Interrupter mode, continue"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$2;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->moveFromInterruptedToPlaying()V

    return-void
.end method
