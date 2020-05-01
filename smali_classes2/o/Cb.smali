.class public Lo/Cb;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public number:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "n"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "t"
    .end annotation
.end field

.field public totalEpisodeCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lo/Cb;->number:I

    .line 18
    iput-object p2, p0, Lo/Cb;->title:Ljava/lang/String;

    .line 19
    iput p3, p0, Lo/Cb;->totalEpisodeCount:I

    return-void
.end method

.method public static d(Lorg/json/JSONObject;)Lo/Cb;
    .locals 4

    .line 23
    new-instance v0, Lo/Cb;

    const-string v1, "n"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "t"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "c"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lo/Cb;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method
