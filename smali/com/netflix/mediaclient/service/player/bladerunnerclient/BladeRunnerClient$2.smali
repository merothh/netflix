.class Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$2;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;
.source "BladeRunnerClient.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$2;->this$0:Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkDone(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;->onLinkDone(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 157
    invoke-static {}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "license activated : res: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 159
    return-void
.end method
