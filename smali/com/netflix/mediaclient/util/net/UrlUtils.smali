.class public Lcom/netflix/mediaclient/util/net/UrlUtils;
.super Ljava/lang/Object;
.source "UrlUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 20
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 21
    :cond_0
    const-string/jumbo v0, ""

    .line 35
    :goto_0
    return-object v0

    .line 23
    :cond_1
    const-string/jumbo v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 24
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 25
    const/4 v0, 0x0

    .line 29
    :goto_1
    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 30
    if-ltz v1, :cond_4

    .line 32
    :goto_2
    const/16 v2, 0x3a

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 33
    if-lez v2, :cond_2

    if-ge v2, v1, :cond_2

    move v1, v2

    .line 35
    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 30
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2
.end method
