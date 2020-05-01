.class public final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$PendingIntent;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;ZLo/Rr$Activity;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$TaskDescription;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$PendingIntent;->b:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$PendingIntent;->b:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->requestModelBuild()V

    return-void
.end method
