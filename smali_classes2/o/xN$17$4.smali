.class Lo/xN$17$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xN$17;->c(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/xN$17;

.field final synthetic c:Lcom/netflix/mediaclient/service/pservice/PDiskData;


# direct methods
.method constructor <init>(Lo/xN$17;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lo/xN$17$4;->b:Lo/xN$17;

    iput-object p2, p0, Lo/xN$17$4;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 261
    iget-object v0, p0, Lo/xN$17$4;->b:Lo/xN$17;

    iget-object v0, v0, Lo/xN$17;->d:Lo/xN;

    iget-object v1, p0, Lo/xN$17$4;->b:Lo/xN$17;

    iget-object v1, v1, Lo/xN$17;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object v2, p0, Lo/xN$17$4;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object v3, p0, Lo/xN$17$4;->b:Lo/xN$17;

    iget-object v3, v3, Lo/xN$17;->e:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v0, v1, v2, v3}, Lo/xN;->b(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Lcom/netflix/mediaclient/service/pservice/PDiskData;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lo/xN$17$4;->b:Lo/xN$17;

    iget-object v1, v1, Lo/xN$17;->d:Lo/xN;

    invoke-static {v1, v0}, Lo/xN;->d(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    const-string v1, "nf_preappagentdatahandler"

    const-string v2, "old not needed data on disk cleared - merged data is"

    .line 263
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->print()V

    .line 268
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->toJsonString()Ljava/lang/String;

    move-result-object v1

    .line 270
    new-instance v2, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v3, Lo/xN$17$4$1;

    invoke-direct {v3, p0, v1}, Lo/xN$17$4$1;-><init>(Lo/xN$17$4;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    .line 277
    iget-object v1, p0, Lo/xN$17$4;->b:Lo/xN$17;

    iget-object v1, v1, Lo/xN$17;->d:Lo/xN;

    iget-object v2, p0, Lo/xN$17$4;->b:Lo/xN$17;

    iget-object v2, v2, Lo/xN$17;->e:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v1, v0, v2}, Lo/xN;->d(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    return-void
.end method
