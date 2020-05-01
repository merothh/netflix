.class public Lo/wl$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/wl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StateListAnimator"
.end annotation


# instance fields
.field public abspos:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "abspos"
    .end annotation
.end field

.field public cdnrank:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cdnrank"
    .end annotation
.end field

.field public duration:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field protected id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field protected level:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "level"
    .end annotation
.end field

.field protected locationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locid"
    .end annotation
.end field

.field protected lowgrade:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lowg"
    .end annotation
.end field

.field protected name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nm"
    .end annotation
.end field

.field protected rank:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rk"
    .end annotation
.end field

.field protected weight:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wt"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lo/tH$Activity;)Lo/wl$StateListAnimator;
    .locals 3

    .line 157
    new-instance v0, Lo/wl$StateListAnimator;

    invoke-direct {v0}, Lo/wl$StateListAnimator;-><init>()V

    .line 158
    iget v1, p0, Lo/tH$Activity;->c:I

    iput v1, v0, Lo/wl$StateListAnimator;->id:I

    .line 159
    iget-object v1, p0, Lo/tH$Activity;->a:Ljava/lang/String;

    iput-object v1, v0, Lo/wl$StateListAnimator;->name:Ljava/lang/String;

    .line 160
    iget v1, p0, Lo/tH$Activity;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lo/wl$StateListAnimator;->rank:Ljava/lang/Integer;

    .line 161
    iget v1, p0, Lo/tH$Activity;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lo/wl$StateListAnimator;->weight:Ljava/lang/Integer;

    .line 162
    iget-object v1, p0, Lo/tH$Activity;->b:Ljava/lang/String;

    iput-object v1, v0, Lo/wl$StateListAnimator;->locationId:Ljava/lang/String;

    .line 163
    iget v1, p0, Lo/tH$Activity;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lo/wl$StateListAnimator;->level:Ljava/lang/Integer;

    .line 164
    iget-boolean v1, p0, Lo/tH$Activity;->g:Z

    iput-boolean v1, v0, Lo/wl$StateListAnimator;->lowgrade:Z

    .line 165
    iget-wide v1, p0, Lo/tH$Activity;->h:J

    iput-wide v1, v0, Lo/wl$StateListAnimator;->duration:J

    .line 166
    iget v1, p0, Lo/tH$Activity;->o:I

    iput v1, v0, Lo/wl$StateListAnimator;->abspos:I

    .line 167
    iget p0, p0, Lo/tH$Activity;->n:I

    iput p0, v0, Lo/wl$StateListAnimator;->cdnrank:I

    return-object v0
.end method
