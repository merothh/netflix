.class Lo/wl;
.super Lo/wo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/wl$ActionBar;,
        Lo/wl$StateListAnimator;
    }
.end annotation


# instance fields
.field protected abspos:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "abspos"
    .end annotation
.end field

.field protected cdnInfo:[Lo/wl$StateListAnimator;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cdninfo"
    .end annotation
.end field

.field protected cdn_rank:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cdnrank"
    .end annotation
.end field

.field protected fastSelThreshold:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fastselthreshold"
    .end annotation
.end field

.field protected location_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locid"
    .end annotation
.end field

.field protected location_level:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "loclv"
    .end annotation
.end field

.field protected location_rank:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locrank"
    .end annotation
.end field

.field protected mediatype:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mediatype"
    .end annotation
.end field

.field protected oldCdnId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oldcdnid"
    .end annotation
.end field

.field protected primaryCdnId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pricdnid"
    .end annotation
.end field

.field protected selReason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "selreason"
    .end annotation
.end field

.field protected selectedCdnBandwidth:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "selcdnbw"
    .end annotation
.end field

.field protected selectedCdnBandwidthData:[Lo/wl$ActionBar;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cdnbwdata"
    .end annotation
.end field

.field protected selectedCdnId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "selcdnid"
    .end annotation
.end field

.field protected selectedCdnRtt:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "selcdnrtt"
    .end annotation
.end field

.field protected streamId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "streamid"
    .end annotation
.end field

.field protected testreason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "testreason"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lo/wo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v1, "cdnsel"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 74
    invoke-direct/range {v0 .. v5}, Lo/wo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(J)Lo/wl;
    .locals 0

    .line 78
    invoke-virtual {p0, p1, p2}, Lo/wl;->b(J)V

    return-object p0
.end method

.method public a(Lo/tH$StateListAnimator;)Lo/wl;
    .locals 8

    .line 90
    iget v0, p1, Lo/tH$StateListAnimator;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/wl;->fastSelThreshold:Ljava/lang/Integer;

    .line 91
    iget v0, p1, Lo/tH$StateListAnimator;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/wl;->primaryCdnId:Ljava/lang/Integer;

    .line 92
    iget v0, p1, Lo/tH$StateListAnimator;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/wl;->selectedCdnBandwidth:Ljava/lang/Integer;

    .line 93
    iget v0, p1, Lo/tH$StateListAnimator;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/wl;->selectedCdnId:Ljava/lang/Integer;

    .line 94
    iget v0, p1, Lo/tH$StateListAnimator;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/wl;->selectedCdnRtt:Ljava/lang/Integer;

    .line 95
    iget-object v0, p1, Lo/tH$StateListAnimator;->h:Ljava/lang/String;

    iput-object v0, p0, Lo/wl;->selReason:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Lo/tH$StateListAnimator;->f:Ljava/lang/String;

    iput-object v0, p0, Lo/wl;->testreason:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Lo/tH$StateListAnimator;->k:Ljava/lang/String;

    iput-object v0, p0, Lo/wl;->mediatype:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Lo/tH$StateListAnimator;->o:Ljava/lang/String;

    iput-object v0, p0, Lo/wl;->location_id:Ljava/lang/String;

    .line 99
    iget v0, p1, Lo/tH$StateListAnimator;->m:I

    iput v0, p0, Lo/wl;->location_level:I

    .line 100
    iget v0, p1, Lo/tH$StateListAnimator;->l:I

    iput v0, p0, Lo/wl;->location_rank:I

    .line 101
    iget v0, p1, Lo/tH$StateListAnimator;->n:I

    iput v0, p0, Lo/wl;->abspos:I

    .line 102
    iget-object v0, p1, Lo/tH$StateListAnimator;->q:Ljava/lang/String;

    iput-object v0, p0, Lo/wl;->streamId:Ljava/lang/String;

    .line 103
    iget v0, p1, Lo/tH$StateListAnimator;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/wl;->cdn_rank:Ljava/lang/Integer;

    .line 106
    iget-object v0, p1, Lo/tH$StateListAnimator;->d:[Lo/tH$Application;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p1, Lo/tH$StateListAnimator;->d:[Lo/tH$Application;

    array-length v0, v0

    new-array v0, v0, [Lo/wl$ActionBar;

    iput-object v0, p0, Lo/wl;->selectedCdnBandwidthData:[Lo/wl$ActionBar;

    .line 109
    iget-object v0, p1, Lo/tH$StateListAnimator;->d:[Lo/tH$Application;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v0, v3

    .line 110
    iget-object v6, p0, Lo/wl;->selectedCdnBandwidthData:[Lo/wl$ActionBar;

    add-int/lit8 v7, v4, 0x1

    invoke-static {v5}, Lo/wl$ActionBar;->e(Lo/tH$Application;)Lo/wl$ActionBar;

    move-result-object v5

    aput-object v5, v6, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p1, Lo/tH$StateListAnimator;->e:[Lo/tH$Activity;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p1, Lo/tH$StateListAnimator;->e:[Lo/tH$Activity;

    array-length v0, v0

    new-array v0, v0, [Lo/wl$StateListAnimator;

    iput-object v0, p0, Lo/wl;->cdnInfo:[Lo/wl$StateListAnimator;

    .line 117
    iget-object p1, p1, Lo/tH$StateListAnimator;->e:[Lo/tH$Activity;

    array-length v0, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 118
    iget-object v4, p0, Lo/wl;->cdnInfo:[Lo/wl$StateListAnimator;

    add-int/lit8 v5, v2, 0x1

    invoke-static {v3}, Lo/wl$StateListAnimator;->c(Lo/tH$Activity;)Lo/wl$StateListAnimator;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public d(Lo/tH$StateListAnimator;)Lo/wl;
    .locals 0

    if-eqz p1, :cond_0

    .line 84
    iget p1, p1, Lo/tH$StateListAnimator;->j:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/wl;->oldCdnId:Ljava/lang/Integer;

    :cond_0
    return-object p0
.end method
