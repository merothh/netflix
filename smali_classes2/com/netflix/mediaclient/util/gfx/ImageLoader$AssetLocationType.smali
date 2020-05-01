.class public final enum Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation runtime Lcom/netflix/binder/UsedByReflection;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/util/gfx/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AssetLocationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

.field public static final enum b:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

.field public static final enum c:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

.field public static final enum d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

.field private static final synthetic e:[Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 111
    new-instance v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    const/4 v1, 0x0

    const-string v2, "DISKCACHE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    .line 112
    new-instance v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    const/4 v2, 0x1

    const-string v3, "NETWORK"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    .line 113
    new-instance v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    const/4 v3, 0x2

    const-string v4, "MEMCACHE"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->c:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    .line 114
    new-instance v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    const/4 v4, 0x3

    const-string v5, "PLACEHOLDER"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->b:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    .line 109
    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->c:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->b:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->e:[Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;
    .locals 1

    .line 109
    const-class v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;
    .locals 1

    .line 109
    sget-object v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->e:[Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 117
    sget-object v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
