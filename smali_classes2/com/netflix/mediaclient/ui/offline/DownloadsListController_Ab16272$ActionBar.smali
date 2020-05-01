.class public final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$ActionBar;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$ActionBar;->a:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$ActionBar;->a:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->requestModelBuild()V

    return-void
.end method
