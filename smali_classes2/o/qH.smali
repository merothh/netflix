.class Lo/qH;
.super Lcom/google/android/exoplayer2/audio/AudioTrack;
.source ""


# static fields
.field private static final c:[F


# instance fields
.field private e:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 15
    fill-array-data v0, :array_0

    sput-object v0, Lo/qH;->c:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioTrack;-><init>(Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Lcom/google/android/exoplayer2/audio/AudioTrack$Listener;)V

    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 16
    fill-array-data p1, :array_0

    iput-object p1, p0, Lo/qH;->e:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        0x3f0ccccd    # 0.55f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public d(J)V
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Disabled TransitionEase"

    .line 36
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/NetflixExoLogUtil;->Log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
