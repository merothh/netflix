.class public Lo/HdmiPlaybackClient;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InputDeviceIdentifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HdmiPlaybackClient$Application;
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

.field private final b:Lo/LegacySensorManager;

.field private final c:Lo/AssetFileDescriptor;

.field private final d:Lo/SensorEventListener;

.field private final e:Lo/RuntimePermissionPresentationInfo;


# direct methods
.method public constructor <init>(Lo/LegacySensorManager;Lo/SensorEventListener;Lo/AssetFileDescriptor;Lo/RuntimePermissionPresentationInfo;Lo/InputDeviceIdentifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LegacySensorManager;",
            "Lo/SensorEventListener;",
            "Lo/AssetFileDescriptor;",
            "Lo/RuntimePermissionPresentationInfo;",
            "Lo/InputDeviceIdentifier<",
            "Lo/LegacyFaceDetectMapper;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lo/HdmiPlaybackClient;->b:Lo/LegacySensorManager;

    .line 67
    iput-object p2, p0, Lo/HdmiPlaybackClient;->d:Lo/SensorEventListener;

    .line 68
    iput-object p3, p0, Lo/HdmiPlaybackClient;->c:Lo/AssetFileDescriptor;

    .line 69
    iput-object p4, p0, Lo/HdmiPlaybackClient;->e:Lo/RuntimePermissionPresentationInfo;

    .line 70
    iput-object p5, p0, Lo/HdmiPlaybackClient;->a:Lo/InputDeviceIdentifier;

    return-void
.end method

.method private static a(Lcom/facebook/imagepipeline/request/ImageRequest;)Landroid/net/Uri;
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "fresco_partial"

    const-string v1, "true"

    .line 220
    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 221
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static a(Lo/InputManagerInternal;Ljava/lang/String;ZI)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputManagerInternal;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-interface {p0, p1}, Lo/InputManagerInternal;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "cached_value_found"

    if-eqz p2, :cond_1

    .line 196
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "encodedImageSize"

    .line 194
    invoke-static {p0, p1, p3, p2}, Lcom/facebook/common/internal/ImmutableMap;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 202
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-static {p0, p1}, Lcom/facebook/common/internal/ImmutableMap;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lo/HashSet;)Z
    .locals 0

    .line 49
    invoke-static {p0}, Lo/HdmiPlaybackClient;->b(Lo/HashSet;)Z

    move-result p0

    return p0
.end method

.method private b(Ljava/util/concurrent/atomic/AtomicBoolean;Lo/HdmiTimerRecordSources;)V
    .locals 1

    .line 209
    new-instance v0, Lo/HdmiPlaybackClient$2;

    invoke-direct {v0, p0, p1}, Lo/HdmiPlaybackClient$2;-><init>(Lo/HdmiPlaybackClient;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {p2, v0}, Lo/HdmiTimerRecordSources;->c(Lo/InputManager;)V

    return-void
.end method

.method static synthetic b(Lo/HdmiPlaybackClient;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lo/HdmiPlaybackClient;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V

    return-void
.end method

.method private static b(Lo/HashSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/HashSet<",
            "*>;)Z"
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lo/HashSet;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    invoke-virtual {p0}, Lo/HashSet;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/HashSet;->j()Ljava/lang/Exception;

    move-result-object p0

    instance-of p0, p0, Ljava/util/concurrent/CancellationException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;Lo/MacAuthenticatedInputStream;)Lo/Dictionary;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/HdmiTimerRecordSources;",
            "Lo/MacAuthenticatedInputStream;",
            ")",
            "Lo/Dictionary<",
            "Lo/LegacyFaceDetectMapper;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v2

    .line 106
    new-instance v7, Lo/HdmiPlaybackClient$5;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lo/HdmiPlaybackClient$5;-><init>(Lo/HdmiPlaybackClient;Lo/InputManagerInternal;Ljava/lang/String;Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;Lo/MacAuthenticatedInputStream;)V

    return-object v7
.end method

.method private d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;Lo/MacAuthenticatedInputStream;Lo/LegacyFaceDetectMapper;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "Lo/LegacyFaceDetectMapper;",
            ">;",
            "Lo/HdmiTimerRecordSources;",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyFaceDetectMapper;",
            ")V"
        }
    .end annotation

    .line 167
    new-instance v8, Lo/HdmiPlaybackClient$Application;

    iget-object v2, p0, Lo/HdmiPlaybackClient;->b:Lo/LegacySensorManager;

    iget-object v4, p0, Lo/HdmiPlaybackClient;->c:Lo/AssetFileDescriptor;

    iget-object v5, p0, Lo/HdmiPlaybackClient;->e:Lo/RuntimePermissionPresentationInfo;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lo/HdmiPlaybackClient$Application;-><init>(Lo/BrightnessChangeEvent;Lo/LegacySensorManager;Lo/MacAuthenticatedInputStream;Lo/AssetFileDescriptor;Lo/RuntimePermissionPresentationInfo;Lo/LegacyFaceDetectMapper;Lo/HdmiPlaybackClient$5;)V

    .line 175
    iget-object p1, p0, Lo/HdmiPlaybackClient;->a:Lo/InputDeviceIdentifier;

    invoke-interface {p1, v8, p2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-void
.end method


# virtual methods
.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 4
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

    .line 76
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->d()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->l()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iget-object v0, p0, Lo/HdmiPlaybackClient;->a:Lo/InputDeviceIdentifier;

    invoke-interface {v0, p1, p2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-void

    .line 82
    :cond_0
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v1

    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PartialDiskCacheProducer"

    invoke-interface {v1, v2, v3}, Lo/InputManagerInternal;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {v0}, Lo/HdmiPlaybackClient;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Landroid/net/Uri;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lo/HdmiPlaybackClient;->d:Lo/SensorEventListener;

    .line 88
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->c()Ljava/lang/Object;

    move-result-object v3

    .line 85
    invoke-interface {v2, v0, v1, v3}, Lo/SensorEventListener;->e(Lcom/facebook/imagepipeline/request/ImageRequest;Landroid/net/Uri;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 91
    iget-object v2, p0, Lo/HdmiPlaybackClient;->b:Lo/LegacySensorManager;

    .line 92
    invoke-virtual {v2, v0, v1}, Lo/LegacySensorManager;->d(Lo/MacAuthenticatedInputStream;Ljava/util/concurrent/atomic/AtomicBoolean;)Lo/HashSet;

    move-result-object v2

    .line 94
    invoke-direct {p0, p1, p2, v0}, Lo/HdmiPlaybackClient;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;Lo/MacAuthenticatedInputStream;)Lo/Dictionary;

    move-result-object p1

    .line 96
    invoke-virtual {v2, p1}, Lo/HashSet;->e(Lo/Dictionary;)Lo/HashSet;

    .line 97
    invoke-direct {p0, v1, p2}, Lo/HdmiPlaybackClient;->b(Ljava/util/concurrent/atomic/AtomicBoolean;Lo/HdmiTimerRecordSources;)V

    return-void
.end method
