.class public final synthetic Lo/afe;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic e:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/facebook/imagepipeline/common/Priority;->values()[Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/afe;->e:[I

    sget-object v0, Lo/afe;->e:[I

    sget-object v1, Lcom/facebook/imagepipeline/common/Priority;->b:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/common/Priority;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/afe;->e:[I

    sget-object v1, Lcom/facebook/imagepipeline/common/Priority;->c:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/common/Priority;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lo/afe;->e:[I

    sget-object v1, Lcom/facebook/imagepipeline/common/Priority;->d:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/common/Priority;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
