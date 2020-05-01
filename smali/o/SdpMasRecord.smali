.class public final Lo/SdpMasRecord;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FullBackup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SdpMasRecord$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/FullBackup<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;Lo/FullBackupAgent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public c(Landroid/graphics/Bitmap;IILo/FullBackupAgent;)Lo/Slice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "II",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/Slice<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance p2, Lo/SdpMasRecord$Application;

    invoke-direct {p2, p1}, Lo/SdpMasRecord$Application;-><init>(Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public synthetic c(Ljava/lang/Object;Lo/FullBackupAgent;)Z
    .locals 0

    .line 14
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lo/SdpMasRecord;->b(Landroid/graphics/Bitmap;Lo/FullBackupAgent;)Z

    move-result p1

    return p1
.end method

.method public synthetic e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/Slice;
    .locals 0

    .line 14
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/SdpMasRecord;->c(Landroid/graphics/Bitmap;IILo/FullBackupAgent;)Lo/Slice;

    move-result-object p1

    return-object p1
.end method
