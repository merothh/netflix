.class Lo/xN$12;
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
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/netflix/mediaclient/service/pservice/PDiskData;

.field final synthetic c:Lo/xN;

.field final synthetic e:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;


# direct methods
.method constructor <init>(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/Set;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lo/xN$12;->c:Lo/xN;

    iput-object p2, p0, Lo/xN$12;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iput-object p3, p0, Lo/xN$12;->a:Ljava/util/Set;

    iput-object p4, p0, Lo/xN$12;->e:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/ExtrasFeedItemSummary;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 192
    iget-object p3, p0, Lo/xN$12;->c:Lo/xN;

    iget-object v0, p0, Lo/xN$12;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->g:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-static {p3, v0, p2, v1}, Lo/xN;->b(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V

    .line 193
    iget-object p2, p0, Lo/xN$12;->a:Ljava/util/Set;

    sget-object p3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->g:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-interface {p2, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 196
    iget-object p2, p0, Lo/xN$12;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object p2, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->lomoMap:Ljava/util/Map;

    sget-object p3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->g:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->g:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 197
    invoke-interface {p1}, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;->getListContext()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 198
    invoke-interface {p1}, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;->getListContext()Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->g:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    .line 199
    :goto_0
    iget-object p1, p0, Lo/xN$12;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object p1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->lomoTrackMap:Ljava/util/Map;

    sget-object p2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->g:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lo/xN$12;->c:Lo/xN;

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->g:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 200
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lo/xN;->e(Lo/xN;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 199
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object p1, p0, Lo/xN$12;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 204
    iget-object p1, p0, Lo/xN$12;->c:Lo/xN;

    iget-object p2, p0, Lo/xN$12;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iget-object p3, p0, Lo/xN$12;->e:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {p1, p2, p3}, Lo/xN;->e(Lo/xN;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    :cond_1
    return-void
.end method
