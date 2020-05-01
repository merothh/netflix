.class public Lo/CameraDeviceImpl$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# instance fields
.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 419
    iput-boolean v0, p0, Lo/CameraDeviceImpl$TaskDescription;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lo/CameraDeviceImpl$5;)V
    .locals 0

    .line 417
    invoke-direct {p0}, Lo/CameraDeviceImpl$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 429
    iget-boolean v0, p0, Lo/CameraDeviceImpl$TaskDescription;->e:Z

    return v0
.end method
