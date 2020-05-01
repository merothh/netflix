.class public Lo/acx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netflix/cl/model/TrackingInfo;


# instance fields
.field private final c:Z

.field private final d:Lcom/netflix/cl/model/TrackingInfo;


# direct methods
.method public constructor <init>(Lcom/netflix/cl/model/TrackingInfo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/acx;->d:Lcom/netflix/cl/model/TrackingInfo;

    iput-boolean p2, p0, Lo/acx;->c:Z

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lo/acx;->d:Lcom/netflix/cl/model/TrackingInfo;

    iget-boolean v1, p0, Lo/acx;->c:Z

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a(Lcom/netflix/cl/model/TrackingInfo;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
