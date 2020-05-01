.class public final Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/nnapi/NnApiDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# instance fields
.field accelerator_name:Ljava/lang/String;

.field cache_dir:Ljava/lang/String;

.field executionPreference:I

.field model_token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->executionPreference:I

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->accelerator_name:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->cache_dir:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->model_token:Ljava/lang/String;

    return-void
.end method
