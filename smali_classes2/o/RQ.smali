.class public final synthetic Lo/RQ;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->values()[Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/RQ;->a:[I

    sget-object v0, Lo/RQ;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->a:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/RQ;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->e:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lo/RQ;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->b:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lo/RQ;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->c:Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$ImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
