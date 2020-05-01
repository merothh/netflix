.class Lo/xN$3;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xN;->a(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

.field final synthetic b:Lo/xN;

.field final synthetic d:Lcom/netflix/mediaclient/service/pservice/PDiskData;

.field final synthetic e:Ljava/util/Set;


# direct methods
.method constructor <init>(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lo/xN$3;->b:Lo/xN;

    iput-object p2, p0, Lo/xN$3;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iput-object p3, p0, Lo/xN$3;->e:Ljava/util/Set;

    iput-object p4, p0, Lo/xN$3;->a:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Az;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 105
    iget-object p2, p0, Lo/xN$3;->b:Lo/xN;

    iget-object v0, p0, Lo/xN$3;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-static {p2, v0, p1}, Lo/xN;->b(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V

    .line 106
    iget-object p1, p0, Lo/xN$3;->e:Ljava/util/Set;

    sget-object p2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 109
    iget-object p1, p0, Lo/xN$3;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lo/xN$3;->b:Lo/xN;

    iget-object p2, p0, Lo/xN$3;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object v0, p0, Lo/xN$3;->a:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {p1, p2, v0}, Lo/xN;->e(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Ax;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 90
    iget-object p2, p0, Lo/xN$3;->b:Lo/xN;

    iget-object v0, p0, Lo/xN$3;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-static {p2, v0, p1}, Lo/xN;->a(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;)V

    .line 91
    iget-object p1, p0, Lo/xN$3;->e:Ljava/util/Set;

    sget-object p2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 94
    iget-object p1, p0, Lo/xN$3;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lo/xN$3;->b:Lo/xN;

    iget-object p2, p0, Lo/xN$3;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object v0, p0, Lo/xN$3;->a:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {p1, p2, v0}, Lo/xN;->e(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    :cond_0
    return-void
.end method
