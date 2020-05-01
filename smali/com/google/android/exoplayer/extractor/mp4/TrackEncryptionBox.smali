.class public final Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
.super Ljava/lang/Object;
.source "TrackEncryptionBox.java"


# instance fields
.field public final initializationVectorSize:I

.field public final isEncrypted:Z

.field public final keyId:[B


# direct methods
.method public constructor <init>(ZI[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->isEncrypted:Z

    iput p2, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    iput-object p3, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->keyId:[B

    return-void
.end method
