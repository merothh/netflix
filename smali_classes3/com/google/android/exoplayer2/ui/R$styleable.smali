.class public final Lcom/google/android/exoplayer2/ui/R$styleable;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AspectRatioFrameLayout:[I

.field public static final AspectRatioFrameLayout_resize_mode:I = 0x0

.field public static final DefaultTimeBar:[I

.field public static final DefaultTimeBar_ad_marker_color:I = 0x0

.field public static final DefaultTimeBar_ad_marker_width:I = 0x1

.field public static final DefaultTimeBar_bar_height:I = 0x2

.field public static final DefaultTimeBar_buffered_color:I = 0x3

.field public static final DefaultTimeBar_played_ad_marker_color:I = 0x4

.field public static final DefaultTimeBar_played_color:I = 0x5

.field public static final DefaultTimeBar_scrubber_color:I = 0x6

.field public static final DefaultTimeBar_scrubber_disabled_size:I = 0x7

.field public static final DefaultTimeBar_scrubber_dragged_size:I = 0x8

.field public static final DefaultTimeBar_scrubber_enabled_size:I = 0x9

.field public static final DefaultTimeBar_touch_target_height:I = 0xa

.field public static final DefaultTimeBar_unplayed_color:I = 0xb

.field public static final PlaybackControlView:[I

.field public static final SimpleExoPlayerView:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0402af

    aput v2, v0, v1

    .line 128
    sput-object v0, Lcom/google/android/exoplayer2/ui/R$styleable;->AspectRatioFrameLayout:[I

    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 130
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar:[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 143
    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView:[I

    new-array v0, v0, [I

    .line 149
    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/ui/R$styleable;->SimpleExoPlayerView:[I

    return-void

    :array_0
    .array-data 4
        0x7f040026
        0x7f040027
        0x7f040049
        0x7f040069
        0x7f040277
        0x7f040278
        0x7f0402ce
        0x7f0402cf
        0x7f0402d0
        0x7f0402d1
        0x7f040395
        0x7f04039c
    .end array-data

    :array_1
    .array-data 4
        0x7f0400f6
        0x7f040161
        0x7f0402ae
        0x7f0402b3
        0x7f0402fa
    .end array-data

    :array_2
    .array-data 4
        0x7f040040
        0x7f0400f6
        0x7f040102
        0x7f040161
        0x7f040189
        0x7f040279
        0x7f0402af
        0x7f0402b3
        0x7f0402fa
        0x7f040327
        0x7f0403ae
        0x7f0403af
    .end array-data
.end method
