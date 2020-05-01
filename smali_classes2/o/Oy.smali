.class Lo/Oy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netflix/cl/model/TrackingInfo;


# instance fields
.field private final c:Lo/Os;

.field private final d:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

.field private final e:I


# direct methods
.method public constructor <init>(Lo/Os;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Oy;->c:Lo/Os;

    iput-object p2, p0, Lo/Oy;->d:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    iput p3, p0, Lo/Oy;->e:I

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lo/Oy;->c:Lo/Os;

    iget-object v1, p0, Lo/Oy;->d:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    iget v2, p0, Lo/Oy;->e:I

    invoke-static {v0, v1, v2}, Lo/Os;->c(Lo/Os;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
