.class public final enum Lcom/netflix/mediaclient/util/DeviceCategory;
.super Ljava/lang/Enum;
.source "DeviceCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/util/DeviceCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/util/DeviceCategory;

.field public static final enum ANDROID_TV:Lcom/netflix/mediaclient/util/DeviceCategory;

.field public static final enum GOOGLE_TV:Lcom/netflix/mediaclient/util/DeviceCategory;

.field public static final enum PHONE:Lcom/netflix/mediaclient/util/DeviceCategory;

.field public static final enum TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/util/DeviceCategory;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/netflix/mediaclient/util/DeviceCategory;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, "unknown"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/util/DeviceCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->UNKNOWN:Lcom/netflix/mediaclient/util/DeviceCategory;

    new-instance v0, Lcom/netflix/mediaclient/util/DeviceCategory;

    const-string/jumbo v1, "PHONE"

    const-string/jumbo v2, "phone"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/util/DeviceCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->PHONE:Lcom/netflix/mediaclient/util/DeviceCategory;

    new-instance v0, Lcom/netflix/mediaclient/util/DeviceCategory;

    const-string/jumbo v1, "TABLET"

    const-string/jumbo v2, "tablet"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/util/DeviceCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    new-instance v0, Lcom/netflix/mediaclient/util/DeviceCategory;

    const-string/jumbo v1, "GOOGLE_TV"

    const-string/jumbo v2, "google-tv"

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/util/DeviceCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->GOOGLE_TV:Lcom/netflix/mediaclient/util/DeviceCategory;

    new-instance v0, Lcom/netflix/mediaclient/util/DeviceCategory;

    const-string/jumbo v1, "ANDROID_TV"

    const-string/jumbo v2, "android-tv"

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/util/DeviceCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->ANDROID_TV:Lcom/netflix/mediaclient/util/DeviceCategory;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/util/DeviceCategory;

    sget-object v1, Lcom/netflix/mediaclient/util/DeviceCategory;->UNKNOWN:Lcom/netflix/mediaclient/util/DeviceCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/util/DeviceCategory;->PHONE:Lcom/netflix/mediaclient/util/DeviceCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/util/DeviceCategory;->GOOGLE_TV:Lcom/netflix/mediaclient/util/DeviceCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/util/DeviceCategory;->ANDROID_TV:Lcom/netflix/mediaclient/util/DeviceCategory;

    aput-object v1, v0, v7

    sput-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->$VALUES:[Lcom/netflix/mediaclient/util/DeviceCategory;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netflix/mediaclient/util/DeviceCategory;->value:Ljava/lang/String;

    return-void
.end method

.method public static find(Ljava/lang/String;)Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->PHONE:Lcom/netflix/mediaclient/util/DeviceCategory;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/DeviceCategory;->value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->PHONE:Lcom/netflix/mediaclient/util/DeviceCategory;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/DeviceCategory;->value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->GOOGLE_TV:Lcom/netflix/mediaclient/util/DeviceCategory;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/DeviceCategory;->value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->GOOGLE_TV:Lcom/netflix/mediaclient/util/DeviceCategory;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->ANDROID_TV:Lcom/netflix/mediaclient/util/DeviceCategory;

    iget-object v0, v0, Lcom/netflix/mediaclient/util/DeviceCategory;->value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->ANDROID_TV:Lcom/netflix/mediaclient/util/DeviceCategory;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->UNKNOWN:Lcom/netflix/mediaclient/util/DeviceCategory;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/util/DeviceCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->$VALUES:[Lcom/netflix/mediaclient/util/DeviceCategory;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/util/DeviceCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/util/DeviceCategory;->value:Ljava/lang/String;

    return-object v0
.end method
