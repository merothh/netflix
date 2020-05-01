.class public final enum Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/job/NetflixJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetflixJobId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field public static final enum b:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field public static final enum c:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field public static final enum d:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field public static final enum e:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field public static final enum f:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field public static final enum g:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field public static final enum h:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field public static final enum i:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field public static final enum j:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field public static final enum k:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field private static final synthetic l:[Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field public static final enum o:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;


# instance fields
.field private final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 81
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_JOB_ID"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->d:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 82
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v2, 0x1

    const-string v3, "DOWNLOAD_RESUME"

    invoke-direct {v0, v3, v2, v2}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->c:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 83
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v3, 0x2

    const-string v4, "NETFLIX_MAINTENANCE"

    invoke-direct {v0, v4, v3, v3}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 84
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v4, 0x3

    const-string v5, "INSOMNIA"

    invoke-direct {v0, v5, v4, v4}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->a:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 85
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v5, 0x4

    const-string v6, "INSTALL_TOKEN"

    invoke-direct {v0, v6, v5, v5}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->e:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 86
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v6, 0x5

    const-string v7, "PUSH_NOTIFICATION"

    invoke-direct {v0, v7, v6, v6}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->g:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 87
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v7, 0x6

    const-string v8, "MEDIA_PREFETCH"

    invoke-direct {v0, v8, v7, v7}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->h:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 88
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v8, 0x7

    const-string v9, "SMART_DOWNLOAD_RESUME"

    invoke-direct {v0, v9, v8, v8}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->i:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 89
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/16 v9, 0x8

    const-string v10, "MEDIA_PREFETCH_ON_CW"

    invoke-direct {v0, v10, v9, v9}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->j:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 90
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/16 v10, 0x9

    const-string v11, "CL_RETRY"

    invoke-direct {v0, v11, v10, v10}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->f:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 91
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/16 v11, 0xa

    const-string v12, "LOGBLOB_RETRY"

    invoke-direct {v0, v12, v11, v11}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->o:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 92
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/16 v12, 0xb

    const-string v13, "PDS_RETRY"

    invoke-direct {v0, v13, v12, v12}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->k:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 79
    sget-object v13, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->d:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    aput-object v13, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->c:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->a:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->e:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->g:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->h:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->i:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->j:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    aput-object v1, v0, v9

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->f:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    aput-object v1, v0, v10

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->o:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    aput-object v1, v0, v11

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->k:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    aput-object v1, v0, v12

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->l:[Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput p3, p0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->n:I

    return-void
.end method

.method public static d(I)Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;
    .locals 5

    .line 106
    invoke-static {}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->values()[Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 107
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_1
    sget-object p0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->d:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;
    .locals 1

    .line 79
    const-class v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;
    .locals 1

    .line 79
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->l:[Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->n:I

    return v0
.end method
