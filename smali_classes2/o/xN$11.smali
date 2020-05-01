.class Lo/xN$11;
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
.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Lcom/netflix/mediaclient/service/pservice/PDiskData;

.field final synthetic d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

.field final synthetic e:Lo/xN;


# direct methods
.method constructor <init>(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lo/xN$11;->e:Lo/xN;

    iput-object p2, p0, Lo/xN$11;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iput-object p3, p0, Lo/xN$11;->b:Ljava/util/Set;

    iput-object p4, p0, Lo/xN$11;->d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
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

    .line 171
    iget-object p2, p0, Lo/xN$11;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object p2, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->lomoMap:Ljava/util/Map;

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object p2, p0, Lo/xN$11;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object p2, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->lomoTrackMap:Ljava/util/Map;

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/xN$11;->e:Lo/xN;

    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 173
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/xN;->d(Lo/xN;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object p2, p0, Lo/xN$11;->e:Lo/xN;

    iget-object v0, p0, Lo/xN$11;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-static {p2, v0, p1, v1}, Lo/xN;->c(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V

    .line 177
    iget-object p1, p0, Lo/xN$11;->b:Ljava/util/Set;

    sget-object p2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 180
    iget-object p1, p0, Lo/xN$11;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lo/xN$11;->e:Lo/xN;

    iget-object p2, p0, Lo/xN$11;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object v0, p0, Lo/xN$11;->d:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {p1, p2, v0}, Lo/xN;->e(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    :cond_0
    return-void
.end method
