.class public Lo/BluetoothAudioConfig;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FileBackupHelperBase;


# instance fields
.field private final a:Lo/BluetoothAdapter;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/net/URL;

.field private e:Ljava/lang/String;

.field private f:I

.field private volatile g:[B

.field private h:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 46
    sget-object v0, Lo/BluetoothAdapter;->b:Lo/BluetoothAdapter;

    invoke-direct {p0, p1, v0}, Lo/BluetoothAudioConfig;-><init>(Ljava/lang/String;Lo/BluetoothAdapter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/BluetoothAdapter;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lo/BluetoothAudioConfig;->d:Ljava/net/URL;

    .line 57
    invoke-static {p1}, Lo/FeatureInfo;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/BluetoothAudioConfig;->c:Ljava/lang/String;

    .line 58
    invoke-static {p2}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BluetoothAdapter;

    iput-object p1, p0, Lo/BluetoothAudioConfig;->a:Lo/BluetoothAdapter;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    .line 42
    sget-object v0, Lo/BluetoothAdapter;->b:Lo/BluetoothAdapter;

    invoke-direct {p0, p1, v0}, Lo/BluetoothAudioConfig;-><init>(Ljava/net/URL;Lo/BluetoothAdapter;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lo/BluetoothAdapter;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URL;

    iput-object p1, p0, Lo/BluetoothAudioConfig;->d:Ljava/net/URL;

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lo/BluetoothAudioConfig;->c:Ljava/lang/String;

    .line 52
    invoke-static {p2}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BluetoothAdapter;

    iput-object p1, p0, Lo/BluetoothAudioConfig;->a:Lo/BluetoothAdapter;

    return-void
.end method

.method private b()Ljava/net/URL;
    .locals 2

    .line 70
    iget-object v0, p0, Lo/BluetoothAudioConfig;->h:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/net/URL;

    invoke-direct {p0}, Lo/BluetoothAudioConfig;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/BluetoothAudioConfig;->h:Ljava/net/URL;

    .line 73
    :cond_0
    iget-object v0, p0, Lo/BluetoothAudioConfig;->h:Ljava/net/URL;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 87
    iget-object v0, p0, Lo/BluetoothAudioConfig;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lo/BluetoothAudioConfig;->c:Ljava/lang/String;

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v0, p0, Lo/BluetoothAudioConfig;->d:Ljava/net/URL;

    invoke-static {v0}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "@#&=*+-_.,:!?()/~\'%;$"

    .line 92
    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/BluetoothAudioConfig;->e:Ljava/lang/String;

    .line 94
    :cond_1
    iget-object v0, p0, Lo/BluetoothAudioConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method private f()[B
    .locals 2

    .line 129
    iget-object v0, p0, Lo/BluetoothAudioConfig;->g:[B

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lo/BluetoothAudioConfig;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lo/BluetoothAudioConfig;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lo/BluetoothAudioConfig;->g:[B

    .line 132
    :cond_0
    iget-object v0, p0, Lo/BluetoothAudioConfig;->g:[B

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lo/BluetoothAudioConfig;->a:Lo/BluetoothAdapter;

    invoke-interface {v0}, Lo/BluetoothAdapter;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/net/URL;
    .locals 1

    .line 62
    invoke-direct {p0}, Lo/BluetoothAudioConfig;->b()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/security/MessageDigest;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Lo/BluetoothAudioConfig;->f()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lo/BluetoothAudioConfig;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/BluetoothAudioConfig;->d:Ljava/net/URL;

    invoke-static {v0}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 137
    instance-of v0, p1, Lo/BluetoothAudioConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 138
    check-cast p1, Lo/BluetoothAudioConfig;

    .line 139
    invoke-virtual {p0}, Lo/BluetoothAudioConfig;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo/BluetoothAudioConfig;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/BluetoothAudioConfig;->a:Lo/BluetoothAdapter;

    iget-object p1, p1, Lo/BluetoothAudioConfig;->a:Lo/BluetoothAdapter;

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 147
    iget v0, p0, Lo/BluetoothAudioConfig;->f:I

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lo/BluetoothAudioConfig;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lo/BluetoothAudioConfig;->f:I

    .line 149
    iget v0, p0, Lo/BluetoothAudioConfig;->f:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/BluetoothAudioConfig;->a:Lo/BluetoothAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lo/BluetoothAudioConfig;->f:I

    .line 151
    :cond_0
    iget v0, p0, Lo/BluetoothAudioConfig;->f:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lo/BluetoothAudioConfig;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
