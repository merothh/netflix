.class Lo/xN$13;
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
.field final synthetic a:Lcom/netflix/mediaclient/service/pservice/PDiskData;

.field final synthetic b:Ljava/util/Set;

.field final synthetic d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

.field final synthetic e:Lo/xN;


# direct methods
.method constructor <init>(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lo/xN$13;->e:Lo/xN;

    iput-object p2, p0, Lo/xN$13;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iput-object p3, p0, Lo/xN$13;->b:Ljava/util/Set;

    iput-object p4, p0, Lo/xN$13;->d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AR;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 137
    iget-object p2, p0, Lo/xN$13;->e:Lo/xN;

    iget-object v0, p0, Lo/xN$13;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-static {p2, v0, p1, v1}, Lo/xN;->c(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V

    .line 138
    iget-object p1, p0, Lo/xN$13;->b:Ljava/util/Set;

    sget-object p2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 141
    iget-object p1, p0, Lo/xN$13;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lo/xN$13;->e:Lo/xN;

    iget-object p2, p0, Lo/xN$13;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object v0, p0, Lo/xN$13;->d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {p1, p2, v0}, Lo/xN;->e(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    :cond_0
    return-void
.end method
