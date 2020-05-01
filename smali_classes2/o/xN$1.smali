.class Lo/xN$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xN;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/xN;

.field final synthetic d:Lcom/netflix/mediaclient/service/pservice/PDiskData;

.field final synthetic e:Lo/aeL$TaskDescription;


# direct methods
.method constructor <init>(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lo/aeL$TaskDescription;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lo/xN$1;->c:Lo/xN;

    iput-object p2, p0, Lo/xN$1;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iput-object p3, p0, Lo/xN$1;->e:Lo/aeL$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 408
    iget-object v0, p0, Lo/xN$1;->c:Lo/xN;

    invoke-static {v0}, Lo/xN;->d(Lo/xN;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/xN$1;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->toJsonString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/xN$1;->e:Lo/aeL$TaskDescription;

    invoke-static {v0, v1, v2}, Lo/xQ;->b(Landroid/content/Context;Ljava/lang/String;Lo/aeL$TaskDescription;)V

    return-void
.end method
