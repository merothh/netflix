.class Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView$2;
.super Landroid/content/BroadcastReceiver;
.source "KubrickHeroView.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView$2;->this$0:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_1

    const-string/jumbo v0, "KubrickHeroView"

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

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView$2;->this$0:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->access$200(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView$2;->this$0:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;->access$300(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHeroView;)Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/NetflixRatingBar;->setRating(F)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KubrickHeroView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updated video rating to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
