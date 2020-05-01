.class public final enum Lcom/netflix/mediaclient/ui/ums/ThemeAsset;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/ums/ThemeAsset;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

.field private static final synthetic b:[Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

.field public static final enum c:Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

.field public static final enum d:Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

.field public static final enum e:Lcom/netflix/mediaclient/ui/ums/ThemeAsset;


# instance fields
.field private final f:I

.field private final i:I

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    new-instance v7, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    .line 315
    sget v4, Lcom/netflix/mediaclient/ui/R$Activity;->cN:I

    .line 317
    sget v6, Lcom/netflix/mediaclient/ui/R$Activity;->cP:I

    const-string v2, "AZURE"

    const/4 v3, 0x0

    const-string v5, "referral_modal_background_azure.webp"

    move-object v1, v7

    .line 314
    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v7, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->e:Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    .line 320
    sget v11, Lcom/netflix/mediaclient/ui/R$Activity;->cW:I

    .line 322
    sget v13, Lcom/netflix/mediaclient/ui/R$Activity;->cO:I

    const-string v9, "LIME"

    const/4 v10, 0x1

    const-string v12, "referral_modal_background_lime.webp"

    move-object v8, v1

    .line 319
    invoke-direct/range {v8 .. v13}, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->c:Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    .line 325
    sget v6, Lcom/netflix/mediaclient/ui/R$Activity;->cS:I

    .line 327
    sget v8, Lcom/netflix/mediaclient/ui/R$Activity;->cU:I

    const-string v4, "VIOLET"

    const/4 v5, 0x2

    const-string v7, "referral_modal_background_violet.webp"

    move-object v3, v1

    .line 324
    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->a:Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    .line 330
    sget v6, Lcom/netflix/mediaclient/ui/R$Activity;->cV:I

    .line 332
    sget v8, Lcom/netflix/mediaclient/ui/R$Activity;->cR:I

    const-string v4, "MAGENTA"

    const/4 v5, 0x3

    const-string v7, "referral_modal_background_magenta.webp"

    move-object v3, v1

    .line 329
    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->d:Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->b:[Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 309
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->i:I

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->j:Ljava/lang/String;

    iput p5, p0, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/ums/ThemeAsset;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/ums/ThemeAsset;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->b:[Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 310
    iget v0, p0, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->i:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->f:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->j:Ljava/lang/String;

    return-object v0
.end method
