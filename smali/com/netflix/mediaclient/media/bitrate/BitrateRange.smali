.class public abstract Lcom/netflix/mediaclient/media/bitrate/BitrateRange;
.super Ljava/lang/Object;
.source "BitrateRange.java"


# instance fields
.field protected maximal:I

.field protected minimal:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netflix/mediaclient/media/bitrate/BitrateRange;->minimal:I

    iput p2, p0, Lcom/netflix/mediaclient/media/bitrate/BitrateRange;->maximal:I

    return-void
.end method


# virtual methods
.method public getMaximal()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/bitrate/BitrateRange;->maximal:I

    return v0
.end method

.method public getMinimal()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/bitrate/BitrateRange;->minimal:I

    return v0
.end method
