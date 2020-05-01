.class public Lcom/airbnb/lottie/model/DocumentData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/DocumentData$Justification;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lcom/airbnb/lottie/model/DocumentData$Justification;

.field public final d:D

.field public final e:Ljava/lang/String;

.field public final f:D

.field public final g:D

.field public final h:I

.field public final i:I

.field public final j:D

.field public final n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DLcom/airbnb/lottie/model/DocumentData$Justification;IDDIIDZ)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/airbnb/lottie/model/DocumentData;->e:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/airbnb/lottie/model/DocumentData;->a:Ljava/lang/String;

    .line 35
    iput-wide p3, p0, Lcom/airbnb/lottie/model/DocumentData;->d:D

    .line 36
    iput-object p5, p0, Lcom/airbnb/lottie/model/DocumentData;->c:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 37
    iput p6, p0, Lcom/airbnb/lottie/model/DocumentData;->b:I

    .line 38
    iput-wide p7, p0, Lcom/airbnb/lottie/model/DocumentData;->j:D

    .line 39
    iput-wide p9, p0, Lcom/airbnb/lottie/model/DocumentData;->f:D

    .line 40
    iput p11, p0, Lcom/airbnb/lottie/model/DocumentData;->h:I

    .line 41
    iput p12, p0, Lcom/airbnb/lottie/model/DocumentData;->i:I

    .line 42
    iput-wide p13, p0, Lcom/airbnb/lottie/model/DocumentData;->g:D

    .line 43
    iput-boolean p15, p0, Lcom/airbnb/lottie/model/DocumentData;->n:Z

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/airbnb/lottie/model/DocumentData;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 50
    iget-object v1, p0, Lcom/airbnb/lottie/model/DocumentData;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    int-to-double v0, v0

    .line 51
    iget-wide v2, p0, Lcom/airbnb/lottie/model/DocumentData;->d:D

    add-double/2addr v0, v2

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 52
    iget-object v1, p0, Lcom/airbnb/lottie/model/DocumentData;->c:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/DocumentData$Justification;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 53
    iget v1, p0, Lcom/airbnb/lottie/model/DocumentData;->b:I

    add-int/2addr v0, v1

    .line 54
    iget-wide v1, p0, Lcom/airbnb/lottie/model/DocumentData;->j:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 56
    iget v1, p0, Lcom/airbnb/lottie/model/DocumentData;->h:I

    add-int/2addr v0, v1

    return v0
.end method
