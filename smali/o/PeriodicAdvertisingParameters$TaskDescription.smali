.class Lo/PeriodicAdvertisingParameters$TaskDescription;
.super Lo/SyncStats;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PeriodicAdvertisingParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SyncStats<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private final b:Landroid/os/Handler;

.field final c:I

.field private final d:J


# direct methods
.method constructor <init>(Landroid/os/Handler;IJ)V
    .locals 0

    .line 315
    invoke-direct {p0}, Lo/SyncStats;-><init>()V

    .line 316
    iput-object p1, p0, Lo/PeriodicAdvertisingParameters$TaskDescription;->b:Landroid/os/Handler;

    .line 317
    iput p2, p0, Lo/PeriodicAdvertisingParameters$TaskDescription;->c:I

    .line 318
    iput-wide p3, p0, Lo/PeriodicAdvertisingParameters$TaskDescription;->d:J

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;Lo/AppsQueryHelper;)V
    .locals 0

    .line 308
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lo/PeriodicAdvertisingParameters$TaskDescription;->d(Landroid/graphics/Bitmap;Lo/AppsQueryHelper;)V

    return-void
.end method

.method b_()Landroid/graphics/Bitmap;
    .locals 1

    .line 322
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters$TaskDescription;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public d(Landroid/graphics/Bitmap;Lo/AppsQueryHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lo/AppsQueryHelper<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lo/PeriodicAdvertisingParameters$TaskDescription;->a:Landroid/graphics/Bitmap;

    .line 329
    iget-object p1, p0, Lo/PeriodicAdvertisingParameters$TaskDescription;->b:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 330
    iget-object p2, p0, Lo/PeriodicAdvertisingParameters$TaskDescription;->b:Landroid/os/Handler;

    iget-wide v0, p0, Lo/PeriodicAdvertisingParameters$TaskDescription;->d:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
