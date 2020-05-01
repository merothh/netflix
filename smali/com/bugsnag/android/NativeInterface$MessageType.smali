.class public final enum Lcom/bugsnag/android/NativeInterface$MessageType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bugsnag/android/NativeInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bugsnag/android/NativeInterface$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum b:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum c:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum d:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum e:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum f:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum g:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum h:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum i:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum j:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum k:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum l:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum m:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum n:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum o:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum p:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum q:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum r:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum s:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum t:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum u:Lcom/bugsnag/android/NativeInterface$MessageType;

.field public static final enum w:Lcom/bugsnag/android/NativeInterface$MessageType;

.field private static final synthetic x:[Lcom/bugsnag/android/NativeInterface$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 24
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v1, 0x0

    const-string v2, "ADD_BREADCRUMB"

    invoke-direct {v0, v2, v1}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->e:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 29
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v2, 0x1

    const-string v3, "ADD_METADATA"

    invoke-direct {v0, v3, v2}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->b:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 33
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v3, 0x2

    const-string v4, "CLEAR_BREADCRUMBS"

    invoke-direct {v0, v4, v3}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->d:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 38
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v4, 0x3

    const-string v5, "CLEAR_METADATA_TAB"

    invoke-direct {v0, v5, v4}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->a:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 42
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v5, 0x4

    const-string v6, "DELIVER_PENDING"

    invoke-direct {v0, v6, v5}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->c:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 46
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v6, 0x5

    const-string v7, "INSTALL"

    invoke-direct {v0, v7, v6}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->j:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 50
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v7, 0x6

    const-string v8, "NOTIFY_HANDLED"

    invoke-direct {v0, v8, v7}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->g:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 54
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v8, 0x7

    const-string v9, "NOTIFY_UNHANDLED"

    invoke-direct {v0, v9, v8}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->i:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 59
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v9, 0x8

    const-string v10, "REMOVE_METADATA"

    invoke-direct {v0, v10, v9}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->h:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 65
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v10, 0x9

    const-string v11, "START_SESSION"

    invoke-direct {v0, v11, v10}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->f:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 70
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v11, 0xa

    const-string v12, "STOP_SESSION"

    invoke-direct {v0, v12, v11}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->n:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 76
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v12, 0xb

    const-string v13, "UPDATE_APP_VERSION"

    invoke-direct {v0, v13, v12}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->k:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 81
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v13, 0xc

    const-string v14, "UPDATE_BUILD_UUID"

    invoke-direct {v0, v14, v13}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->l:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 85
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v14, 0xd

    const-string v15, "UPDATE_CONTEXT"

    invoke-direct {v0, v15, v14}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->o:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 91
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v15, 0xe

    const-string v14, "UPDATE_IN_FOREGROUND"

    invoke-direct {v0, v14, v15}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->m:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 96
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const-string v14, "UPDATE_LOW_MEMORY"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->s:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 101
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const-string v14, "UPDATE_METADATA"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->r:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 106
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const-string v14, "UPDATE_ORIENTATION"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->q:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 111
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const-string v14, "UPDATE_RELEASE_STAGE"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->p:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 115
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const-string v14, "UPDATE_USER_EMAIL"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->t:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 119
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const-string v14, "UPDATE_USER_NAME"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->u:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 123
    new-instance v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    const-string v14, "UPDATE_USER_ID"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lcom/bugsnag/android/NativeInterface$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->w:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v0, 0x16

    new-array v0, v0, [Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 20
    sget-object v14, Lcom/bugsnag/android/NativeInterface$MessageType;->e:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v14, v0, v1

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->b:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->d:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->a:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->c:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->j:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->g:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->i:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->h:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->f:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->n:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->k:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->l:Lcom/bugsnag/android/NativeInterface$MessageType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->o:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->m:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->s:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->r:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->q:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->p:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->t:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->u:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->w:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->x:[Lcom/bugsnag/android/NativeInterface$MessageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bugsnag/android/NativeInterface$MessageType;
    .locals 1

    .line 20
    const-class v0, Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bugsnag/android/NativeInterface$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/bugsnag/android/NativeInterface$MessageType;
    .locals 1

    .line 20
    sget-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->x:[Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-virtual {v0}, [Lcom/bugsnag/android/NativeInterface$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bugsnag/android/NativeInterface$MessageType;

    return-object v0
.end method
