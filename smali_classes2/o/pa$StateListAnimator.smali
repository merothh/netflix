.class public Lo/pa$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/pa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListAnimator"
.end annotation


# instance fields
.field public transient b:J

.field public final mExternalStorageInfoList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "storageInfoList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/pa$Application;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberOfExternalStorage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "storageCount"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/pa$StateListAnimator;->mExternalStorageInfoList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 328
    iget-object v1, p0, Lo/pa$StateListAnimator;->mExternalStorageInfoList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lo/pa$StateListAnimator;->mExternalStorageInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/pa$Application;

    iget-boolean v1, v1, Lo/pa$Application;->mIsWritable:Z

    if-nez v1, :cond_0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 329
    invoke-static {p1, v1}, Lo/adk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public b(Lo/pa$Application;)V
    .locals 2

    .line 332
    iget-object v0, p0, Lo/pa$StateListAnimator;->mExternalStorageInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-wide v0, p1, Lo/pa$Application;->mFreeSpace:J

    iput-wide v0, p0, Lo/pa$StateListAnimator;->b:J

    .line 335
    :cond_0
    iget-object v0, p0, Lo/pa$StateListAnimator;->mExternalStorageInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object p1, p0, Lo/pa$StateListAnimator;->mExternalStorageInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lo/pa$StateListAnimator;->mNumberOfExternalStorage:I

    return-void
.end method
