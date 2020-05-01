.class public Lo/MarshalQueryableStreamConfiguration;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lo/MarshalQueryableNativeByteToInteger;

.field private b:Lo/Marshaler;

.field private c:Lo/MarshalQueryableRggbChannelVector;

.field private d:Lo/RequestQueue;

.field private final e:Lo/BlackLevelPattern;

.field private f:Lo/AssetFileDescriptor;

.field private h:Lo/CompatResources;

.field private i:Lo/RuntimePermissionPresentationInfo;


# direct methods
.method public constructor <init>(Lo/BlackLevelPattern;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BlackLevelPattern;

    iput-object p1, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    return-void
.end method

.method private a(I)Lo/MarshalQueryableReprocessFormatsMap;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lo/MarshalQueryableStreamConfiguration;->c()Lo/Marshaler;

    move-result-object p1

    return-object p1

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid MemoryChunkType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_1
    invoke-virtual {p0}, Lo/MarshalQueryableStreamConfiguration;->b()Lo/MarshalQueryableRggbChannelVector;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 101
    iget-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    invoke-virtual {v0}, Lo/BlackLevelPattern;->f()Lo/Face;

    move-result-object v0

    iget v0, v0, Lo/Face;->i:I

    return v0
.end method

.method public b()Lo/MarshalQueryableRggbChannelVector;
    .locals 4

    .line 105
    iget-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->c:Lo/MarshalQueryableRggbChannelVector;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lo/MarshalQueryableRggbChannelVector;

    iget-object v1, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 108
    invoke-virtual {v1}, Lo/BlackLevelPattern;->a()Lo/RuntimePermissionPresenter;

    move-result-object v1

    iget-object v2, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 109
    invoke-virtual {v2}, Lo/BlackLevelPattern;->d()Lo/Face;

    move-result-object v2

    iget-object v3, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 110
    invoke-virtual {v3}, Lo/BlackLevelPattern;->b()Lo/HighSpeedVideoConfiguration;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/MarshalQueryableRggbChannelVector;-><init>(Lo/RuntimePermissionPresenter;Lo/Face;Lo/HighSpeedVideoConfiguration;)V

    iput-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->c:Lo/MarshalQueryableRggbChannelVector;

    .line 112
    :cond_0
    iget-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->c:Lo/MarshalQueryableRggbChannelVector;

    return-object v0
.end method

.method public c(I)Lo/AssetFileDescriptor;
    .locals 2

    .line 120
    iget-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->f:Lo/AssetFileDescriptor;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lo/MarshalQueryableSize;

    .line 123
    invoke-direct {p0, p1}, Lo/MarshalQueryableStreamConfiguration;->a(I)Lo/MarshalQueryableReprocessFormatsMap;

    move-result-object p1

    invoke-virtual {p0}, Lo/MarshalQueryableStreamConfiguration;->f()Lo/CompatResources;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lo/MarshalQueryableSize;-><init>(Lo/MarshalQueryableReprocessFormatsMap;Lo/CompatResources;)V

    iput-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->f:Lo/AssetFileDescriptor;

    .line 125
    :cond_0
    iget-object p1, p0, Lo/MarshalQueryableStreamConfiguration;->f:Lo/AssetFileDescriptor;

    return-object p1
.end method

.method public c()Lo/Marshaler;
    .locals 4

    .line 81
    iget-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->b:Lo/Marshaler;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lo/Marshaler;

    iget-object v1, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 84
    invoke-virtual {v1}, Lo/BlackLevelPattern;->a()Lo/RuntimePermissionPresenter;

    move-result-object v1

    iget-object v2, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 85
    invoke-virtual {v2}, Lo/BlackLevelPattern;->d()Lo/Face;

    move-result-object v2

    iget-object v3, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 86
    invoke-virtual {v3}, Lo/BlackLevelPattern;->b()Lo/HighSpeedVideoConfiguration;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/Marshaler;-><init>(Lo/RuntimePermissionPresenter;Lo/Face;Lo/HighSpeedVideoConfiguration;)V

    iput-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->b:Lo/Marshaler;

    .line 88
    :cond_0
    iget-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->b:Lo/Marshaler;

    return-object v0
.end method

.method public d()Lo/MarshalQueryableNativeByteToInteger;
    .locals 3

    .line 92
    iget-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->a:Lo/MarshalQueryableNativeByteToInteger;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lo/MarshalQueryableNativeByteToInteger;

    iget-object v1, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 94
    invoke-virtual {v1}, Lo/BlackLevelPattern;->a()Lo/RuntimePermissionPresenter;

    move-result-object v1

    iget-object v2, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 95
    invoke-virtual {v2}, Lo/BlackLevelPattern;->f()Lo/Face;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/MarshalQueryableNativeByteToInteger;-><init>(Lo/RuntimePermissionPresenter;Lo/Face;)V

    iput-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->a:Lo/MarshalQueryableNativeByteToInteger;

    .line 97
    :cond_0
    iget-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->a:Lo/MarshalQueryableNativeByteToInteger;

    return-object v0
.end method

.method public e()Lo/RequestQueue;
    .locals 6

    .line 42
    iget-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->d:Lo/RequestQueue;

    if-nez v0, :cond_6

    .line 43
    iget-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    invoke-virtual {v0}, Lo/BlackLevelPattern;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "dummy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "dummy_with_tracking"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "experimental"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "legacy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "legacy_default_params"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    .line 71
    new-instance v0, Lo/MarshalQueryableBlackLevelPattern;

    iget-object v1, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 72
    invoke-virtual {v1}, Lo/BlackLevelPattern;->a()Lo/RuntimePermissionPresenter;

    move-result-object v1

    iget-object v2, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 73
    invoke-virtual {v2}, Lo/BlackLevelPattern;->e()Lo/Face;

    move-result-object v2

    iget-object v3, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 74
    invoke-virtual {v3}, Lo/BlackLevelPattern;->c()Lo/HighSpeedVideoConfiguration;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/MarshalQueryableBlackLevelPattern;-><init>(Lo/RuntimePermissionPresenter;Lo/Face;Lo/HighSpeedVideoConfiguration;)V

    iput-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->d:Lo/RequestQueue;

    goto :goto_2

    .line 62
    :cond_1
    new-instance v0, Lo/MarshalQueryableBlackLevelPattern;

    iget-object v1, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 64
    invoke-virtual {v1}, Lo/BlackLevelPattern;->a()Lo/RuntimePermissionPresenter;

    move-result-object v1

    .line 65
    invoke-static {}, Lo/MarshalQueryable;->e()Lo/Face;

    move-result-object v2

    iget-object v3, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 66
    invoke-virtual {v3}, Lo/BlackLevelPattern;->c()Lo/HighSpeedVideoConfiguration;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/MarshalQueryableBlackLevelPattern;-><init>(Lo/RuntimePermissionPresenter;Lo/Face;Lo/HighSpeedVideoConfiguration;)V

    iput-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->d:Lo/RequestQueue;

    goto :goto_2

    .line 52
    :cond_2
    new-instance v0, Lo/MarshalQueryablePrimitive;

    iget-object v1, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 54
    invoke-virtual {v1}, Lo/BlackLevelPattern;->h()I

    move-result v1

    iget-object v2, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 55
    invoke-virtual {v2}, Lo/BlackLevelPattern;->k()I

    move-result v2

    .line 56
    invoke-static {}, Lo/MarshalQueryableStreamConfigurationDuration;->c()Lo/MarshalQueryableStreamConfigurationDuration;

    move-result-object v3

    iget-object v4, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 57
    invoke-virtual {v4}, Lo/BlackLevelPattern;->o()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 58
    invoke-virtual {v4}, Lo/BlackLevelPattern;->a()Lo/RuntimePermissionPresenter;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-direct {v0, v1, v2, v3, v4}, Lo/MarshalQueryablePrimitive;-><init>(IILo/HighSpeedVideoConfiguration;Lo/RuntimePermissionPresenter;)V

    iput-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->d:Lo/RequestQueue;

    goto :goto_2

    .line 49
    :cond_4
    new-instance v0, Lo/MarshalQueryableColorSpaceTransform;

    invoke-direct {v0}, Lo/MarshalQueryableColorSpaceTransform;-><init>()V

    iput-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->d:Lo/RequestQueue;

    goto :goto_2

    .line 46
    :cond_5
    new-instance v0, Lo/MarshalQueryableMeteringRectangle;

    invoke-direct {v0}, Lo/MarshalQueryableMeteringRectangle;-><init>()V

    iput-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->d:Lo/RequestQueue;

    .line 77
    :cond_6
    :goto_2
    iget-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->d:Lo/RequestQueue;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f64eb86 -> :sswitch_4
        -0x41f50c37 -> :sswitch_3
        -0x181d2318 -> :sswitch_2
        -0x17f85147 -> :sswitch_1
        0x5b804a8 -> :sswitch_0
    .end sparse-switch
.end method

.method public f()Lo/CompatResources;
    .locals 2

    .line 129
    iget-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->h:Lo/CompatResources;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lo/CompatResources;

    invoke-virtual {p0}, Lo/MarshalQueryableStreamConfiguration;->h()Lo/RuntimePermissionPresentationInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/CompatResources;-><init>(Lo/RuntimePermissionPresentationInfo;)V

    iput-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->h:Lo/CompatResources;

    .line 132
    :cond_0
    iget-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->h:Lo/CompatResources;

    return-object v0
.end method

.method public h()Lo/RuntimePermissionPresentationInfo;
    .locals 4

    .line 145
    iget-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->i:Lo/RuntimePermissionPresentationInfo;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lo/MarshalQueryablePair;

    iget-object v1, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 147
    invoke-virtual {v1}, Lo/BlackLevelPattern;->a()Lo/RuntimePermissionPresenter;

    move-result-object v1

    iget-object v2, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 148
    invoke-virtual {v2}, Lo/BlackLevelPattern;->j()Lo/Face;

    move-result-object v2

    iget-object v3, p0, Lo/MarshalQueryableStreamConfiguration;->e:Lo/BlackLevelPattern;

    .line 149
    invoke-virtual {v3}, Lo/BlackLevelPattern;->i()Lo/HighSpeedVideoConfiguration;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/MarshalQueryablePair;-><init>(Lo/RuntimePermissionPresenter;Lo/Face;Lo/HighSpeedVideoConfiguration;)V

    iput-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->i:Lo/RuntimePermissionPresentationInfo;

    .line 151
    :cond_0
    iget-object v0, p0, Lo/MarshalQueryableStreamConfiguration;->i:Lo/RuntimePermissionPresentationInfo;

    return-object v0
.end method

.method public j()Lo/AssetFileDescriptor;
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Lo/MarshalQueryableStreamConfiguration;->c(I)Lo/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method
