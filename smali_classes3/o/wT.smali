.class Lo/wT;
.super Lo/wo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/wT$StateListAnimator;,
        Lo/wT$ActionBar;,
        Lo/wT$Activity;
    }
.end annotation


# instance fields
.field private location_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locid"
    .end annotation
.end field

.field private location_level:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "loclv"
    .end annotation
.end field

.field private location_position:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locpos"
    .end annotation
.end field

.field private location_rank:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locrank"
    .end annotation
.end field

.field private locations:[Lo/wT$Activity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locations"
    .end annotation
.end field

.field private mediatype:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mediatype"
    .end annotation
.end field

.field private newCDNId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "server"
    .end annotation
.end field

.field private oldCDNId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oldserver"
    .end annotation
.end field

.field private reason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reason"
    .end annotation
.end field

.field private serverRegistrationTime:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serverRegistrationTime"
    .end annotation
.end field

.field private streamId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "streamid"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lo/wo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v1, "serversel"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 42
    invoke-direct/range {v0 .. v5}, Lo/wo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lo/tH$Dialog;)Lo/wT;
    .locals 4

    .line 51
    iget-object v0, p1, Lo/tH$Dialog;->b:Ljava/lang/String;

    iput-object v0, p0, Lo/wT;->oldCDNId:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lo/tH$Dialog;->c:Ljava/lang/String;

    iput-object v0, p0, Lo/wT;->newCDNId:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lo/tH$Dialog;->e:Ljava/lang/String;

    iput-object v0, p0, Lo/wT;->reason:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lo/tH$Dialog;->d:Ljava/lang/String;

    iput-object v0, p0, Lo/wT;->mediatype:Ljava/lang/String;

    .line 55
    iget v0, p1, Lo/tH$Dialog;->j:I

    iput v0, p0, Lo/wT;->location_level:I

    .line 56
    iget v0, p1, Lo/tH$Dialog;->g:I

    iput v0, p0, Lo/wT;->location_rank:I

    .line 57
    iget-object v0, p1, Lo/tH$Dialog;->f:Ljava/lang/String;

    iput-object v0, p0, Lo/wT;->location_id:Ljava/lang/String;

    .line 58
    iget v0, p1, Lo/tH$Dialog;->i:I

    iput v0, p0, Lo/wT;->location_position:I

    .line 59
    iget-object v0, p1, Lo/tH$Dialog;->a:[Lo/tH$PendingIntent;

    array-length v0, v0

    new-array v0, v0, [Lo/wT$Activity;

    iput-object v0, p0, Lo/wT;->locations:[Lo/wT$Activity;

    .line 60
    iget-object v0, p1, Lo/tH$Dialog;->h:Ljava/lang/String;

    iput-object v0, p0, Lo/wT;->streamId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 61
    :goto_0
    iget-object v1, p1, Lo/tH$Dialog;->a:[Lo/tH$PendingIntent;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Lo/wT;->locations:[Lo/wT$Activity;

    new-instance v2, Lo/wT$Activity;

    iget-object v3, p1, Lo/tH$Dialog;->a:[Lo/tH$PendingIntent;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lo/wT$Activity;-><init>(Lo/tH$PendingIntent;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iget-wide v0, p1, Lo/tH$Dialog;->m:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/wT;->serverRegistrationTime:Ljava/lang/Long;

    return-object p0
.end method

.method public d(J)Lo/wT;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lo/wT;->b(J)V

    return-object p0
.end method
