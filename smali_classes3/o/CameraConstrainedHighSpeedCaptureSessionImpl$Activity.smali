.class public Lo/CameraConstrainedHighSpeedCaptureSessionImpl$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CameraConstrainedHighSpeedCaptureSessionImpl$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CameraConstrainedHighSpeedCaptureSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lo/RuntimePermissionPresentationInfo;Lo/SyntheticKey;Lo/CameraDeviceState;ZZZLo/CaptureRequest;Lo/AssetFileDescriptor;Lo/TriggerEventListener;Lo/TriggerEventListener;Lo/LegacySensorManager;Lo/LegacySensorManager;Lo/SensorEventListener;Lo/Camera;IIZILo/CameraManager;)Lo/CameraCaptureSessionCore;
    .locals 22
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

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v20, p20

    .line 343
    new-instance v21, Lo/CameraCaptureSessionCore;

    move-object/from16 v0, v21

    invoke-direct/range {v0 .. v20}, Lo/CameraCaptureSessionCore;-><init>(Landroid/content/Context;Lo/RuntimePermissionPresentationInfo;Lo/SyntheticKey;Lo/CameraDeviceState;ZZZLo/CaptureRequest;Lo/AssetFileDescriptor;Lo/TriggerEventListener;Lo/TriggerEventListener;Lo/LegacySensorManager;Lo/LegacySensorManager;Lo/SensorEventListener;Lo/Camera;IIZILo/CameraManager;)V

    return-object v21
.end method
