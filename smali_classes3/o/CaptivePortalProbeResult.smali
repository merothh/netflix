.class final Lo/CaptivePortalProbeResult;
.super Lo/DhcpErrorEvent;
.source ""


# instance fields
.field private final a:Z

.field private final d:I

.field private final e:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/DhcpErrorEvent;-><init>()V

    if-eqz p1, :cond_0

    .line 24
    iput-object p1, p0, Lo/CaptivePortalProbeResult;->e:Landroid/widget/SeekBar;

    .line 25
    iput p2, p0, Lo/CaptivePortalProbeResult;->d:I

    .line 26
    iput-boolean p3, p0, Lo/CaptivePortalProbeResult;->a:Z

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null view"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Landroid/widget/SeekBar;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/CaptivePortalProbeResult;->e:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lo/CaptivePortalProbeResult;->a:Z

    return v0
.end method

.method public d()I
    .locals 1

    .line 37
    iget v0, p0, Lo/CaptivePortalProbeResult;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lo/DhcpErrorEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 60
    check-cast p1, Lo/DhcpErrorEvent;

    .line 61
    iget-object v1, p0, Lo/CaptivePortalProbeResult;->e:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lo/DhcpErrorEvent;->a()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lo/CaptivePortalProbeResult;->d:I

    .line 62
    invoke-virtual {p1}, Lo/DhcpErrorEvent;->d()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lo/CaptivePortalProbeResult;->a:Z

    .line 63
    invoke-virtual {p1}, Lo/DhcpErrorEvent;->c()Z

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 72
    iget-object v0, p0, Lo/CaptivePortalProbeResult;->e:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 74
    iget v2, p0, Lo/CaptivePortalProbeResult;->d:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 76
    iget-boolean v1, p0, Lo/CaptivePortalProbeResult;->a:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeekBarProgressChangeEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CaptivePortalProbeResult;->e:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/CaptivePortalProbeResult;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/CaptivePortalProbeResult;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
