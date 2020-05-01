.class public final synthetic Lo/BasicTagTechnology;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->values()[Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/BasicTagTechnology;->a:[I

    sget-object v0, Lo/BasicTagTechnology;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->b:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/BasicTagTechnology;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->a:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lo/BasicTagTechnology;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->d:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lo/BasicTagTechnology;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->c:Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader$AssetLocationType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
