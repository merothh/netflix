.class Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CueStyle"
.end annotation


# instance fields
.field public final nextStyleIncrement:I

.field public final start:I

.field public final style:Landroid/text/style/CharacterStyle;


# direct methods
.method public constructor <init>(Landroid/text/style/CharacterStyle;II)V
    .locals 0

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->style:Landroid/text/style/CharacterStyle;

    .line 780
    iput p2, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    .line 781
    iput p3, p0, Lcom/google/android/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->nextStyleIncrement:I

    return-void
.end method
