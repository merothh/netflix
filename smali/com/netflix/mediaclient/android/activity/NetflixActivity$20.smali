.class synthetic Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 3923
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->values()[Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->e:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->e:[I

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->e:[I

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->e:[I

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 3499
    :catch_2
    invoke-static {}, Lcom/netflix/mediaclient/StatusCode;->values()[Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    :try_start_3
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->bq:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->bs:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->by:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->bw:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->bu:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->bt:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->bx:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->bv:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->bz:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    const/16 v5, 0x9

    aput v5, v3, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->bB:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    const/16 v5, 0xa

    aput v5, v3, v4
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->bD:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    const/16 v5, 0xb

    aput v5, v3, v4
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->bA:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    const/16 v5, 0xc

    aput v5, v3, v4
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->aD:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    const/16 v5, 0xd

    aput v5, v3, v4
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->aE:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    const/16 v5, 0xe

    aput v5, v3, v4
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->aF:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    const/16 v5, 0xf

    aput v5, v3, v4
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->K:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    const/16 v5, 0x10

    aput v5, v3, v4
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->L:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    const/16 v5, 0x11

    aput v5, v3, v4
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->ac:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    const/16 v5, 0x12

    aput v5, v3, v4
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->cD:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    const/16 v5, 0x13

    aput v5, v3, v4
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->cH:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    const/16 v5, 0x14

    aput v5, v3, v4
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->a:[I

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->cF:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    const/16 v5, 0x15

    aput v5, v3, v4
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    .line 1349
    :catch_17
    invoke-static {}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->values()[Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->b:[I

    :try_start_18
    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->b:[I

    sget-object v4, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->b:[I

    sget-object v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$20;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    return-void
.end method
