.class public Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/NanoAppInstanceInfo;


# annotations
.annotation build Lo/SigningInfo;
.end annotation


# instance fields
.field private final b:I

.field private final e:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .annotation build Lo/SigningInfo;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderFactory;->b:I

    .line 25
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderFactory;->e:Z

    return-void
.end method


# virtual methods
.method public createImageTranscoder(Lo/GestureLibraries;Z)Lo/GeofenceHardwareRequestParcelable;
    .locals 2
    .annotation build Lo/SigningInfo;
    .end annotation

    .line 32
    sget-object v0, Lo/GestureLibrary;->d:Lo/GestureLibraries;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_0
    new-instance p1, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;

    iget v0, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderFactory;->b:I

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderFactory;->e:Z

    invoke-direct {p1, p2, v0, v1}, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;-><init>(ZIZ)V

    return-object p1
.end method
