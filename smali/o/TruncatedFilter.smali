.class public Lo/TruncatedFilter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ScanSettings;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ScanSettings<",
        "Lo/AdvertisingSetParameters;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/Slice;Lo/FullBackupAgent;)Lo/Slice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Slice<",
            "Lo/AdvertisingSetParameters;",
            ">;",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/Slice<",
            "[B>;"
        }
    .end annotation

    .line 22
    invoke-interface {p1}, Lo/Slice;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AdvertisingSetParameters;

    .line 23
    invoke-virtual {p1}, Lo/AdvertisingSetParameters;->b()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 24
    new-instance p2, Lo/SdpRecord;

    invoke-static {p1}, Lo/OverlayInfo;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lo/SdpRecord;-><init>([B)V

    return-object p2
.end method
