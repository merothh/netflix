.class public Lcom/netflix/mediaclient/javabridge/invoke/media/Swim;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "Swim.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "swim"

.field private static final PROPERTY_absolute:Ljava/lang/String; = "absolute"

.field private static final PROPERTY_allowRebuffer:Ljava/lang/String; = "allowRebuffer"

.field private static final PROPERTY_forceRebuffer:Ljava/lang/String; = "forceRebuffer"

.field private static final PROPERTY_fuzz:Ljava/lang/String; = "fuzz"

.field private static final PROPERTY_pts:Ljava/lang/String; = "pts"

.field private static final TARGET:Ljava/lang/String; = "media"


# direct methods
.method public constructor <init>(I)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "media"

    const-string/jumbo v1, "swim"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/javabridge/invoke/media/Swim;->setArguments(IZIZZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 6

    const/4 v2, 0x1

    const-string/jumbo v0, "media"

    const-string/jumbo v1, "swim"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v4, v2

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/javabridge/invoke/media/Swim;->setArguments(IZIZZ)V

    return-void
.end method

.method public constructor <init>(IZIZ)V
    .locals 6

    const-string/jumbo v0, "media"

    const-string/jumbo v1, "swim"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/javabridge/invoke/media/Swim;->setArguments(IZIZZ)V

    return-void
.end method

.method public constructor <init>(IZIZZ)V
    .locals 2

    const-string/jumbo v0, "media"

    const-string/jumbo v1, "swim"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/javabridge/invoke/media/Swim;->setArguments(IZIZZ)V

    return-void
.end method

.method private setArguments(IZIZZ)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "pts"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "absolute"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "fuzz"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "allowRebuffer"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "forceRebuffer"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/Swim;->arguments:Ljava/lang/String;
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
