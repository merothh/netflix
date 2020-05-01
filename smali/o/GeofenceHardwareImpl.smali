.class public Lo/GeofenceHardwareImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InputDeviceIdentifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GeofenceHardwareImpl$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/InputDeviceIdentifier<",
        "Lo/LegacyFaceDetectMapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/Executor;

.field private final e:Lo/AssetFileDescriptor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/AssetFileDescriptor;Lo/InputDeviceIdentifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/AssetFileDescriptor;",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lo/GeofenceHardwareImpl;->c:Ljava/util/concurrent/Executor;

    .line 48
    invoke-static {p2}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AssetFileDescriptor;

    iput-object p1, p0, Lo/GeofenceHardwareImpl;->e:Lo/AssetFileDescriptor;

    .line 49
    invoke-static {p3}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/InputDeviceIdentifier;

    iput-object p1, p0, Lo/GeofenceHardwareImpl;->a:Lo/InputDeviceIdentifier;

    return-void
.end method

.method static synthetic a(Lo/GeofenceHardwareImpl;Lo/LegacyFaceDetectMapper;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lo/GeofenceHardwareImpl;->c(Lo/LegacyFaceDetectMapper;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-void
.end method

.method static synthetic a(Lo/LegacyFaceDetectMapper;Lo/SplitDependencyLoader;)V
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lo/GeofenceHardwareImpl;->b(Lo/LegacyFaceDetectMapper;Lo/SplitDependencyLoader;)V

    return-void
.end method

.method private static b(Lo/LegacyFaceDetectMapper;Lo/SplitDependencyLoader;)V
    .locals 3

    .line 172
    invoke-virtual {p0}, Lo/LegacyFaceDetectMapper;->b()Ljava/io/InputStream;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lo/GestureOverlayView;->b(Ljava/io/InputStream;)Lo/GestureLibraries;

    move-result-object v1

    .line 174
    sget-object v2, Lo/GestureLibrary;->i:Lo/GestureLibraries;

    if-eq v1, v2, :cond_3

    sget-object v2, Lo/GestureLibrary;->f:Lo/GestureLibraries;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    sget-object v2, Lo/GestureLibrary;->h:Lo/GestureLibraries;

    if-eq v1, v2, :cond_2

    sget-object v2, Lo/GestureLibrary;->j:Lo/GestureLibraries;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong image format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :cond_2
    :goto_0
    invoke-static {}, Lo/OisSample;->c()Lo/RggbChannelVector;

    move-result-object v1

    .line 185
    invoke-interface {v1, v0, p1}, Lo/RggbChannelVector;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 186
    sget-object p1, Lo/GestureLibrary;->b:Lo/GestureLibraries;

    invoke-virtual {p0, p1}, Lo/LegacyFaceDetectMapper;->c(Lo/GestureLibraries;)V

    goto :goto_2

    .line 176
    :cond_3
    :goto_1
    invoke-static {}, Lo/OisSample;->c()Lo/RggbChannelVector;

    move-result-object v1

    const/16 v2, 0x50

    invoke-interface {v1, v0, p1, v2}, Lo/RggbChannelVector;->d(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 180
    sget-object p1, Lo/GestureLibrary;->d:Lo/GestureLibraries;

    invoke-virtual {p0, p1}, Lo/LegacyFaceDetectMapper;->c(Lo/GestureLibraries;)V

    :goto_2
    return-void
.end method

.method static synthetic c(Lo/LegacyFaceDetectMapper;)Lcom/facebook/common/util/TriState;
    .locals 0

    .line 34
    invoke-static {p0}, Lo/GeofenceHardwareImpl;->d(Lo/LegacyFaceDetectMapper;)Lcom/facebook/common/util/TriState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lo/GeofenceHardwareImpl;)Lo/AssetFileDescriptor;
    .locals 0

    .line 34
    iget-object p0, p0, Lo/GeofenceHardwareImpl;->e:Lo/AssetFileDescriptor;

    return-object p0
.end method

.method private c(Lo/LegacyFaceDetectMapper;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LegacyFaceDetectMapper;",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/HdmiTimerRecordSources;",
            ")V"
        }
    .end annotation

    .line 96
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {p1}, Lo/LegacyFaceDetectMapper;->b(Lo/LegacyFaceDetectMapper;)Lo/LegacyFaceDetectMapper;

    move-result-object v6

    .line 98
    new-instance p1, Lo/GeofenceHardwareImpl$4;

    .line 101
    invoke-interface {p3}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v3

    .line 103
    invoke-interface {p3}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v5

    const-string v4, "WebpTranscodeProducer"

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lo/GeofenceHardwareImpl$4;-><init>(Lo/GeofenceHardwareImpl;Lo/BrightnessChangeEvent;Lo/InputManagerInternal;Ljava/lang/String;Ljava/lang/String;Lo/LegacyFaceDetectMapper;)V

    .line 146
    iget-object p2, p0, Lo/GeofenceHardwareImpl;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static d(Lo/LegacyFaceDetectMapper;)Lcom/facebook/common/util/TriState;
    .locals 1

    .line 150
    invoke-static {p0}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p0}, Lo/LegacyFaceDetectMapper;->b()Ljava/io/InputStream;

    move-result-object p0

    .line 151
    invoke-static {p0}, Lo/GestureOverlayView;->b(Ljava/io/InputStream;)Lo/GestureLibraries;

    move-result-object p0

    .line 153
    invoke-static {p0}, Lo/GestureLibrary;->a(Lo/GestureLibraries;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-static {}, Lo/OisSample;->c()Lo/RggbChannelVector;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    sget-object p0, Lcom/facebook/common/util/TriState;->e:Lcom/facebook/common/util/TriState;

    return-object p0

    .line 159
    :cond_0
    invoke-interface {v0, p0}, Lo/RggbChannelVector;->d(Lo/GestureLibraries;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 158
    invoke-static {p0}, Lcom/facebook/common/util/TriState;->c(Z)Lcom/facebook/common/util/TriState;

    move-result-object p0

    return-object p0

    .line 160
    :cond_1
    sget-object v0, Lo/GestureLibraries;->a:Lo/GestureLibraries;

    if-ne p0, v0, :cond_2

    .line 163
    sget-object p0, Lcom/facebook/common/util/TriState;->c:Lcom/facebook/common/util/TriState;

    return-object p0

    .line 166
    :cond_2
    sget-object p0, Lcom/facebook/common/util/TriState;->e:Lcom/facebook/common/util/TriState;

    return-object p0
.end method


# virtual methods
.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/HdmiTimerRecordSources;",
            ")V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lo/GeofenceHardwareImpl;->a:Lo/InputDeviceIdentifier;

    new-instance v1, Lo/GeofenceHardwareImpl$StateListAnimator;

    invoke-direct {v1, p0, p1, p2}, Lo/GeofenceHardwareImpl$StateListAnimator;-><init>(Lo/GeofenceHardwareImpl;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    invoke-interface {v0, v1, p2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-void
.end method
