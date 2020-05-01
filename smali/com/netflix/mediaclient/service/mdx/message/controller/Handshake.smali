.class public final Lcom/netflix/mediaclient/service/mdx/message/controller/Handshake;
.super Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;
.source "Handshake.java"


# static fields
.field private static final PROPERTY_contractVersion:Ljava/lang/String; = "contractVersion"

.field private static final contractVersion:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "HANDSHAKE"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/Handshake;->createObj()V

    .line 30
    return-void
.end method

.method private createObj()V
    .locals 4

    .prologue
    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/Handshake;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "contractVersion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/Handshake;->messageName()Ljava/lang/String;

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
