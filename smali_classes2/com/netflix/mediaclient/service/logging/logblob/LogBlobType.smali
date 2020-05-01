.class public final enum Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

.field public static final enum b:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

.field public static final enum c:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

.field public static final enum d:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

.field public static final enum e:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

.field public static final enum f:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

.field public static final enum g:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

.field public static final enum h:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

.field public static final enum i:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

.field public static final enum j:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

.field public static final enum l:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

.field public static final enum m:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

.field public static final enum n:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

.field public static final enum o:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

.field private static final synthetic r:[Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;


# instance fields
.field private final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const/4 v1, 0x0

    const-string v2, "OFFLINE_CDN_URL_DOWNLOAD"

    const-string v3, "offlinedlreport"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->c:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const/4 v2, 0x1

    const-string v3, "OFFLINE_LOGBLOB_TYPE"

    const-string v4, "offline"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->a:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const/4 v3, 0x2

    const-string v4, "MDX_LOGBLOB_TYPE"

    const-string v5, "mdx"

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->d:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const/4 v4, 0x3

    const-string v5, "NETWORK_DIAGNOSIS"

    const-string v6, "NetworkDiagnostics"

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->e:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const/4 v5, 0x4

    const-string v6, "MAINTENANCE_JOB"

    const-string v7, "maintenance"

    invoke-direct {v0, v6, v5, v7}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->b:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const/4 v6, 0x5

    const-string v7, "FTL_SESSION"

    const-string v8, "ftlsession"

    invoke-direct {v0, v7, v6, v8}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->f:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const/4 v7, 0x6

    const-string v8, "CRONET_DISABLED"

    const-string v9, "cronet_disabled"

    invoke-direct {v0, v8, v7, v9}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->i:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const/4 v8, 0x7

    const-string v9, "DynamicModule"

    const-string v10, "dynamicModule"

    invoke-direct {v0, v9, v8, v10}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->g:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const/16 v9, 0x8

    const-string v10, "AppUpdate"

    const-string v11, "appUpdate"

    invoke-direct {v0, v10, v9, v11}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->j:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const/16 v10, 0x9

    const-string v11, "SafetyNet"

    const-string v12, "safetyNet"

    invoke-direct {v0, v11, v10, v12}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->h:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const/16 v11, 0xa

    const-string v12, "FTL_RECOVERY"

    const-string v13, "ftlerror"

    invoke-direct {v0, v12, v11, v13}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->o:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const/16 v12, 0xb

    const-string v13, "SignupLanguage"

    const-string v14, "signupLanguage"

    invoke-direct {v0, v13, v12, v14}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->n:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const/16 v13, 0xc

    const-string v14, "VuiCommand"

    const-string v15, "vuiCommand"

    invoke-direct {v0, v14, v13, v15}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->m:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const/16 v14, 0xd

    const-string v15, "LanguageUserOverride"

    const-string v13, "languageUserOverride"

    invoke-direct {v0, v15, v14, v13}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->l:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    .line 14
    sget-object v13, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->c:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    aput-object v13, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->a:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->d:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->e:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->b:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->f:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->i:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->g:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->j:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->h:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->o:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->n:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->m:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->l:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    aput-object v1, v0, v14

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->r:[Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->k:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;
    .locals 1

    .line 14
    const-class v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;
    .locals 1

    .line 14
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->r:[Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->k:Ljava/lang/String;

    return-object v0
.end method
