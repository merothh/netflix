.class public Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/util/CLv2Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;I)Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;
    .locals 1

    .line 752
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public e()Lcom/netflix/cl/model/Debug;
    .locals 2

    .line 778
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 781
    new-instance v1, Lcom/netflix/cl/model/Debug;

    invoke-direct {v1, v0}, Lcom/netflix/cl/model/Debug;-><init>(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    .line 782
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;->a:Lorg/json/JSONObject;

    return-object v1

    .line 779
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to reuse builder!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;
    .locals 1

    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/util/CLv2Utils$Activity;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method
