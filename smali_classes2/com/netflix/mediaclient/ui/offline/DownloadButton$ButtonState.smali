.class public final enum Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field public static final enum b:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field public static final enum c:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field public static final enum d:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field public static final enum e:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field public static final enum f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field public static final enum g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field public static final enum h:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field public static final enum i:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

.field private static final synthetic j:[Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 78
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    const/4 v1, 0x0

    const-string v2, "AVAILABLE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->e:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 79
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    const/4 v2, 0x1

    const-string v3, "NOT_AVAILABLE"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->d:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 80
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    const/4 v3, 0x2

    const-string v4, "SAVED"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 81
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    const/4 v4, 0x3

    const-string v5, "DOWNLOADING"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->c:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 82
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    const/4 v5, 0x4

    const-string v6, "PAUSED"

    invoke-direct {v0, v6, v5}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->b:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 83
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    const/4 v6, 0x5

    const-string v7, "QUEUED"

    invoke-direct {v0, v7, v6}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->i:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 84
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    const/4 v7, 0x6

    const-string v8, "PRE_QUEUED"

    invoke-direct {v0, v8, v7}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->h:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 85
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    const/4 v8, 0x7

    const-string v9, "ERROR"

    invoke-direct {v0, v9, v8}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 86
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    const/16 v9, 0x8

    const-string v10, "WAITING_FOR_WIFI"

    invoke-direct {v0, v10, v9}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 77
    sget-object v10, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->e:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    aput-object v10, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->d:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->a:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->c:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->b:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->i:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->h:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    aput-object v1, v0, v9

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->j:[Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;
    .locals 1

    .line 77
    const-class v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;
    .locals 1

    .line 77
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->j:[Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object v0
.end method
