.class public final enum Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaybackTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

.field public static final enum b:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

.field public static final enum c:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

.field private static final synthetic d:[Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

.field public static final enum e:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 75
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    const/4 v1, 0x0

    const-string v2, "local"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->a:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    .line 76
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    const/4 v2, 0x1

    const-string v3, "remote"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->e:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    .line 77
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    const/4 v3, 0x2

    const-string v4, "remoteButNotAvailable"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->b:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    .line 78
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    const/4 v4, 0x3

    const-string v5, "localButDisabled"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->c:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    .line 74
    sget-object v5, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->a:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->e:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->b:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->c:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->d:[Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;
    .locals 1

    .line 74
    const-class v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;
    .locals 1

    .line 74
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->d:[Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    return-object v0
.end method
