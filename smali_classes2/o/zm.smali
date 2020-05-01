.class Lo/zm;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final d:Lo/zm;


# instance fields
.field final a:Ljava/lang/String;

.field final c:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

.field final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lo/zm;

    sget-object v1, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->a:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    const-string v2, "unknown"

    const-string v3, "defaultIpAddr"

    invoke-direct {v0, v1, v2, v3}, Lo/zm;-><init>(Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/zm;->d:Lo/zm;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/zm;->c:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    const-string p1, ""

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    .line 30
    :goto_0
    iput-object p2, p0, Lo/zm;->e:Ljava/lang/String;

    if-eqz p3, :cond_1

    move-object p1, p3

    .line 31
    :cond_1
    iput-object p1, p0, Lo/zm;->a:Ljava/lang/String;

    return-void
.end method

.method public static c(Landroid/content/Context;)Lo/zm;
    .locals 5

    if-nez p0, :cond_0

    .line 55
    sget-object p0, Lo/zm;->d:Lo/zm;

    return-object p0

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->n(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_3

    .line 62
    sget-object v3, Lo/zm$5;->b:[I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "phone"

    .line 67
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->c(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->d(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object p0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->c(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v2

    .line 74
    :cond_3
    :goto_0
    new-instance p0, Lo/zm;

    invoke-direct {p0, v1, v2, v0}, Lo/zm;-><init>(Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 38
    :cond_1
    check-cast p1, Lo/zm;

    .line 39
    iget-object v2, p0, Lo/zm;->c:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    iget-object v3, p1, Lo/zm;->c:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lo/zm;->e:Ljava/lang/String;

    iget-object v3, p1, Lo/zm;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/zm;->a:Ljava/lang/String;

    iget-object p1, p1, Lo/zm;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 44
    iget-object v0, p0, Lo/zm;->c:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    iget-object v1, p0, Lo/zm;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 46
    iget-object v1, p0, Lo/zm;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkKey{mNetType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/zm;->c:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNetworkId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/zm;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mLocalIp=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/zm;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
