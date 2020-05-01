.class public final enum Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

.field public static final enum b:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

.field public static final enum c:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

.field public static final enum d:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

.field private static final synthetic i:[Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;


# instance fields
.field e:I

.field f:Landroid/graphics/Matrix;

.field j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    const-string v1, "CROP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->b:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    const-string v1, "ZOOM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v1}, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->d:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    const-string v1, "FIT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v1}, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->a:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    const-string v1, "MATRIX"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5, v1}, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->c:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    .line 9
    sget-object v1, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->b:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->d:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->a:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->c:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->i:[Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->e:I

    .line 29
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->j:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;
    .locals 1

    .line 9
    const-class v0, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;
    .locals 1

    .line 9
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->i:[Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    return-object v0
.end method


# virtual methods
.method public c()Landroid/graphics/Matrix;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->f:Landroid/graphics/Matrix;

    return-object v0
.end method
