.class public Lcom/netflix/mediaclient/ui/kubrick/details/BarkerVideoDetailsClickListener;
.super Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;
.source "BarkerVideoDetailsClickListener.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V

    return-void
.end method


# virtual methods
.method protected launchDetailsActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 2

    const/high16 v0, 0x10000

    const-string/jumbo v1, "KubrickDeetsClickListener"

    invoke-static {p1, p2, p3, v1, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;I)V

    return-void
.end method
