.class Lcom/netflix/mediaclient/ui/player/PostPlayForMDX$1;
.super Ljava/lang/Object;
.source "PostPlayForMDX.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mInPostPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "post play timer exit or activity is destroyed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->access$010(Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->access$100(Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->access$000(Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;)I

    move-result v0

    if-gtz v0, :cond_2

    const-string/jumbo v0, "nf_postplay"

    const-string/jumbo v1, "Timer counter to 0, play next episode"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->onTimerEnd()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlayForMDX;->mNetflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
