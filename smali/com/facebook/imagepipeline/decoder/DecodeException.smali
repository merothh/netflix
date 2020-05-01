.class public Lcom/facebook/imagepipeline/decoder/DecodeException;
.super Ljava/lang/RuntimeException;
.source ""


# instance fields
.field private final c:Lo/LegacyFaceDetectMapper;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/LegacyFaceDetectMapper;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p2, p0, Lcom/facebook/imagepipeline/decoder/DecodeException;->c:Lo/LegacyFaceDetectMapper;

    return-void
.end method


# virtual methods
.method public d()Lo/LegacyFaceDetectMapper;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/DecodeException;->c:Lo/LegacyFaceDetectMapper;

    return-object v0
.end method
