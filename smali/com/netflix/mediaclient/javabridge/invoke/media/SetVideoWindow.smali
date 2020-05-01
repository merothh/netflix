.class public Lcom/netflix/mediaclient/javabridge/invoke/media/SetVideoWindow;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SetVideoWindow.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "setVideoWindow"

.field private static final PROPERTY_HEIGHT:Ljava/lang/String; = "height"

.field private static final PROPERTY_TRANSITION_DURATION:Ljava/lang/String; = "transitionDuration"

.field private static final PROPERTY_WIDTH:Ljava/lang/String; = "width"

.field private static final PROPERTY_X:Ljava/lang/String; = "x"

.field private static final PROPERTY_Y:Ljava/lang/String; = "y"

.field private static final TARGET:Ljava/lang/String; = "media"


# instance fields
.field private display:Lcom/netflix/mediaclient/media/Display;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/Display;I)V
    .locals 2

    const-string/jumbo v0, "media"

    const-string/jumbo v1, "setVideoWindow"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/media/SetVideoWindow;->setArguments(Lcom/netflix/mediaclient/media/Display;I)V

    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/SetVideoWindow;->display:Lcom/netflix/mediaclient/media/Display;

    return-void
.end method

.method private setArguments(Lcom/netflix/mediaclient/media/Display;I)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "width"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "height"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Display;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "x"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Display;->getX()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "y"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Display;->getY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "transitionDuration"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/SetVideoWindow;->arguments:Ljava/lang/String;
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


# virtual methods
.method public getDisplay()Lcom/netflix/mediaclient/media/Display;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/media/SetVideoWindow;->display:Lcom/netflix/mediaclient/media/Display;

    return-object v0
.end method
