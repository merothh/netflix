.class public Lo/wq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private HTTPFailureCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hc"
    .end annotation
.end field

.field private failureCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fc"
    .end annotation
.end field

.field private failureName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fn"
    .end annotation
.end field

.field private nativeFailureCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nc"
    .end annotation
.end field

.field private probeIds:[I
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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/tH$ActionBar;)Lo/wq;
    .locals 1

    .line 36
    iget-object v0, p1, Lo/tH$ActionBar;->c:Ljava/lang/String;

    iput-object v0, p0, Lo/wq;->serverId:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lo/tH$ActionBar;->b:Ljava/lang/String;

    iput-object v0, p0, Lo/wq;->failureName:Ljava/lang/String;

    .line 41
    iget-object p1, p1, Lo/tH$ActionBar;->g:[I

    iput-object p1, p0, Lo/wq;->probeIds:[I

    return-object p0
.end method

.method public e(J)Lo/wq;
    .locals 0

    .line 31
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/wq;->timestamp:Ljava/lang/Long;

    return-object p0
.end method
