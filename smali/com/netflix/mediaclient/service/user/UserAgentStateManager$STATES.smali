.class final enum Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;
.super Ljava/lang/Enum;
.source "UserAgentStateManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

.field public static final enum FATAL_ERROR:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

.field public static final enum INIT:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

.field public static final enum NEED_ACTIVATE_PROFILE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

.field public static final enum NEED_CHANGE_PROFILE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

.field public static final enum NEED_CHANGE_PROFILE_FROM_PRIMARY:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

.field public static final enum NEED_CREATE_DEVACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

.field public static final enum NEED_DEACTIVATE_ACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

.field public static final enum NEED_EMAIL_ACTIVATE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

.field public static final enum NEED_ESN_MIGRATION:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

.field public static final enum NEED_FETCH_PROFILE_DATA:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

.field public static final enum NEED_SELECT_DEVACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

.field public static final enum NEED_TOKEN_ACTIVATE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

.field public static final enum NEED_VALIDATE_PROFILE_DATA:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

.field public static final enum PROFILE_ACTIVATED:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

.field public static final enum WAIT_ACTIVATE_ACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

.field public static final enum WAIT_SELECT_PROFILE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->INIT:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v1, "NEED_CREATE_DEVACC"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_CREATE_DEVACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v1, "NEED_SELECT_DEVACC"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_SELECT_DEVACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v1, "NEED_ESN_MIGRATION"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_ESN_MIGRATION:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v1, "NEED_DEACTIVATE_ACC"

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_DEACTIVATE_ACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v1, "WAIT_ACTIVATE_ACC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->WAIT_ACTIVATE_ACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v1, "NEED_EMAIL_ACTIVATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_EMAIL_ACTIVATE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v1, "NEED_TOKEN_ACTIVATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_TOKEN_ACTIVATE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v1, "NEED_ACTIVATE_PROFILE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_ACTIVATE_PROFILE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v1, "NEED_FETCH_PROFILE_DATA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_FETCH_PROFILE_DATA:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v1, "WAIT_SELECT_PROFILE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->WAIT_SELECT_PROFILE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v1, "NEED_CHANGE_PROFILE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_CHANGE_PROFILE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v1, "NEED_CHANGE_PROFILE_FROM_PRIMARY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_CHANGE_PROFILE_FROM_PRIMARY:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v1, "PROFILE_ACTIVATED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->PROFILE_ACTIVATED:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v1, "NEED_VALIDATE_PROFILE_DATA"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_VALIDATE_PROFILE_DATA:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v1, "FATAL_ERROR"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->FATAL_ERROR:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    sget-object v1, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->INIT:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_CREATE_DEVACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_SELECT_DEVACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_ESN_MIGRATION:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_DEACTIVATE_ACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->WAIT_ACTIVATE_ACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_EMAIL_ACTIVATE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_TOKEN_ACTIVATE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_ACTIVATE_PROFILE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_FETCH_PROFILE_DATA:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->WAIT_SELECT_PROFILE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_CHANGE_PROFILE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_CHANGE_PROFILE_FROM_PRIMARY:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->PROFILE_ACTIVATED:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_VALIDATE_PROFILE_DATA:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->FATAL_ERROR:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->$VALUES:[Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->$VALUES:[Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    return-object v0
.end method
