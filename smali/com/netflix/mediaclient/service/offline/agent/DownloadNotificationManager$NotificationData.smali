.class Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;
.super Ljava/lang/Object;
.source "DownloadNotificationManager.java"


# instance fields
.field mBoxShot:Landroid/graphics/Bitmap;

.field mSecondaryTitle:Ljava/lang/CharSequence;

.field mTitle:Ljava/lang/CharSequence;

.field mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mTitle:Ljava/lang/CharSequence;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mSecondaryTitle:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mBoxShot:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mVideoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-void
.end method
