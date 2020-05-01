.class final Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/TrackingInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Ljava/lang/String;I)Lcom/netflix/cl/model/TrackingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$Activity;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder$Activity;->a:Lorg/json/JSONObject;

    return-object v0
.end method
