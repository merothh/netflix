.class public final Lcom/netflix/mediaclient/service/mdx/message/controller/DialogResponse;
.super Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;
.source "DialogResponse.java"


# static fields
.field private static final PROPERTY_data:Ljava/lang/String; = "data"

.field private static final PROPERTY_uid:Ljava/lang/String; = "uid"


# instance fields
.field private mData:Ljava/lang/String;

.field private mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "DIALOG_RESPONSE"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/DialogResponse;->mUid:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/DialogResponse;->mData:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/DialogResponse;->createObj()V

    .line 40
    return-void
.end method

.method private createObj()V
    .locals 4

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/DialogResponse;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "uid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/DialogResponse;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/DialogResponse;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "data"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/DialogResponse;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/DialogResponse;->messageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " createObj failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
