.class public Lo/LegacyMetadataMapper;
.super Lo/LegacyFocusStateMapper;
.source ""


# instance fields
.field private a:Lo/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CompatibilityInfo<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo/LegacyResultMapper;

.field private final c:I

.field private final d:I

.field private volatile e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lo/ConfigurationBoundResourceCache;Lo/LegacyResultMapper;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lo/ConfigurationBoundResourceCache<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lo/LegacyResultMapper;",
            "I)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 48
    invoke-direct/range {v0 .. v5}, Lo/LegacyMetadataMapper;-><init>(Landroid/graphics/Bitmap;Lo/ConfigurationBoundResourceCache;Lo/LegacyResultMapper;II)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lo/ConfigurationBoundResourceCache;Lo/LegacyResultMapper;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lo/ConfigurationBoundResourceCache<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lo/LegacyResultMapper;",
            "II)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lo/LegacyFocusStateMapper;-><init>()V

    .line 63
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lo/LegacyMetadataMapper;->e:Landroid/graphics/Bitmap;

    .line 64
    iget-object p1, p0, Lo/LegacyMetadataMapper;->e:Landroid/graphics/Bitmap;

    .line 66
    invoke-static {p2}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/ConfigurationBoundResourceCache;

    .line 64
    invoke-static {p1, p2}, Lo/CompatibilityInfo;->c(Ljava/lang/Object;Lo/ConfigurationBoundResourceCache;)Lo/CompatibilityInfo;

    move-result-object p1

    iput-object p1, p0, Lo/LegacyMetadataMapper;->a:Lo/CompatibilityInfo;

    .line 67
    iput-object p3, p0, Lo/LegacyMetadataMapper;->b:Lo/LegacyResultMapper;

    .line 68
    iput p4, p0, Lo/LegacyMetadataMapper;->d:I

    .line 69
    iput p5, p0, Lo/LegacyMetadataMapper;->c:I

    return-void
.end method

.method public constructor <init>(Lo/CompatibilityInfo;Lo/LegacyResultMapper;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lo/LegacyResultMapper;",
            "II)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lo/LegacyFocusStateMapper;-><init>()V

    .line 96
    invoke-virtual {p1}, Lo/CompatibilityInfo;->b()Lo/CompatibilityInfo;

    move-result-object p1

    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/CompatibilityInfo;

    iput-object p1, p0, Lo/LegacyMetadataMapper;->a:Lo/CompatibilityInfo;

    .line 97
    iget-object p1, p0, Lo/LegacyMetadataMapper;->a:Lo/CompatibilityInfo;

    invoke-virtual {p1}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lo/LegacyMetadataMapper;->e:Landroid/graphics/Bitmap;

    .line 98
    iput-object p2, p0, Lo/LegacyMetadataMapper;->b:Lo/LegacyResultMapper;

    .line 99
    iput p3, p0, Lo/LegacyMetadataMapper;->d:I

    .line 100
    iput p4, p0, Lo/LegacyMetadataMapper;->c:I

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static e(Landroid/graphics/Bitmap;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method private declared-synchronized j()Lo/CompatibilityInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CompatibilityInfo<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lo/LegacyMetadataMapper;->a:Lo/CompatibilityInfo;

    const/4 v1, 0x0

    .line 116
    iput-object v1, p0, Lo/LegacyMetadataMapper;->a:Lo/CompatibilityInfo;

    .line 117
    iput-object v1, p0, Lo/LegacyMetadataMapper;->e:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lo/LegacyMetadataMapper;->a:Lo/CompatibilityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Lo/LegacyResultMapper;
    .locals 1

    .line 225
    iget-object v0, p0, Lo/LegacyMetadataMapper;->b:Lo/LegacyResultMapper;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 173
    iget-object v0, p0, Lo/LegacyMetadataMapper;->e:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lo/ProgramSelector;->d(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lo/LegacyMetadataMapper;->j()Lo/CompatibilityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    :cond_0
    return-void
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    .line 165
    iget-object v0, p0, Lo/LegacyMetadataMapper;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 219
    iget v0, p0, Lo/LegacyMetadataMapper;->c:I

    return v0
.end method

.method public g()I
    .locals 2

    .line 194
    iget v0, p0, Lo/LegacyMetadataMapper;->d:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    iget v0, p0, Lo/LegacyMetadataMapper;->c:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lo/LegacyMetadataMapper;->e:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lo/LegacyMetadataMapper;->e(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0

    .line 197
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/LegacyMetadataMapper;->e:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lo/LegacyMetadataMapper;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 2

    .line 181
    iget v0, p0, Lo/LegacyMetadataMapper;->d:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    iget v0, p0, Lo/LegacyMetadataMapper;->c:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lo/LegacyMetadataMapper;->e:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lo/LegacyMetadataMapper;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0

    .line 184
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/LegacyMetadataMapper;->e:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lo/LegacyMetadataMapper;->e(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .line 214
    iget v0, p0, Lo/LegacyMetadataMapper;->d:I

    return v0
.end method
