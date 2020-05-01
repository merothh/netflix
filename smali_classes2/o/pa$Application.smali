.class public Lo/pa$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/pa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation


# instance fields
.field public final mDebugInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dbgInfo"
    .end annotation
.end field

.field public final mFreeSpace:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "freeSpace"
    .end annotation
.end field

.field public final mIsEmulated:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emulated"
    .end annotation
.end field

.field public final mIsPrimaryStorage:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "primary"
    .end annotation
.end field

.field public final mIsRemovable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "removable"
    .end annotation
.end field

.field public final mIsWritable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "writable"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZZZJLjava/lang/String;)V
    .locals 0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-boolean p1, p0, Lo/pa$Application;->mIsRemovable:Z

    .line 310
    iput-boolean p2, p0, Lo/pa$Application;->mIsPrimaryStorage:Z

    .line 311
    iput-boolean p3, p0, Lo/pa$Application;->mIsWritable:Z

    .line 312
    iput-boolean p4, p0, Lo/pa$Application;->mIsEmulated:Z

    .line 313
    iput-wide p5, p0, Lo/pa$Application;->mFreeSpace:J

    .line 314
    iput-object p7, p0, Lo/pa$Application;->mDebugInfo:Ljava/lang/String;

    return-void
.end method
