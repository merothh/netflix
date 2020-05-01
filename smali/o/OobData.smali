.class public Lo/OobData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FullBackup;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/FullBackup<",
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lo/AdvertiseCallback;

.field private final c:Lo/RulesUpdaterContract;


# direct methods
.method public constructor <init>(Lo/AdvertiseCallback;Lo/RulesUpdaterContract;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lo/OobData;->b:Lo/AdvertiseCallback;

    .line 38
    iput-object p2, p0, Lo/OobData;->c:Lo/RulesUpdaterContract;

    return-void
.end method


# virtual methods
.method public synthetic c(Ljava/lang/Object;Lo/FullBackupAgent;)Z
    .locals 0

    .line 31
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lo/OobData;->d(Landroid/net/Uri;Lo/FullBackupAgent;)Z

    move-result p1

    return p1
.end method

.method public d(Landroid/net/Uri;Lo/FullBackupAgent;)Z
    .locals 0

    .line 43
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.resource"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e(Landroid/net/Uri;IILo/FullBackupAgent;)Lo/Slice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/Slice<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lo/OobData;->b:Lo/AdvertiseCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/AdvertiseCallback;->e(Landroid/net/Uri;IILo/FullBackupAgent;)Lo/Slice;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 54
    :cond_0
    invoke-interface {p1}, Lo/Slice;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object p4, p0, Lo/OobData;->c:Lo/RulesUpdaterContract;

    invoke-static {p4, p1, p2, p3}, Lo/BluetoothPbapClient;->c(Lo/RulesUpdaterContract;Landroid/graphics/drawable/Drawable;II)Lo/Slice;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/Slice;
    .locals 0

    .line 31
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/OobData;->e(Landroid/net/Uri;IILo/FullBackupAgent;)Lo/Slice;

    move-result-object p1

    return-object p1
.end method
