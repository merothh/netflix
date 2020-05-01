.class public final enum Lcom/netflix/mediaclient/util/DeviceCategory;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/util/DeviceCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/util/DeviceCategory;

.field public static final enum b:Lcom/netflix/mediaclient/util/DeviceCategory;

.field public static final enum c:Lcom/netflix/mediaclient/util/DeviceCategory;

.field public static final enum d:Lcom/netflix/mediaclient/util/DeviceCategory;

.field public static final enum e:Lcom/netflix/mediaclient/util/DeviceCategory;

.field public static final enum h:Lcom/netflix/mediaclient/util/DeviceCategory;

.field public static final enum i:Lcom/netflix/mediaclient/util/DeviceCategory;

.field private static final synthetic j:[Lcom/netflix/mediaclient/util/DeviceCategory;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/util/DeviceCategory;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    const-string v3, "unknown"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/util/DeviceCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->e:Lcom/netflix/mediaclient/util/DeviceCategory;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/util/DeviceCategory;

    const/4 v2, 0x1

    const-string v3, "PHONE"

    const-string v4, "phone"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/util/DeviceCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->b:Lcom/netflix/mediaclient/util/DeviceCategory;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/util/DeviceCategory;

    const/4 v3, 0x2

    const-string v4, "TABLET"

    const-string v5, "tablet"

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/util/DeviceCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->a:Lcom/netflix/mediaclient/util/DeviceCategory;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/util/DeviceCategory;

    const/4 v4, 0x3

    const-string v5, "GOOGLE_TV"

    const-string v6, "google-tv"

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/util/DeviceCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->d:Lcom/netflix/mediaclient/util/DeviceCategory;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/util/DeviceCategory;

    const/4 v5, 0x4

    const-string v6, "ANDROID_TV"

    const-string v7, "android-tv"

    invoke-direct {v0, v6, v5, v7}, Lcom/netflix/mediaclient/util/DeviceCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->c:Lcom/netflix/mediaclient/util/DeviceCategory;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/util/DeviceCategory;

    const/4 v6, 0x5

    const-string v7, "CHROME_OS"

    const-string v8, "chrome-os"

    invoke-direct {v0, v7, v6, v8}, Lcom/netflix/mediaclient/util/DeviceCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->h:Lcom/netflix/mediaclient/util/DeviceCategory;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/util/DeviceCategory;

    const/4 v7, 0x6

    const-string v8, "ANDROID_STB"

    const-string v9, "android-stb"

    invoke-direct {v0, v8, v7, v9}, Lcom/netflix/mediaclient/util/DeviceCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->i:Lcom/netflix/mediaclient/util/DeviceCategory;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/mediaclient/util/DeviceCategory;

    .line 19
    sget-object v8, Lcom/netflix/mediaclient/util/DeviceCategory;->e:Lcom/netflix/mediaclient/util/DeviceCategory;

    aput-object v8, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/util/DeviceCategory;->b:Lcom/netflix/mediaclient/util/DeviceCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/DeviceCategory;->a:Lcom/netflix/mediaclient/util/DeviceCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/util/DeviceCategory;->d:Lcom/netflix/mediaclient/util/DeviceCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/util/DeviceCategory;->c:Lcom/netflix/mediaclient/util/DeviceCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/util/DeviceCategory;->h:Lcom/netflix/mediaclient/util/DeviceCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/util/DeviceCategory;->i:Lcom/netflix/mediaclient/util/DeviceCategory;

    aput-object v1, v0, v7

    sput-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->j:[Lcom/netflix/mediaclient/util/DeviceCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/netflix/mediaclient/util/DeviceCategory;->f:Ljava/lang/String;

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->b:Lcom/netflix/mediaclient/util/DeviceCategory;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/DeviceCategory;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    sget-object p0, Lcom/netflix/mediaclient/util/DeviceCategory;->b:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object p0

    .line 54
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->a:Lcom/netflix/mediaclient/util/DeviceCategory;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/DeviceCategory;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    sget-object p0, Lcom/netflix/mediaclient/util/DeviceCategory;->a:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object p0

    .line 56
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->d:Lcom/netflix/mediaclient/util/DeviceCategory;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/DeviceCategory;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    sget-object p0, Lcom/netflix/mediaclient/util/DeviceCategory;->d:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object p0

    .line 58
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->c:Lcom/netflix/mediaclient/util/DeviceCategory;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/DeviceCategory;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    sget-object p0, Lcom/netflix/mediaclient/util/DeviceCategory;->c:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object p0

    .line 60
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->h:Lcom/netflix/mediaclient/util/DeviceCategory;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/DeviceCategory;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61
    sget-object p0, Lcom/netflix/mediaclient/util/DeviceCategory;->h:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object p0

    .line 62
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->i:Lcom/netflix/mediaclient/util/DeviceCategory;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/DeviceCategory;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 63
    sget-object p0, Lcom/netflix/mediaclient/util/DeviceCategory;->i:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object p0

    .line 65
    :cond_6
    sget-object p0, Lcom/netflix/mediaclient/util/DeviceCategory;->e:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    .line 19
    const-class v0, Lcom/netflix/mediaclient/util/DeviceCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    .line 19
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->j:[Lcom/netflix/mediaclient/util/DeviceCategory;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/util/DeviceCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/util/DeviceCategory;->f:Ljava/lang/String;

    return-object v0
.end method
