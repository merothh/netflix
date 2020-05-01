.class Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$9;
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
.field final synthetic e:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V
    .locals 0

    .line 1184
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$9;->e:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1187
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$9;->e:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->c(Landroid/view/View;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    .line 1188
    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$9;->e:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->H:Lo/Bc;

    if-eqz p2, :cond_0

    .line 1189
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$9;->e:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object v0, p2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->H:Lo/Bc;

    invoke-virtual {p2, v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->c(Lo/Bc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_0
    return-void
.end method
