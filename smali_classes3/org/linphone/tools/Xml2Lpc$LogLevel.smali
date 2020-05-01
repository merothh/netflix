.class final enum Lorg/linphone/tools/Xml2Lpc$LogLevel;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/linphone/tools/Xml2Lpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/linphone/tools/Xml2Lpc$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/linphone/tools/Xml2Lpc$LogLevel;

.field public static final enum DEBUG:Lorg/linphone/tools/Xml2Lpc$LogLevel;

.field public static final enum ERROR:Lorg/linphone/tools/Xml2Lpc$LogLevel;

.field public static final enum MESSAGE:Lorg/linphone/tools/Xml2Lpc$LogLevel;

.field public static final enum WARNING:Lorg/linphone/tools/Xml2Lpc$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 9
    new-instance v0, Lorg/linphone/tools/Xml2Lpc$LogLevel;

    const/4 v1, 0x0

    const-string v2, "DEBUG"

    invoke-direct {v0, v2, v1}, Lorg/linphone/tools/Xml2Lpc$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/linphone/tools/Xml2Lpc$LogLevel;->DEBUG:Lorg/linphone/tools/Xml2Lpc$LogLevel;

    .line 10
    new-instance v0, Lorg/linphone/tools/Xml2Lpc$LogLevel;

    const/4 v2, 0x1

    const-string v3, "MESSAGE"

    invoke-direct {v0, v3, v2}, Lorg/linphone/tools/Xml2Lpc$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/linphone/tools/Xml2Lpc$LogLevel;->MESSAGE:Lorg/linphone/tools/Xml2Lpc$LogLevel;

    .line 11
    new-instance v0, Lorg/linphone/tools/Xml2Lpc$LogLevel;

    const/4 v3, 0x2

    const-string v4, "WARNING"

    invoke-direct {v0, v4, v3}, Lorg/linphone/tools/Xml2Lpc$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/linphone/tools/Xml2Lpc$LogLevel;->WARNING:Lorg/linphone/tools/Xml2Lpc$LogLevel;

    .line 12
    new-instance v0, Lorg/linphone/tools/Xml2Lpc$LogLevel;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v4}, Lorg/linphone/tools/Xml2Lpc$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/linphone/tools/Xml2Lpc$LogLevel;->ERROR:Lorg/linphone/tools/Xml2Lpc$LogLevel;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/linphone/tools/Xml2Lpc$LogLevel;

    .line 8
    sget-object v5, Lorg/linphone/tools/Xml2Lpc$LogLevel;->DEBUG:Lorg/linphone/tools/Xml2Lpc$LogLevel;

    aput-object v5, v0, v1

    sget-object v1, Lorg/linphone/tools/Xml2Lpc$LogLevel;->MESSAGE:Lorg/linphone/tools/Xml2Lpc$LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/tools/Xml2Lpc$LogLevel;->WARNING:Lorg/linphone/tools/Xml2Lpc$LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lorg/linphone/tools/Xml2Lpc$LogLevel;->ERROR:Lorg/linphone/tools/Xml2Lpc$LogLevel;

    aput-object v1, v0, v4

    sput-object v0, Lorg/linphone/tools/Xml2Lpc$LogLevel;->$VALUES:[Lorg/linphone/tools/Xml2Lpc$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/linphone/tools/Xml2Lpc$LogLevel;
    .locals 1

    .line 8
    const-class v0, Lorg/linphone/tools/Xml2Lpc$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/linphone/tools/Xml2Lpc$LogLevel;

    return-object p0
.end method

.method public static values()[Lorg/linphone/tools/Xml2Lpc$LogLevel;
    .locals 1

    .line 8
    sget-object v0, Lorg/linphone/tools/Xml2Lpc$LogLevel;->$VALUES:[Lorg/linphone/tools/Xml2Lpc$LogLevel;

    invoke-virtual {v0}, [Lorg/linphone/tools/Xml2Lpc$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/linphone/tools/Xml2Lpc$LogLevel;

    return-object v0
.end method
