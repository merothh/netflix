.class public Lo/wK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private errorCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hc"
    .end annotation
.end field

.field private probeId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pb"
    .end annotation
.end field

.field private serverId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "es"
    .end annotation
.end field

.field private timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ts"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(J)Lo/wK;
    .locals 0

    .line 22
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/wK;->timestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public c(Lo/tH$Fragment;)Lo/wK;
    .locals 1

    .line 27
    iget-object v0, p1, Lo/tH$Fragment;->e:Ljava/lang/String;

    iput-object v0, p0, Lo/wK;->serverId:Ljava/lang/String;

    .line 28
    iget v0, p1, Lo/tH$Fragment;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/wK;->probeId:Ljava/lang/Integer;

    .line 29
    iget p1, p1, Lo/tH$Fragment;->c:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/wK;->errorCode:Ljava/lang/Integer;

    return-object p0
.end method
