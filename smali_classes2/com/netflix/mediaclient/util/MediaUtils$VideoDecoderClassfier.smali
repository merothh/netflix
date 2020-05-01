.class final enum Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/util/MediaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VideoDecoderClassfier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

.field public static final enum b:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

.field public static final enum c:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

.field public static final enum d:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

.field public static final enum e:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

.field public static final enum j:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

.field private static final synthetic n:[Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;


# instance fields
.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 32
    new-instance v8, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const-string v1, "AVC"

    const/4 v2, 0x0

    const-string v3, "video/avc"

    const/4 v4, 0x2

    const/16 v5, 0x800

    const/16 v6, 0x200

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v8, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->a:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const-string v10, "AVC_HP"

    const/4 v11, 0x1

    const-string v12, "video/avc"

    const/16 v13, 0x8

    const/16 v14, 0x800

    const/16 v15, 0x200

    const/16 v16, 0x100

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->c:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    .line 42
    new-instance v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const-string v2, "VP9"

    const/4 v3, 0x2

    const-string v4, "video/x-vnd.on2.vp9"

    const/4 v5, 0x1

    const/16 v6, 0x40

    const/16 v7, 0x20

    const/16 v8, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->b:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    .line 47
    new-instance v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const-string v10, "HEVC"

    const/4 v11, 0x3

    const-string v12, "video/hevc"

    const/4 v13, 0x1

    const/16 v14, 0x400

    const/16 v15, 0x100

    const/16 v16, 0x40

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->e:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    .line 52
    new-instance v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const-string v2, "HEVC10"

    const/4 v3, 0x4

    const-string v4, "video/hevc"

    const/4 v5, 0x2

    const/16 v6, 0x400

    const/16 v7, 0x100

    const/16 v8, 0x40

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->d:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    .line 57
    new-instance v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const-string v10, "HDR10"

    const/4 v11, 0x5

    const-string v12, "video/hevc"

    const/16 v13, 0x1000

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->j:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    .line 31
    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->a:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->c:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->b:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->e:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->d:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->j:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->n:[Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p3, p0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->o:Ljava/lang/String;

    .line 69
    iput p4, p0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->f:I

    .line 70
    iput p5, p0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->g:I

    .line 71
    iput p6, p0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->i:I

    .line 72
    iput p7, p0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->h:I

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->f:I

    return p0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->h:I

    return p0
.end method

.method static synthetic d(Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->i:I

    return p0
.end method

.method static synthetic e(Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->g:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;
    .locals 1

    .line 31
    const-class v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;
    .locals 1

    .line 31
    sget-object v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->n:[Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    return-object v0
.end method
