.class public Lo/AdvertiseData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FullBackup;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/FullBackup<",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/drawable/Drawable;IILo/FullBackupAgent;)Lo/Slice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "II",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/Slice<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 23
    invoke-static {p1}, Lo/UidTraffic;->b(Landroid/graphics/drawable/Drawable;)Lo/Slice;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ljava/lang/Object;Lo/FullBackupAgent;)Z
    .locals 0

    .line 13
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lo/AdvertiseData;->d(Landroid/graphics/drawable/Drawable;Lo/FullBackupAgent;)Z

    move-result p1

    return p1
.end method

.method public d(Landroid/graphics/drawable/Drawable;Lo/FullBackupAgent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/Slice;
    .locals 0

    .line 13
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/AdvertiseData;->b(Landroid/graphics/drawable/Drawable;IILo/FullBackupAgent;)Lo/Slice;

    move-result-object p1

    return-object p1
.end method
