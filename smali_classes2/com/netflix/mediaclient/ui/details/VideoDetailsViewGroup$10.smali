.class Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$10;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V
    .locals 0

    .line 1164
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$10;->a:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p1, "VideoDetailsViewGroup"

    const-string p2, "Received null intent - ignoring"

    .line 1168
    invoke-static {p1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "extra_video_id"

    .line 1172
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1174
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$10;->a:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->c(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1175
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$10;->a:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->v:Lo/SimpleClock;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string v0, "extra_user_thumb_rating"

    .line 1176
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lo/ShellCallback;->c(I)I

    move-result p1

    .line 1177
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$10;->a:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->v:Lo/SimpleClock;

    invoke-virtual {p2, p1}, Lo/SimpleClock;->setRating(I)V

    .line 1178
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$10;->a:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;IZ)V

    :cond_1
    return-void
.end method
