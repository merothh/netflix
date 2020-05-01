.class public Lo/CameraAccessException;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Z

.field private f:Landroid/graphics/Bitmap$Config;

.field private h:Lo/SyntheticKey;

.field private i:Landroid/graphics/ColorSpace;

.field private j:Lo/ProgramList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 21
    iput v0, p0, Lo/CameraAccessException;->d:I

    .line 26
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lo/CameraAccessException;->f:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lo/CameraAccessException;->e:Z

    return v0
.end method

.method public b()I
    .locals 1

    .line 72
    iget v0, p0, Lo/CameraAccessException;->d:I

    return v0
.end method

.method public c(Landroid/graphics/Bitmap$Config;)Lo/CameraAccessException;
    .locals 0

    .line 197
    iput-object p1, p0, Lo/CameraAccessException;->f:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public c()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lo/CameraAccessException;->b:Z

    return v0
.end method

.method public d()Lo/SyntheticKey;
    .locals 1

    .line 171
    iget-object v0, p0, Lo/CameraAccessException;->h:Lo/SyntheticKey;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lo/CameraAccessException;->a:Z

    return v0
.end method

.method public f()Lo/CryptoObject;
    .locals 1

    .line 245
    new-instance v0, Lo/CryptoObject;

    invoke-direct {v0, p0}, Lo/CryptoObject;-><init>(Lo/CameraAccessException;)V

    return-object v0
.end method

.method public g()Lo/ProgramList;
    .locals 1

    .line 215
    iget-object v0, p0, Lo/CameraAccessException;->j:Lo/ProgramList;

    return-object v0
.end method

.method public h()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 189
    iget-object v0, p0, Lo/CameraAccessException;->f:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lo/CameraAccessException;->c:Z

    return v0
.end method

.method public j()Landroid/graphics/ColorSpace;
    .locals 1

    .line 236
    iget-object v0, p0, Lo/CameraAccessException;->i:Landroid/graphics/ColorSpace;

    return-object v0
.end method
