.class public Lo/wT$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/wT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StateListAnimator"
.end annotation


# instance fields
.field private bitrate:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bitrate"
    .end annotation
.end field

.field private conf:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conf"
    .end annotation
.end field

.field private dur:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dur"
    .end annotation
.end field

.field private reason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reason"
    .end annotation
.end field

.field private time:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field

.field private tp:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tp"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/tH$SharedElementCallback;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iget-wide v0, p1, Lo/tH$SharedElementCallback;->e:J

    iput-wide v0, p0, Lo/wT$StateListAnimator;->time:J

    .line 121
    iget-object v0, p1, Lo/tH$SharedElementCallback;->a:Ljava/lang/String;

    iput-object v0, p0, Lo/wT$StateListAnimator;->reason:Ljava/lang/String;

    .line 122
    iget v0, p1, Lo/tH$SharedElementCallback;->c:I

    iput v0, p0, Lo/wT$StateListAnimator;->dur:I

    .line 123
    iget v0, p1, Lo/tH$SharedElementCallback;->b:I

    iput v0, p0, Lo/wT$StateListAnimator;->tp:I

    .line 124
    iget v0, p1, Lo/tH$SharedElementCallback;->d:F

    iput v0, p0, Lo/wT$StateListAnimator;->conf:F

    .line 125
    iget p1, p1, Lo/tH$SharedElementCallback;->h:I

    iput p1, p0, Lo/wT$StateListAnimator;->bitrate:I

    return-void
.end method
