.class public Lcom/netflix/mediaclient/javabridge/invoke/mdx/session/StartSession;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "StartSession.java"


# static fields
.field public static final METHOD:Ljava/lang/String; = "startSession"

.field public static final PROPERTY_pairingContext:Ljava/lang/String; = "pairingContext"

.field public static final PROPERTY_xid:Ljava/lang/String; = "xid"

.field private static final TARGET:Ljava/lang/String; = "mdx"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "mdx"

    const-string/jumbo v1, "startSession"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/TransactionId;->nextTransactionId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/session/StartSession;->setArguments(Ljava/lang/String;J)V

    return-void
.end method

.method private setArguments(Ljava/lang/String;J)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "pairingContext"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "xid"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/mdx/session/StartSession;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
