.class public Lo/wM;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private backoff:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bp"
    .end annotation
.end field

.field private probeId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pb"
    .end annotation
.end field

.field private result:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(J)Lo/wM;
    .locals 0

    .line 24
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/wM;->timestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public d(Lo/tH$FragmentManager;)Lo/wM;
    .locals 2

    .line 29
    iget-object v0, p1, Lo/tH$FragmentManager;->a:Ljava/lang/String;

    iput-object v0, p0, Lo/wM;->serverId:Ljava/lang/String;

    .line 30
    iget v0, p1, Lo/tH$FragmentManager;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/wM;->probeId:Ljava/lang/Integer;

    .line 31
    iget v0, p1, Lo/tH$FragmentManager;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/wM;->result:Ljava/lang/Integer;

    .line 32
    iget-wide v0, p1, Lo/tH$FragmentManager;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/wM;->backoff:Ljava/lang/Long;

    return-object p0
.end method
