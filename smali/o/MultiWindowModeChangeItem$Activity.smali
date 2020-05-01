.class final Lo/MultiWindowModeChangeItem$Activity;
.super Ljava/lang/ref/WeakReference;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MultiWindowModeChangeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lo/WindowVisibilityItem<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final a:Z

.field c:Lo/Slice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Slice<",
            "*>;"
        }
    .end annotation
.end field

.field final d:Lo/FileBackupHelperBase;


# direct methods
.method constructor <init>(Lo/FileBackupHelperBase;Lo/WindowVisibilityItem;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            "Lo/WindowVisibilityItem<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lo/WindowVisibilityItem<",
            "*>;>;Z)V"
        }
    .end annotation

    .line 180
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 181
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FileBackupHelperBase;

    iput-object p1, p0, Lo/MultiWindowModeChangeItem$Activity;->d:Lo/FileBackupHelperBase;

    .line 183
    invoke-virtual {p2}, Lo/WindowVisibilityItem;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 184
    invoke-virtual {p2}, Lo/WindowVisibilityItem;->a()Lo/Slice;

    move-result-object p1

    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Slice;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lo/MultiWindowModeChangeItem$Activity;->c:Lo/Slice;

    .line 185
    invoke-virtual {p2}, Lo/WindowVisibilityItem;->b()Z

    move-result p1

    iput-boolean p1, p0, Lo/MultiWindowModeChangeItem$Activity;->a:Z

    return-void
.end method


# virtual methods
.method d()V
    .locals 1

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lo/MultiWindowModeChangeItem$Activity;->c:Lo/Slice;

    .line 190
    invoke-virtual {p0}, Lo/MultiWindowModeChangeItem$Activity;->clear()V

    return-void
.end method
