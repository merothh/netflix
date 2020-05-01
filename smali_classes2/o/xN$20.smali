.class Lo/xN$20;
.super Lo/xY;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xN;->b(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/service/pservice/PDiskData;

.field final synthetic b:I

.field final synthetic c:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

.field final synthetic d:Lo/xN;

.field private e:I


# direct methods
.method constructor <init>(Lo/xN;ILcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lo/xN$20;->d:Lo/xN;

    iput p2, p0, Lo/xN$20;->b:I

    iput-object p3, p0, Lo/xN$20;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iput-object p4, p0, Lo/xN$20;->c:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-direct {p0}, Lo/xY;-><init>()V

    .line 292
    iget p1, p0, Lo/xN$20;->b:I

    iput p1, p0, Lo/xN$20;->e:I

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    .line 296
    iget v0, p0, Lo/xN$20;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const/4 v0, 0x1

    aput-object p1, p3, v0

    const/4 v1, 0x2

    aput-object p2, p3, v1

    const-string v1, "onResourceFetched mCount: %d, reqUrl: %s, localUrl: %s"

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "nf_preappagentdatahandler"

    invoke-static {v1, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object p3, p0, Lo/xN$20;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object p3, p3, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-static {p1}, Lo/xW;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget p1, p0, Lo/xN$20;->e:I

    sub-int/2addr p1, v0

    iput p1, p0, Lo/xN$20;->e:I

    if-nez p1, :cond_0

    const-string p1, "fetching of images done. store newData"

    .line 300
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object p1, p0, Lo/xN$20;->d:Lo/xN;

    iget-object p2, p0, Lo/xN$20;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object p3, p0, Lo/xN$20;->c:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {p1, p2, p3}, Lo/xN;->c(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    :cond_0
    return-void
.end method
