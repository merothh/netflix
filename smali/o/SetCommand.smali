.class public Lo/SetCommand;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SyntheticKey;


# instance fields
.field private final a:Lo/SyntheticKey;

.field private final b:Lo/SyntheticKey;

.field private final c:Lo/SyntheticKey;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/GestureLibraries;",
            "Lo/SyntheticKey;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lo/TonemapCurve;


# direct methods
.method public constructor <init>(Lo/SyntheticKey;Lo/SyntheticKey;Lo/TonemapCurve;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3, v0}, Lo/SetCommand;-><init>(Lo/SyntheticKey;Lo/SyntheticKey;Lo/TonemapCurve;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lo/SyntheticKey;Lo/SyntheticKey;Lo/TonemapCurve;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SyntheticKey;",
            "Lo/SyntheticKey;",
            "Lo/TonemapCurve;",
            "Ljava/util/Map<",
            "Lo/GestureLibraries;",
            "Lo/SyntheticKey;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lo/SetCommand$2;

    invoke-direct {v0, p0}, Lo/SetCommand$2;-><init>(Lo/SetCommand;)V

    iput-object v0, p0, Lo/SetCommand;->a:Lo/SyntheticKey;

    .line 85
    iput-object p1, p0, Lo/SetCommand;->b:Lo/SyntheticKey;

    .line 86
    iput-object p2, p0, Lo/SetCommand;->c:Lo/SyntheticKey;

    .line 87
    iput-object p3, p0, Lo/SetCommand;->e:Lo/TonemapCurve;

    .line 88
    iput-object p4, p0, Lo/SetCommand;->d:Ljava/util/Map;

    return-void
.end method

.method private a(Lo/ProgramList;Lo/CompatibilityInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ProgramList;",
            "Lo/CompatibilityInfo<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {p2}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 219
    invoke-interface {p1}, Lo/ProgramList;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 222
    :cond_1
    invoke-interface {p1, p2}, Lo/ProgramList;->e(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public b(Lo/LegacyFaceDetectMapper;Lo/CryptoObject;)Lo/LegacyMetadataMapper;
    .locals 4

    .line 152
    iget-object v0, p0, Lo/SetCommand;->e:Lo/TonemapCurve;

    iget-object v1, p2, Lo/CryptoObject;->g:Landroid/graphics/Bitmap$Config;

    iget-object v2, p2, Lo/CryptoObject;->j:Landroid/graphics/ColorSpace;

    const/4 v3, 0x0

    .line 153
    invoke-interface {v0, p1, v1, v3, v2}, Lo/TonemapCurve;->c(Lo/LegacyFaceDetectMapper;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lo/CompatibilityInfo;

    move-result-object v0

    .line 156
    :try_start_0
    iget-object p2, p2, Lo/CryptoObject;->f:Lo/ProgramList;

    invoke-direct {p0, p2, v0}, Lo/SetCommand;->a(Lo/ProgramList;Lo/CompatibilityInfo;)V

    .line 157
    new-instance p2, Lo/LegacyMetadataMapper;

    sget-object v1, Lo/RequestHolder;->a:Lo/LegacyResultMapper;

    .line 160
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->h()I

    move-result v2

    .line 161
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->j()I

    move-result p1

    invoke-direct {p2, v0, v1, v2, p1}, Lo/LegacyMetadataMapper;-><init>(Lo/CompatibilityInfo;Lo/LegacyResultMapper;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    return-object p2

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    throw p1
.end method

.method public b(Lo/LegacyFaceDetectMapper;ILo/LegacyResultMapper;Lo/CryptoObject;)Lo/LegacyRequestMapper;
    .locals 2

    .line 106
    iget-object v0, p4, Lo/CryptoObject;->h:Lo/SyntheticKey;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p4, Lo/CryptoObject;->h:Lo/SyntheticKey;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/SyntheticKey;->b(Lo/LegacyFaceDetectMapper;ILo/LegacyResultMapper;Lo/CryptoObject;)Lo/LegacyRequestMapper;

    move-result-object p1

    return-object p1

    .line 109
    :cond_0
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->e()Lo/GestureLibraries;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    sget-object v1, Lo/GestureLibraries;->a:Lo/GestureLibraries;

    if-ne v0, v1, :cond_2

    .line 112
    :cond_1
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->b()Ljava/io/InputStream;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lo/GestureOverlayView;->b(Ljava/io/InputStream;)Lo/GestureLibraries;

    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Lo/LegacyFaceDetectMapper;->c(Lo/GestureLibraries;)V

    .line 115
    :cond_2
    iget-object v1, p0, Lo/SetCommand;->d:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 116
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SyntheticKey;

    if-eqz v0, :cond_3

    .line 118
    invoke-interface {v0, p1, p2, p3, p4}, Lo/SyntheticKey;->b(Lo/LegacyFaceDetectMapper;ILo/LegacyResultMapper;Lo/CryptoObject;)Lo/LegacyRequestMapper;

    move-result-object p1

    return-object p1

    .line 121
    :cond_3
    iget-object v0, p0, Lo/SetCommand;->a:Lo/SyntheticKey;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/SyntheticKey;->b(Lo/LegacyFaceDetectMapper;ILo/LegacyResultMapper;Lo/CryptoObject;)Lo/LegacyRequestMapper;

    move-result-object p1

    return-object p1
.end method

.method public c(Lo/LegacyFaceDetectMapper;ILo/LegacyResultMapper;Lo/CryptoObject;)Lo/LegacyMetadataMapper;
    .locals 6

    .line 180
    iget-object v0, p0, Lo/SetCommand;->e:Lo/TonemapCurve;

    iget-object v2, p4, Lo/CryptoObject;->g:Landroid/graphics/Bitmap$Config;

    iget-object v5, p4, Lo/CryptoObject;->j:Landroid/graphics/ColorSpace;

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p2

    .line 181
    invoke-interface/range {v0 .. v5}, Lo/TonemapCurve;->d(Lo/LegacyFaceDetectMapper;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;ILandroid/graphics/ColorSpace;)Lo/CompatibilityInfo;

    move-result-object p2

    .line 184
    :try_start_0
    iget-object p4, p4, Lo/CryptoObject;->f:Lo/ProgramList;

    invoke-direct {p0, p4, p2}, Lo/SetCommand;->a(Lo/ProgramList;Lo/CompatibilityInfo;)V

    .line 185
    new-instance p4, Lo/LegacyMetadataMapper;

    .line 188
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->h()I

    move-result v0

    .line 189
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->j()I

    move-result p1

    invoke-direct {p4, p2, p3, v0, p1}, Lo/LegacyMetadataMapper;-><init>(Lo/CompatibilityInfo;Lo/LegacyResultMapper;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-virtual {p2}, Lo/CompatibilityInfo;->close()V

    return-object p4

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lo/CompatibilityInfo;->close()V

    throw p1
.end method

.method public d(Lo/LegacyFaceDetectMapper;ILo/LegacyResultMapper;Lo/CryptoObject;)Lo/LegacyRequestMapper;
    .locals 1

    .line 209
    iget-object v0, p0, Lo/SetCommand;->c:Lo/SyntheticKey;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/SyntheticKey;->b(Lo/LegacyFaceDetectMapper;ILo/LegacyResultMapper;Lo/CryptoObject;)Lo/LegacyRequestMapper;

    move-result-object p1

    return-object p1
.end method

.method public e(Lo/LegacyFaceDetectMapper;ILo/LegacyResultMapper;Lo/CryptoObject;)Lo/LegacyRequestMapper;
    .locals 2

    .line 135
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->i()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 136
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->g()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 139
    iget-boolean v0, p4, Lo/CryptoObject;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/SetCommand;->b:Lo/SyntheticKey;

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0, p1, p2, p3, p4}, Lo/SyntheticKey;->b(Lo/LegacyFaceDetectMapper;ILo/LegacyResultMapper;Lo/CryptoObject;)Lo/LegacyRequestMapper;

    move-result-object p1

    return-object p1

    .line 142
    :cond_0
    invoke-virtual {p0, p1, p4}, Lo/SetCommand;->b(Lo/LegacyFaceDetectMapper;Lo/CryptoObject;)Lo/LegacyMetadataMapper;

    move-result-object p1

    return-object p1

    .line 137
    :cond_1
    new-instance p2, Lcom/facebook/imagepipeline/decoder/DecodeException;

    const-string p3, "image width or height is incorrect"

    invoke-direct {p2, p3, p1}, Lcom/facebook/imagepipeline/decoder/DecodeException;-><init>(Ljava/lang/String;Lo/LegacyFaceDetectMapper;)V

    throw p2
.end method
