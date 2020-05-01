.class Lo/SetCommand$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SyntheticKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SetCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/SetCommand;


# direct methods
.method constructor <init>(Lo/SetCommand;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lo/SetCommand$2;->e:Lo/SetCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/LegacyFaceDetectMapper;ILo/LegacyResultMapper;Lo/CryptoObject;)Lo/LegacyRequestMapper;
    .locals 2

    .line 56
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->e()Lo/GestureLibraries;

    move-result-object v0

    .line 57
    sget-object v1, Lo/GestureLibrary;->d:Lo/GestureLibraries;

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lo/SetCommand$2;->e:Lo/SetCommand;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/SetCommand;->c(Lo/LegacyFaceDetectMapper;ILo/LegacyResultMapper;Lo/CryptoObject;)Lo/LegacyMetadataMapper;

    move-result-object p1

    return-object p1

    .line 59
    :cond_0
    sget-object v1, Lo/GestureLibrary;->e:Lo/GestureLibraries;

    if-ne v0, v1, :cond_1

    .line 60
    iget-object v0, p0, Lo/SetCommand$2;->e:Lo/SetCommand;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/SetCommand;->e(Lo/LegacyFaceDetectMapper;ILo/LegacyResultMapper;Lo/CryptoObject;)Lo/LegacyRequestMapper;

    move-result-object p1

    return-object p1

    .line 61
    :cond_1
    sget-object v1, Lo/GestureLibrary;->g:Lo/GestureLibraries;

    if-ne v0, v1, :cond_2

    .line 62
    iget-object v0, p0, Lo/SetCommand$2;->e:Lo/SetCommand;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/SetCommand;->d(Lo/LegacyFaceDetectMapper;ILo/LegacyResultMapper;Lo/CryptoObject;)Lo/LegacyRequestMapper;

    move-result-object p1

    return-object p1

    .line 63
    :cond_2
    sget-object p2, Lo/GestureLibraries;->a:Lo/GestureLibraries;

    if-eq v0, p2, :cond_3

    .line 66
    iget-object p2, p0, Lo/SetCommand$2;->e:Lo/SetCommand;

    invoke-virtual {p2, p1, p4}, Lo/SetCommand;->b(Lo/LegacyFaceDetectMapper;Lo/CryptoObject;)Lo/LegacyMetadataMapper;

    move-result-object p1

    return-object p1

    .line 64
    :cond_3
    new-instance p2, Lcom/facebook/imagepipeline/decoder/DecodeException;

    const-string p3, "unknown image format"

    invoke-direct {p2, p3, p1}, Lcom/facebook/imagepipeline/decoder/DecodeException;-><init>(Ljava/lang/String;Lo/LegacyFaceDetectMapper;)V

    throw p2
.end method
