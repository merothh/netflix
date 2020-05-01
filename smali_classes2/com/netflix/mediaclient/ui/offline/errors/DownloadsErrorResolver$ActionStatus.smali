.class public final enum Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

.field public static final enum b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

.field public static final enum c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

.field public static final enum e:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    const/4 v2, 0x0

    const-string v3, "STARTED"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    const/4 v2, 0x1

    const-string v3, "TIMED_OUT"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;->e:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    const/4 v2, 0x2

    const-string v3, "ENDED"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;->c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;->a:[Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;->a:[Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;

    return-object v0
.end method
