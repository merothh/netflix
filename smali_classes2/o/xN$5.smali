.class Lo/xN$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aeL$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xN;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

.field final synthetic d:Lo/xN;

.field final synthetic e:Lcom/netflix/mediaclient/service/pservice/PDiskData;


# direct methods
.method constructor <init>(Lo/xN;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lo/xN$5;->d:Lo/xN;

    iput-object p2, p0, Lo/xN$5;->b:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    iput-object p3, p0, Lo/xN$5;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    const-string p1, "nf_preappagentdatahandler"

    const-string v0, "onDataSaved"

    .line 396
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object p1, p0, Lo/xN$5;->d:Lo/xN;

    invoke-static {p1}, Lo/xN;->d(Lo/xN;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/xN$5;->b:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    iget-object v2, p0, Lo/xN$5;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-static {p1, v0, v1, v2}, Lo/xN;->b(Lo/xN;Landroid/content/Context;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    return-void
.end method
