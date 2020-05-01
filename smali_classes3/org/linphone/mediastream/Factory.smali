.class public Lorg/linphone/mediastream/Factory;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mNativePtr:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lorg/linphone/mediastream/Factory;->mNativePtr:J

    return-void
.end method

.method private native enableFilterFromName(JLjava/lang/String;Z)V
.end method

.method private native filterFromNameEnabled(JLjava/lang/String;)Z
.end method

.method private native getDecoderText(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native getEncoderText(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native setDeviceInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
.end method


# virtual methods
.method public enableFilterFromName(Ljava/lang/String;Z)V
    .locals 2

    .line 28
    iget-wide v0, p0, Lorg/linphone/mediastream/Factory;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/mediastream/Factory;->enableFilterFromName(JLjava/lang/String;Z)V

    return-void
.end method

.method public filterFromNameEnabled(Ljava/lang/String;)Z
    .locals 2

    .line 32
    iget-wide v0, p0, Lorg/linphone/mediastream/Factory;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/mediastream/Factory;->filterFromNameEnabled(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getDecoderText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 44
    iget-wide v0, p0, Lorg/linphone/mediastream/Factory;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/mediastream/Factory;->getDecoderText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEncoderText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 40
    iget-wide v0, p0, Lorg/linphone/mediastream/Factory;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/mediastream/Factory;->getEncoderText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 9

    .line 36
    iget-wide v1, p0, Lorg/linphone/mediastream/Factory;->mNativePtr:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/linphone/mediastream/Factory;->setDeviceInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method
