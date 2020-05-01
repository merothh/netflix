.class Lo/TE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netflix/cl/model/TrackingInfo;


# instance fields
.field private final a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TE;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iput-object p2, p0, Lo/TE;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lo/TE;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iget-object v1, p0, Lo/TE;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/Ty;->c(Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
