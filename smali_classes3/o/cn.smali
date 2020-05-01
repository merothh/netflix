.class Lo/cn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/netflix/mediaclient/android/app/Status;

.field private final b:Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

.field private final d:Lo/co;

.field private final e:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;


# direct methods
.method public constructor <init>(Lo/co;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/cn;->d:Lo/co;

    iput-object p2, p0, Lo/cn;->e:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    iput-object p3, p0, Lo/cn;->b:Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    iput-object p4, p0, Lo/cn;->a:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lo/cn;->d:Lo/co;

    iget-object v1, p0, Lo/cn;->e:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    iget-object v2, p0, Lo/cn;->b:Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    iget-object v3, p0, Lo/cn;->a:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v0, v1, v2, v3}, Lo/co;->c(Lo/co;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
