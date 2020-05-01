.class final Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

.field final synthetic c:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ActionBar;

.field final synthetic d:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ActionBar;Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$PendingIntent;->a:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$PendingIntent;->c:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ActionBar;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$PendingIntent;->d:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$PendingIntent;->a:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;->c(Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$PendingIntent;->c:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ActionBar;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$PendingIntent;->d:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$TaskDescription;->c()V

    :cond_0
    return-void
.end method
