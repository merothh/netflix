.class public Lo/CryptoObject;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final i:Lo/CryptoObject;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:I

.field public final d:Z

.field public final e:Z

.field public final f:Lo/ProgramList;

.field public final g:Landroid/graphics/Bitmap$Config;

.field public final h:Lo/SyntheticKey;

.field public final j:Landroid/graphics/ColorSpace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    invoke-static {}, Lo/CryptoObject;->e()Lo/CameraAccessException;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraAccessException;->f()Lo/CryptoObject;

    move-result-object v0

    sput-object v0, Lo/CryptoObject;->i:Lo/CryptoObject;

    return-void
.end method

.method public constructor <init>(Lo/CameraAccessException;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Lo/CameraAccessException;->b()I

    move-result v0

    iput v0, p0, Lo/CryptoObject;->c:I

    .line 77
    invoke-virtual {p1}, Lo/CameraAccessException;->c()Z

    move-result v0

    iput-boolean v0, p0, Lo/CryptoObject;->d:Z

    .line 78
    invoke-virtual {p1}, Lo/CameraAccessException;->a()Z

    move-result v0

    iput-boolean v0, p0, Lo/CryptoObject;->a:Z

    .line 79
    invoke-virtual {p1}, Lo/CameraAccessException;->e()Z

    move-result v0

    iput-boolean v0, p0, Lo/CryptoObject;->b:Z

    .line 80
    invoke-virtual {p1}, Lo/CameraAccessException;->i()Z

    move-result v0

    iput-boolean v0, p0, Lo/CryptoObject;->e:Z

    .line 81
    invoke-virtual {p1}, Lo/CameraAccessException;->h()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lo/CryptoObject;->g:Landroid/graphics/Bitmap$Config;

    .line 82
    invoke-virtual {p1}, Lo/CameraAccessException;->d()Lo/SyntheticKey;

    move-result-object v0

    iput-object v0, p0, Lo/CryptoObject;->h:Lo/SyntheticKey;

    .line 83
    invoke-virtual {p1}, Lo/CameraAccessException;->g()Lo/ProgramList;

    move-result-object v0

    iput-object v0, p0, Lo/CryptoObject;->f:Lo/ProgramList;

    .line 84
    invoke-virtual {p1}, Lo/CameraAccessException;->j()Landroid/graphics/ColorSpace;

    move-result-object p1

    iput-object p1, p0, Lo/CryptoObject;->j:Landroid/graphics/ColorSpace;

    return-void
.end method

.method public static a()Lo/CryptoObject;
    .locals 1

    .line 93
    sget-object v0, Lo/CryptoObject;->i:Lo/CryptoObject;

    return-object v0
.end method

.method public static e()Lo/CameraAccessException;
    .locals 1

    .line 102
    new-instance v0, Lo/CameraAccessException;

    invoke-direct {v0}, Lo/CameraAccessException;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    check-cast p1, Lo/CryptoObject;

    .line 112
    iget-boolean v2, p0, Lo/CryptoObject;->d:Z

    iget-boolean v3, p1, Lo/CryptoObject;->d:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 113
    :cond_2
    iget-boolean v2, p0, Lo/CryptoObject;->a:Z

    iget-boolean v3, p1, Lo/CryptoObject;->a:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 114
    :cond_3
    iget-boolean v2, p0, Lo/CryptoObject;->b:Z

    iget-boolean v3, p1, Lo/CryptoObject;->b:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 115
    :cond_4
    iget-boolean v2, p0, Lo/CryptoObject;->e:Z

    iget-boolean v3, p1, Lo/CryptoObject;->e:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 116
    :cond_5
    iget-object v2, p0, Lo/CryptoObject;->g:Landroid/graphics/Bitmap$Config;

    iget-object v3, p1, Lo/CryptoObject;->g:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_6

    return v1

    .line 117
    :cond_6
    iget-object v2, p0, Lo/CryptoObject;->h:Lo/SyntheticKey;

    iget-object v3, p1, Lo/CryptoObject;->h:Lo/SyntheticKey;

    if-eq v2, v3, :cond_7

    return v1

    .line 118
    :cond_7
    iget-object v2, p0, Lo/CryptoObject;->f:Lo/ProgramList;

    iget-object v3, p1, Lo/CryptoObject;->f:Lo/ProgramList;

    if-eq v2, v3, :cond_8

    return v1

    .line 119
    :cond_8
    iget-object v2, p0, Lo/CryptoObject;->j:Landroid/graphics/ColorSpace;

    iget-object p1, p1, Lo/CryptoObject;->j:Landroid/graphics/ColorSpace;

    if-eq v2, p1, :cond_9

    return v1

    :cond_9
    return v0

    :cond_a
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 125
    iget v0, p0, Lo/CryptoObject;->c:I

    mul-int/lit8 v0, v0, 0x1f

    .line 126
    iget-boolean v1, p0, Lo/CryptoObject;->d:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 127
    iget-boolean v1, p0, Lo/CryptoObject;->a:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 128
    iget-boolean v1, p0, Lo/CryptoObject;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 129
    iget-boolean v1, p0, Lo/CryptoObject;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 130
    iget-object v1, p0, Lo/CryptoObject;->g:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 131
    iget-object v1, p0, Lo/CryptoObject;->h:Lo/SyntheticKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 132
    iget-object v1, p0, Lo/CryptoObject;->f:Lo/ProgramList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 133
    iget-object v1, p0, Lo/CryptoObject;->j:Landroid/graphics/ColorSpace;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 139
    check-cast v0, Ljava/util/Locale;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lo/CryptoObject;->c:I

    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lo/CryptoObject;->d:Z

    .line 143
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lo/CryptoObject;->a:Z

    .line 144
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lo/CryptoObject;->b:Z

    .line 145
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lo/CryptoObject;->e:Z

    .line 146
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lo/CryptoObject;->g:Landroid/graphics/Bitmap$Config;

    .line 147
    invoke-virtual {v2}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lo/CryptoObject;->h:Lo/SyntheticKey;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Lo/CryptoObject;->f:Lo/ProgramList;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v2, p0, Lo/CryptoObject;->j:Landroid/graphics/ColorSpace;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "%d-%b-%b-%b-%b-%b-%s-%s-%s"

    .line 139
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
