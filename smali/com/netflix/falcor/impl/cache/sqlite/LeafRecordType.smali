.class public final enum Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

.field public static final enum b:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

.field public static final enum c:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

.field public static final enum d:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

.field public static final enum e:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

.field public static final enum f:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

.field public static final enum g:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

.field public static final enum h:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

.field public static final enum i:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

.field private static final synthetic o:[Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;


# instance fields
.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 11
    new-instance v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ATOM_STRING"

    invoke-direct {v0, v3, v1, v2}, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->a:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 16
    new-instance v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    const/4 v3, 0x2

    const-string v4, "ATOM_NUMBER"

    invoke-direct {v0, v4, v2, v3}, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->e:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 21
    new-instance v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    const/4 v4, 0x3

    const-string v5, "ATOM_BOOLEAN"

    invoke-direct {v0, v5, v3, v4}, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->c:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 26
    new-instance v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    const/4 v5, 0x4

    const-string v6, "ATOM_NULL"

    invoke-direct {v0, v6, v4, v5}, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->b:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 31
    new-instance v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    const/4 v6, 0x5

    const-string v7, "ATOM_JSON"

    invoke-direct {v0, v7, v5, v6}, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->d:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 36
    new-instance v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    const/4 v7, 0x6

    const-string v8, "REF"

    invoke-direct {v0, v8, v6, v7}, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->g:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 41
    new-instance v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    const/4 v8, 0x7

    const-string v9, "UNDEFINED"

    invoke-direct {v0, v9, v7, v8}, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->h:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 46
    new-instance v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    const/16 v9, 0x8

    const-string v10, "ERROR"

    invoke-direct {v0, v10, v8, v9}, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->f:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 51
    new-instance v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    const/16 v10, 0x9

    const-string v11, "LEAFY_OBJECT"

    invoke-direct {v0, v11, v9, v10}, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->i:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    new-array v0, v10, [Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    .line 6
    sget-object v10, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->a:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    aput-object v10, v0, v1

    sget-object v1, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->e:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->c:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->b:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->d:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->g:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->h:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->f:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->i:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->o:[Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->j:I

    return-void
.end method

.method public static b(I)Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_0
    sget-object p0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->i:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    return-object p0

    .line 68
    :pswitch_1
    sget-object p0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->f:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    return-object p0

    .line 67
    :pswitch_2
    sget-object p0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->h:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    return-object p0

    .line 66
    :pswitch_3
    sget-object p0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->g:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    return-object p0

    .line 65
    :pswitch_4
    sget-object p0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->d:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    return-object p0

    .line 64
    :pswitch_5
    sget-object p0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->b:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    return-object p0

    .line 63
    :pswitch_6
    sget-object p0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->c:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    return-object p0

    .line 62
    :pswitch_7
    sget-object p0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->e:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    return-object p0

    .line 61
    :pswitch_8
    sget-object p0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->a:Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->o:[Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    invoke-virtual {v0}, [Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/falcor/impl/cache/sqlite/LeafRecordType;

    return-object v0
.end method
