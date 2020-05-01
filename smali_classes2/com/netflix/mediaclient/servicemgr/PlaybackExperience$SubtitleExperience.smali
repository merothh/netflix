.class public final enum Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubtitleExperience"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

.field public static final enum c:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

.field private static final synthetic d:[Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

.field public static final enum e:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;->c:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    const/4 v2, 0x1

    const-string v3, "FORCED_VISIBLE_ON_MUTE"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;->e:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    const/4 v3, 0x2

    const-string v4, "DISABLED"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;->a:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    .line 23
    sget-object v4, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;->c:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;->e:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;->a:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;->d:[Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;
    .locals 1

    .line 23
    const-class v0, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;
    .locals 1

    .line 23
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;->d:[Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    return-object v0
.end method
