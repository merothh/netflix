.class public Lo/ScanRecord;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ScanSettings;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ScanSettings<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lo/ScanRecord;->d:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public d(Lo/Slice;Lo/FullBackupAgent;)Lo/Slice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Slice<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/Slice<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object p2, p0, Lo/ScanRecord;->d:Landroid/content/res/Resources;

    invoke-static {p2, p1}, Lo/BluetoothSocket;->e(Landroid/content/res/Resources;Lo/Slice;)Lo/Slice;

    move-result-object p1

    return-object p1
.end method
