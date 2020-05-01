.class synthetic Lo/mm$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/mm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->values()[Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/mm$1;->d:[I

    :try_start_0
    sget-object v0, Lo/mm$1;->d:[I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->m:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/mm$1;->d:[I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->f:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
