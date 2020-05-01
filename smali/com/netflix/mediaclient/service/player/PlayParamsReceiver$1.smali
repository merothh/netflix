.class Lcom/netflix/mediaclient/service/player/PlayParamsReceiver$1;
.super Ljava/lang/Object;
.source "PlayParamsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/PlayParamsReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/PlayParamsReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayParamsReceiver$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayParamsReceiver;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/PlayParamsReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/PlayParamsReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayParamsReceiver$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayParamsReceiver;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayParamsReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayParamsReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/PlayParamsReceiver;->access$000(Lcom/netflix/mediaclient/service/player/PlayParamsReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 55
    return-void
.end method
