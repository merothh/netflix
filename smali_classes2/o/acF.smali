.class public Lo/acF;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netflix/cl/model/TrackingInfo;


# instance fields
.field private final c:Lo/zR;


# direct methods
.method public constructor <init>(Lo/zR;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/acF;->c:Lo/zR;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lo/acF;->c:Lo/zR;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lo/zR;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
