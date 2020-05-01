.class Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$7;
.super Landroid/content/BroadcastReceiver;
.source "PostPlayFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_1

    const-string/jumbo v0, "PostPlayFrag"

    const-string/jumbo v1, "Received null intent - ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "extra_video_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "extra_user_rating"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$100(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$100(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$900(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;->access$900(Lcom/netflix/mediaclient/ui/mdx/PostPlayFrag;)Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->setRating(F)V

    goto :goto_0
.end method
