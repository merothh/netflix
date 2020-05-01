.class public Lo/ConsumerIrManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MacAuthenticatedInputStream;


# instance fields
.field private final a:Lo/CameraConstrainedHighSpeedCaptureSession;

.field private final b:Lo/MacAuthenticatedInputStream;

.field private final c:Ljava/lang/String;

.field private final d:Lo/CryptoObject;

.field private final e:Lo/CameraDevice;

.field private final f:Ljava/lang/Object;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/CameraConstrainedHighSpeedCaptureSession;Lo/CameraDevice;Lo/CryptoObject;Lo/MacAuthenticatedInputStream;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/ConsumerIrManager;->c:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lo/ConsumerIrManager;->a:Lo/CameraConstrainedHighSpeedCaptureSession;

    .line 49
    iput-object p3, p0, Lo/ConsumerIrManager;->e:Lo/CameraDevice;

    .line 50
    iput-object p4, p0, Lo/ConsumerIrManager;->d:Lo/CryptoObject;

    .line 51
    iput-object p5, p0, Lo/ConsumerIrManager;->b:Lo/MacAuthenticatedInputStream;

    .line 52
    iput-object p6, p0, Lo/ConsumerIrManager;->i:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p2}, Lo/CameraConstrainedHighSpeedCaptureSession;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 56
    invoke-virtual {p3}, Lo/CameraDevice;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lo/ConsumerIrManager;->d:Lo/CryptoObject;

    iget-object v4, p0, Lo/ConsumerIrManager;->b:Lo/MacAuthenticatedInputStream;

    move-object v5, p6

    .line 53
    invoke-static/range {v0 .. v5}, Lo/ObbInfo;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lo/ConsumerIrManager;->h:I

    .line 60
    iput-object p7, p0, Lo/ConsumerIrManager;->f:Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide p1

    iput-wide p1, p0, Lo/ConsumerIrManager;->j:J

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lo/ConsumerIrManager;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 66
    instance-of v0, p1, Lo/ConsumerIrManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 69
    :cond_0
    check-cast p1, Lo/ConsumerIrManager;

    .line 70
    iget v0, p0, Lo/ConsumerIrManager;->h:I

    iget v2, p1, Lo/ConsumerIrManager;->h:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lo/ConsumerIrManager;->c:Ljava/lang/String;

    iget-object v2, p1, Lo/ConsumerIrManager;->c:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ConsumerIrManager;->a:Lo/CameraConstrainedHighSpeedCaptureSession;

    iget-object v2, p1, Lo/ConsumerIrManager;->a:Lo/CameraConstrainedHighSpeedCaptureSession;

    .line 72
    invoke-static {v0, v2}, Lo/Signature;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ConsumerIrManager;->e:Lo/CameraDevice;

    iget-object v2, p1, Lo/ConsumerIrManager;->e:Lo/CameraDevice;

    .line 73
    invoke-static {v0, v2}, Lo/Signature;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ConsumerIrManager;->d:Lo/CryptoObject;

    iget-object v2, p1, Lo/ConsumerIrManager;->d:Lo/CryptoObject;

    .line 74
    invoke-static {v0, v2}, Lo/Signature;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ConsumerIrManager;->b:Lo/MacAuthenticatedInputStream;

    iget-object v2, p1, Lo/ConsumerIrManager;->b:Lo/MacAuthenticatedInputStream;

    .line 75
    invoke-static {v0, v2}, Lo/Signature;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ConsumerIrManager;->i:Ljava/lang/String;

    iget-object p1, p1, Lo/ConsumerIrManager;->i:Ljava/lang/String;

    .line 76
    invoke-static {v0, p1}, Lo/Signature;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 81
    iget v0, p0, Lo/ConsumerIrManager;->h:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 101
    check-cast v0, Ljava/util/Locale;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lo/ConsumerIrManager;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lo/ConsumerIrManager;->a:Lo/CameraConstrainedHighSpeedCaptureSession;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lo/ConsumerIrManager;->e:Lo/CameraDevice;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lo/ConsumerIrManager;->d:Lo/CryptoObject;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lo/ConsumerIrManager;->b:Lo/MacAuthenticatedInputStream;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lo/ConsumerIrManager;->i:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget v2, p0, Lo/ConsumerIrManager;->h:I

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "%s_%s_%s_%s_%s_%s_%d"

    .line 101
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
