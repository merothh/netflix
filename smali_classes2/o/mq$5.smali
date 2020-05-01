.class synthetic Lo/mq$5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/mq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->values()[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/mq$5;->a:[I

    :try_start_0
    sget-object v0, Lo/mq$5;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/mq$5;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lo/mq$5;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lo/mq$5;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lo/mq$5;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lo/mq$5;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->f:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lo/mq$5;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->j:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lo/mq$5;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lo/mq$5;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lo/mq$5;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lo/mq$5;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->m:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lo/mq$5;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lo/mq$5;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->o:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lo/mq$5;->a:[I

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->n:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
