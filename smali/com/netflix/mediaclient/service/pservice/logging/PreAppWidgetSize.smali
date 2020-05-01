.class public Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;
.super Ljava/lang/Object;
.source "PreAppWidgetSize.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_preapp_widgetsize"


# instance fields
.field public maxHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxHeight"
    .end annotation
.end field

.field public maxWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxWidth"
    .end annotation
.end field

.field public minHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minHeight"
    .end annotation
.end field

.field public minWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minWidth"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;->minWidth:I

    iput v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;->maxWidth:I

    iput v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;->minHeight:I

    iput v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;->maxHeight:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;->minWidth:I

    iput p2, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;->maxWidth:I

    iput p3, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;->minHeight:I

    iput p4, p0, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetSize;->maxHeight:I

    return-void
.end method


# virtual methods
.method public toJsonString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_preapp_widgetsize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "widgetSize as json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method
