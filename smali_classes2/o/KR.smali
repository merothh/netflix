.class final Lo/KR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/TrackingInfo;


# instance fields
.field private final synthetic d:Lo/alB;


# direct methods
.method constructor <init>(Lo/alB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/KR;->d:Lo/alB;

    return-void
.end method


# virtual methods
.method public final synthetic toJSONObject()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lo/KR;->d:Lo/alB;

    invoke-interface {v0}, Lo/alB;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method
