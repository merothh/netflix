.class public Lo/BluetoothHearingAid;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FullBackup;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/FullBackup<",
        "TDataType;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/FullBackup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/FullBackup<",
            "TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lo/FullBackup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lo/FullBackup<",
            "TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lo/BluetoothHearingAid;->d:Landroid/content/res/Resources;

    .line 46
    invoke-static {p2}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FullBackup;

    iput-object p1, p0, Lo/BluetoothHearingAid;->a:Lo/FullBackup;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;Lo/FullBackupAgent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;",
            "Lo/FullBackupAgent;",
            ")Z"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lo/BluetoothHearingAid;->a:Lo/FullBackup;

    invoke-interface {v0, p1, p2}, Lo/FullBackup;->c(Ljava/lang/Object;Lo/FullBackupAgent;)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/Slice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;II",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/Slice<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lo/BluetoothHearingAid;->a:Lo/FullBackup;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/FullBackup;->e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/Slice;

    move-result-object p1

    .line 59
    iget-object p2, p0, Lo/BluetoothHearingAid;->d:Landroid/content/res/Resources;

    invoke-static {p2, p1}, Lo/BluetoothSocket;->e(Landroid/content/res/Resources;Lo/Slice;)Lo/Slice;

    move-result-object p1

    return-object p1
.end method
