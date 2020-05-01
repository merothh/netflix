.class public Lo/CameraDeviceUserShim;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CameraDeviceState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CameraDeviceUserShim$Application;,
        Lo/CameraDeviceUserShim$Activity;
    }
.end annotation


# instance fields
.field private final d:Lo/CameraDeviceUserShim$Activity;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    new-instance v0, Lo/CameraDeviceUserShim$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/CameraDeviceUserShim$Application;-><init>(Lo/CameraDeviceUserShim$5;)V

    invoke-direct {p0, v0}, Lo/CameraDeviceUserShim;-><init>(Lo/CameraDeviceUserShim$Activity;)V

    return-void
.end method

.method public constructor <init>(Lo/CameraDeviceUserShim$Activity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/CameraDeviceUserShim$Activity;

    iput-object p1, p0, Lo/CameraDeviceUserShim;->d:Lo/CameraDeviceUserShim$Activity;

    return-void
.end method


# virtual methods
.method public a(I)Lo/LegacyResultMapper;
    .locals 2

    .line 66
    iget-object v0, p0, Lo/CameraDeviceUserShim;->d:Lo/CameraDeviceUserShim$Activity;

    .line 68
    invoke-interface {v0}, Lo/CameraDeviceUserShim$Activity;->e()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    invoke-static {p1, v0, v1}, Lo/RequestHolder;->d(IZZ)Lo/LegacyResultMapper;

    move-result-object p1

    return-object p1
.end method

.method public e(I)I
    .locals 3

    .line 51
    iget-object v0, p0, Lo/CameraDeviceUserShim;->d:Lo/CameraDeviceUserShim$Activity;

    invoke-interface {v0}, Lo/CameraDeviceUserShim$Activity;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 52
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 56
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const p1, 0x7fffffff

    return p1

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method
