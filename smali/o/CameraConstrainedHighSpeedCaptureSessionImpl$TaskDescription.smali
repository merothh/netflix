.class public interface abstract Lo/CameraConstrainedHighSpeedCaptureSessionImpl$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CameraConstrainedHighSpeedCaptureSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskDescription"
.end annotation


# virtual methods
.method public abstract a(Landroid/content/Context;Lo/RuntimePermissionPresentationInfo;Lo/SyntheticKey;Lo/CameraDeviceState;ZZZLo/CaptureRequest;Lo/AssetFileDescriptor;Lo/TriggerEventListener;Lo/TriggerEventListener;Lo/LegacySensorManager;Lo/LegacySensorManager;Lo/SensorEventListener;Lo/Camera;IIZILo/CameraManager;)Lo/CameraCaptureSessionCore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/RuntimePermissionPresentationInfo;",
            "Lo/SyntheticKey;",
            "Lo/CameraDeviceState;",
            "ZZZ",
            "Lo/CaptureRequest;",
            "Lo/AssetFileDescriptor;",
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lo/LegacyRequestMapper;",
            ">;",
            "Lo/TriggerEventListener<",
            "Lo/MacAuthenticatedInputStream;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lo/LegacySensorManager;",
            "Lo/LegacySensorManager;",
            "Lo/SensorEventListener;",
            "Lo/Camera;",
            "IIZI",
            "Lo/CameraManager;",
            ")",
            "Lo/CameraCaptureSessionCore;"
        }
    .end annotation
.end method
