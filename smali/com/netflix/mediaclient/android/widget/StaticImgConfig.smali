.class public final enum Lcom/netflix/mediaclient/android/widget/StaticImgConfig;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/android/widget/StaticImgConfig;",
        ">;",
        "Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

.field public static final enum b:Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

.field public static final enum c:Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

.field public static final enum d:Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

.field public static final enum e:Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

.field private static final synthetic j:[Lcom/netflix/mediaclient/android/widget/StaticImgConfig;


# instance fields
.field private final f:I

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->E:I

    const/4 v2, 0x0

    const-string v3, "DARK_NO_PLACEHOLDER"

    invoke-direct {v0, v3, v2, v2, v1}, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->c:Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bZ:I

    const/4 v3, 0x1

    const-string v4, "LIGHT_NO_PLACEHOLDER"

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->a:Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->E:I

    sget v4, Lcom/netflix/mediaclient/ui/R$Activity;->E:I

    const/4 v5, 0x2

    const-string v6, "DARK"

    invoke-direct {v0, v6, v5, v1, v4}, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->b:Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bZ:I

    sget v4, Lcom/netflix/mediaclient/ui/R$Activity;->bZ:I

    const/4 v6, 0x3

    const-string v7, "LIGHT"

    invoke-direct {v0, v7, v6, v1, v4}, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->e:Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    const/4 v1, 0x4

    const-string v4, "NO_PLACEHOLDER_NO_ERROR"

    invoke-direct {v0, v4, v1, v2, v2}, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->d:Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    .line 10
    sget-object v4, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->c:Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    aput-object v4, v0, v2

    sget-object v2, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->a:Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    aput-object v2, v0, v3

    sget-object v2, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->b:Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    aput-object v2, v0, v5

    sget-object v2, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->e:Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    aput-object v2, v0, v6

    sget-object v2, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->d:Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->j:[Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->f:I

    .line 23
    iput p4, p0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/android/widget/StaticImgConfig;
    .locals 1

    .line 10
    const-class v0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/android/widget/StaticImgConfig;
    .locals 1

    .line 10
    sget-object v0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->j:[Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/android/widget/StaticImgConfig;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->h:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->f:I

    return v0
.end method

.method public e()Z
    .locals 1

    .line 27
    iget v0, p0, Lcom/netflix/mediaclient/android/widget/StaticImgConfig;->f:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
