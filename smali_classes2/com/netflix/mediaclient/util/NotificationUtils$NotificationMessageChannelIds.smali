.class public final enum Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/util/NotificationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationMessageChannelIds"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum d:Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;

.field public static final enum e:Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;

.field private static final synthetic f:[Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 56
    new-instance v0, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;

    const/4 v1, 0x0

    const-string v2, "OLD_DEFAULT_MESSAGES_CHANNEL"

    const-string v3, "messages_notitication_channel"

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;->e:Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;

    .line 61
    new-instance v0, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;

    const/4 v2, 0x1

    const-string v3, "NO_SOUND"

    const-string v4, "MESSAGE_SOUND_SILENCE.mp3"

    const/4 v5, -0x1

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;->d:Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;

    .line 68
    new-instance v0, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;

    const/4 v3, 0x2

    const-string v4, "BOOM_BOOM_SOUND"

    const-string v5, "MESSAGE_SOUND_BOOM_BOOM.mp3"

    invoke-direct {v0, v4, v3, v5, v1}, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;->a:Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;

    .line 54
    sget-object v4, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;->e:Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;->d:Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;->a:Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;->f:[Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;->b:Ljava/lang/String;

    .line 76
    iput p4, p0, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;
    .locals 1

    .line 54
    const-class v0, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;
    .locals 1

    .line 54
    sget-object v0, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;->f:[Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/util/NotificationUtils$NotificationMessageChannelIds;->b:Ljava/lang/String;

    return-object v0
.end method
