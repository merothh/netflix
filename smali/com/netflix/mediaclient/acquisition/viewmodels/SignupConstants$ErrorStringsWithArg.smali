.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$ErrorStringsWithArg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ErrorStringsWithArg"
.end annotation


# static fields
.field private static final CARRIER:[Ljava/lang/String;

.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$ErrorStringsWithArg;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 755
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$ErrorStringsWithArg;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$ErrorStringsWithArg;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$ErrorStringsWithArg;->INSTANCE:Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$ErrorStringsWithArg;

    const-string v0, "invalid_phone"

    const-string v1, "mop_disallowed"

    const-string v2, "dcb_pai_already_used"

    const-string v3, "dcb_insufficient_funds"

    const-string v4, "invalid_customerid"

    .line 756
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$ErrorStringsWithArg;->CARRIER:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCARRIER()[Ljava/lang/String;
    .locals 1

    .line 756
    sget-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/SignupConstants$ErrorStringsWithArg;->CARRIER:[Ljava/lang/String;

    return-object v0
.end method
