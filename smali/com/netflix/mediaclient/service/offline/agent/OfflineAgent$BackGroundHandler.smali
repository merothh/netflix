.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;
.super Landroid/os/Handler;
.source "OfflineAgent.java"


# static fields
.field static final TYPE_AGENT_DESTROY:I = 0x5

.field static final TYPE_AGENT_INIT:I = 0x0

.field static final TYPE_CREATE:I = 0x1

.field static final TYPE_DELETE:I = 0x2

.field static final TYPE_DELETE_ALL_PLAYABLES:I = 0x8

.field static final TYPE_DOWNLOAD_MAINTENANCE_JOB:I = 0x7

.field static final TYPE_DOWNLOAD_RESUME_JOB:I = 0x6

.field static final TYPE_HANDLE_MAINTENANCE_DONE:I = 0xa

.field static final TYPE_NOTIFY_PLAYABLE_PLAYBACK_START_30SEC:I = 0x9

.field static final TYPE_PAUSE:I = 0x3

.field static final TYPE_RESUME:I = 0x4

.field static final TYPE_UPDATE_GEO_PLAYABILITY:I = 0xb


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    .line 1282
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1283
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 1286
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1326
    :goto_0
    return-void

    .line 1288
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$2400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    goto :goto_0

    .line 1291
    :pswitch_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$CreateRequest;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$2500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$CreateRequest;)V

    goto :goto_0

    .line 1294
    :pswitch_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$2600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;)V

    goto :goto_0

    .line 1297
    :pswitch_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$2700(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;)V

    goto :goto_0

    .line 1300
    :pswitch_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$2800(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;)V

    goto :goto_0

    .line 1303
    :pswitch_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$2900(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    goto :goto_0

    .line 1306
    :pswitch_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    goto :goto_0

    .line 1309
    :pswitch_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    goto :goto_0

    .line 1312
    :pswitch_8
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Z)V

    goto :goto_0

    .line 1315
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 1316
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/Long;)V

    goto :goto_0

    .line 1319
    :pswitch_a
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onMaintenanceJobDone()V

    .line 1320
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3402(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;)Lcom/netflix/mediaclient/service/offline/agent/MaintenanceJobHandler;

    goto :goto_0

    .line 1323
    :pswitch_b
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$BackGroundHandler;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$3500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    goto :goto_0

    .line 1286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
