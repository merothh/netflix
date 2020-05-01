.class Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$2;->this$0:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "nf_push_info"

    const-string v1, "fetching preAppData via runnable"

    .line 296
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$2;->this$0:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mBrowseAgent:Lo/hW;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$2;->this$0:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mBrowseAgent:Lo/hW;

    const/4 v1, 0x6

    invoke-interface {v0, v1, v1}, Lo/hW;->b(II)V

    :cond_0
    return-void
.end method
