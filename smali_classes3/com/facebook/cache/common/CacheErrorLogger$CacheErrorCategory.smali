.class public final enum Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/common/CacheErrorLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheErrorCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

.field public static final enum b:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

.field public static final enum c:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

.field public static final enum d:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

.field public static final enum e:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

.field public static final enum f:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

.field public static final enum g:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

.field public static final enum h:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

.field public static final enum i:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

.field public static final enum j:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

.field public static final enum k:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

.field public static final enum l:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

.field public static final enum m:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

.field public static final enum n:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

.field public static final enum o:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

.field public static final enum p:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

.field private static final synthetic q:[Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

.field public static final enum r:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 21
    new-instance v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/4 v1, 0x0

    const-string v2, "READ_DECODE"

    invoke-direct {v0, v2, v1}, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->a:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 22
    new-instance v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/4 v2, 0x1

    const-string v3, "READ_FILE"

    invoke-direct {v0, v3, v2}, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->b:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 23
    new-instance v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/4 v3, 0x2

    const-string v4, "READ_FILE_NOT_FOUND"

    invoke-direct {v0, v4, v3}, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->e:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 24
    new-instance v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/4 v4, 0x3

    const-string v5, "READ_INVALID_ENTRY"

    invoke-direct {v0, v5, v4}, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->c:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 26
    new-instance v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/4 v5, 0x4

    const-string v6, "WRITE_ENCODE"

    invoke-direct {v0, v6, v5}, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->d:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 27
    new-instance v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/4 v6, 0x5

    const-string v7, "WRITE_CREATE_TEMPFILE"

    invoke-direct {v0, v7, v6}, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->h:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 28
    new-instance v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/4 v7, 0x6

    const-string v8, "WRITE_UPDATE_FILE_NOT_FOUND"

    invoke-direct {v0, v8, v7}, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->g:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 29
    new-instance v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/4 v8, 0x7

    const-string v9, "WRITE_RENAME_FILE_TEMPFILE_NOT_FOUND"

    invoke-direct {v0, v9, v8}, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->i:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 30
    new-instance v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/16 v9, 0x8

    const-string v10, "WRITE_RENAME_FILE_TEMPFILE_PARENT_NOT_FOUND"

    invoke-direct {v0, v10, v9}, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->j:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 31
    new-instance v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/16 v10, 0x9

    const-string v11, "WRITE_RENAME_FILE_OTHER"

    invoke-direct {v0, v11, v10}, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->f:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 32
    new-instance v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/16 v11, 0xa

    const-string v12, "WRITE_CREATE_DIR"

    invoke-direct {v0, v12, v11}, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->l:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 33
    new-instance v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/16 v12, 0xb

    const-string v13, "WRITE_CALLBACK_ERROR"

    invoke-direct {v0, v13, v12}, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->m:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 34
    new-instance v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/16 v13, 0xc

    const-string v14, "WRITE_INVALID_ENTRY"

    invoke-direct {v0, v14, v13}, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->o:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 36
    new-instance v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/16 v14, 0xd

    const-string v15, "DELETE_FILE"

    invoke-direct {v0, v15, v14}, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->n:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 38
    new-instance v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/16 v15, 0xe

    const-string v14, "EVICTION"

    invoke-direct {v0, v14, v15}, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->k:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 39
    new-instance v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const-string v14, "GENERIC_IO"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->p:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 40
    new-instance v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const-string v14, "OTHER"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->r:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 20
    sget-object v14, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->a:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    aput-object v14, v0, v1

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->b:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->e:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->c:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->d:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->h:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->g:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->i:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    aput-object v1, v0, v8

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->j:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    aput-object v1, v0, v9

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->f:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    aput-object v1, v0, v10

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->l:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    aput-object v1, v0, v11

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->m:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    aput-object v1, v0, v12

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->o:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    aput-object v1, v0, v13

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->n:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->k:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->p:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->r:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->q:[Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;
    .locals 1

    .line 20
    const-class v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    return-object p0
.end method

.method public static values()[Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;
    .locals 1

    .line 20
    sget-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->q:[Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    invoke-virtual {v0}, [Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    return-object v0
.end method
