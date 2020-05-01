.class public final Lo/acG;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final d(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 17
    new-instance v0, Lo/acG$ActionBar;

    invoke-direct {v0, p0}, Lo/acG$ActionBar;-><init>(Lorg/json/JSONObject;)V

    check-cast v0, Lcom/netflix/cl/model/TrackingInfo;

    return-object v0
.end method
