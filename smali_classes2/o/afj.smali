.class public final synthetic Lo/afj;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic b:[I

.field public static final synthetic c:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/bumptech/glide/load/DataSource;->values()[Lcom/bumptech/glide/load/DataSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/afj;->b:[I

    sget-object v0, Lo/afj;->b:[I

    sget-object v1, Lcom/bumptech/glide/load/DataSource;->a:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/DataSource;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/afj;->b:[I

    sget-object v1, Lcom/bumptech/glide/load/DataSource;->b:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/DataSource;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lo/afj;->b:[I

    sget-object v1, Lcom/bumptech/glide/load/DataSource;->c:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/DataSource;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lo/afj;->b:[I

    sget-object v1, Lcom/bumptech/glide/load/DataSource;->d:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/DataSource;->ordinal()I

    move-result v1

    const/4 v4, 0x4

    aput v4, v0, v1

    sget-object v0, Lo/afj;->b:[I

    sget-object v1, Lcom/bumptech/glide/load/DataSource;->e:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/DataSource;->ordinal()I

    move-result v1

    const/4 v4, 0x5

    aput v4, v0, v1

    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/afj;->c:[I

    sget-object v0, Lo/afj;->c:[I

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lo/afj;->c:[I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
