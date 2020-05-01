.class public final enum Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;
.super Ljava/lang/Enum;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

.field public static final enum DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

.field public static final enum DARK_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

.field public static final enum LIGHT:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

.field public static final enum LIGHT_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

.field public static final NO_PLACEHOLDER:I


# instance fields
.field private final onFailResId:I

.field private final placeholderResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const v4, 0x7f020181

    const v2, 0x7f0200a5

    const/4 v3, 0x0

    .line 82
    new-instance v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    const-string/jumbo v1, "DARK_NO_PLACEHOLDER"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    .line 83
    new-instance v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    const-string/jumbo v1, "LIGHT_NO_PLACEHOLDER"

    invoke-direct {v0, v1, v5, v3, v4}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->LIGHT_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    .line 84
    new-instance v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    const-string/jumbo v1, "DARK"

    invoke-direct {v0, v1, v6, v2, v2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    .line 85
    new-instance v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    const-string/jumbo v1, "LIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->LIGHT:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    sget-object v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->LIGHT_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->LIGHT:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->$VALUES:[Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput p3, p0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->placeholderResId:I

    .line 94
    iput p4, p0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->onFailResId:I

    .line 95
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->$VALUES:[Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    return-object v0
.end method


# virtual methods
.method public getOnFailResId()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->onFailResId:I

    return v0
.end method

.method public getPlaceholderResId()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->placeholderResId:I

    return v0
.end method

.method public shouldShowPlaceholder()Z
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->placeholderResId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
