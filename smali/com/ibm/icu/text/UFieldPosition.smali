.class public Lcom/ibm/icu/text/UFieldPosition;
.super Ljava/text/FieldPosition;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private countVisibleFractionDigits:I

.field private fractionDigits:J


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 30
    invoke-direct {p0, v0}, Ljava/text/FieldPosition;-><init>(I)V

    .line 21
    iput v0, p0, Lcom/ibm/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/ibm/icu/text/UFieldPosition;->fractionDigits:J

    return-void
.end method

.method public constructor <init>(Ljava/text/Format$Field;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/ibm/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    const-wide/16 p1, 0x0

    .line 22
    iput-wide p1, p0, Lcom/ibm/icu/text/UFieldPosition;->fractionDigits:J

    return-void
.end method


# virtual methods
.method public getCountVisibleFractionDigits()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    iget v0, p0, Lcom/ibm/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    return v0
.end method

.method public getFractionDigits()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    iget-wide v0, p0, Lcom/ibm/icu/text/UFieldPosition;->fractionDigits:J

    return-wide v0
.end method

.method public setFractionDigits(IJ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    iput p1, p0, Lcom/ibm/icu/text/UFieldPosition;->countVisibleFractionDigits:I

    .line 67
    iput-wide p2, p0, Lcom/ibm/icu/text/UFieldPosition;->fractionDigits:J

    return-void
.end method
