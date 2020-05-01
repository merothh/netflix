.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LU$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setupCastPlayerFrag(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$2;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 602
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$2;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object p1, p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz p1, :cond_0

    .line 603
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$2;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object p1, p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->slidingPanel:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$2;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$000(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    :cond_0
    return-void
.end method
