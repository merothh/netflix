.class public final enum Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/player/IPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerFragmentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

.field public static final enum c:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

.field public static final enum d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

.field public static final enum e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

.field private static final synthetic j:[Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;


# instance fields
.field final b:I

.field final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 70
    new-instance v0, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    const/4 v1, 0x0

    const-string v2, "ACTIVITY_NOTREADY"

    const-string v3, "NOTREADY"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->c:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    .line 71
    new-instance v0, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    const/4 v2, 0x1

    const-string v3, "ACTIVITY_SRVCMNGR_READY"

    const-string v4, "SRVCMNGR_READY"

    invoke-direct {v0, v3, v2, v2, v4}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    .line 72
    new-instance v0, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    const/4 v3, 0x2

    const-string v4, "ACTIVITY_PLAYER_READY"

    const-string v5, "PLAYER_READY"

    invoke-direct {v0, v4, v3, v3, v5}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    .line 73
    new-instance v0, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    const/4 v4, 0x3

    const-string v5, "ACTIVITY_PLAYER_LOADING_NEXT"

    const-string v6, "PLAYER_LOADING_NEXT"

    invoke-direct {v0, v5, v4, v4, v6}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->a:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    .line 69
    sget-object v5, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->c:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->e:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->a:Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->j:[Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->b:I

    .line 80
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->i:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;
    .locals 1

    .line 69
    const-class v0, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;
    .locals 1

    .line 69
    sget-object v0, Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->j:[Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/player/IPlayerFragment$PlayerFragmentState;

    return-object v0
.end method
