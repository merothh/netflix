.class Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# instance fields
.field mChangingConfigurations:I

.field protected mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

.field mPathName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1355
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 1361
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;)V
    .locals 1

    .prologue
    .line 1385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1355
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 1386
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    .line 1387
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mChangingConfigurations:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mChangingConfigurations:I

    .line 1388
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    invoke-static {v0}, Landroid/support/graphics/drawable/PathParser;->deepCopyNodes([Landroid/support/graphics/drawable/PathParser$PathDataNode;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 1389
    return-void
.end method


# virtual methods
.method public getPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    return-object v0
.end method

.method public isClipPath()Z
    .locals 1

    .prologue
    .line 1410
    const/4 v0, 0x0

    return v0
.end method

.method public toPath(Landroid/graphics/Path;)V
    .locals 1

    .prologue
    .line 1392
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1393
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    invoke-static {v0, p1}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->nodesToPath([Landroid/support/graphics/drawable/PathParser$PathDataNode;Landroid/graphics/Path;)V

    .line 1396
    :cond_0
    return-void
.end method
