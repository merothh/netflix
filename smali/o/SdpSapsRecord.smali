.class public final Lo/SdpSapsRecord;
.super Lo/BackupDataInput;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BackupDataInput<",
        "Lo/SdpSapsRecord;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/BackupDataInput;-><init>()V

    return-void
.end method

.method public static d(Lo/AndroidTestBaseUpdater;)Lo/SdpSapsRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AndroidTestBaseUpdater<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lo/SdpSapsRecord;"
        }
    .end annotation

    .line 67
    new-instance v0, Lo/SdpSapsRecord;

    invoke-direct {v0}, Lo/SdpSapsRecord;-><init>()V

    invoke-virtual {v0, p0}, Lo/SdpSapsRecord;->a(Lo/AndroidTestBaseUpdater;)Lo/BackupDataInput;

    move-result-object p0

    check-cast p0, Lo/SdpSapsRecord;

    return-object p0
.end method
