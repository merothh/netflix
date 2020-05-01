.class public final enum Lcom/netflix/mediaclient/util/l10n/BidiMarker;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/util/l10n/BidiMarker;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

.field public static final enum c:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

.field public static final enum d:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

.field public static final enum e:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

.field private static final synthetic i:[Lcom/netflix/mediaclient/util/l10n/BidiMarker;


# instance fields
.field a:C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    const/4 v1, 0x0

    const-string v2, "FORCED_RTL"

    const/16 v3, 0x200f

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/util/l10n/BidiMarker;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->b:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    const/4 v2, 0x1

    const-string v3, "FORCED_LTR"

    const/16 v4, 0x200e

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/util/l10n/BidiMarker;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->c:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    const/4 v3, 0x2

    const-string v4, "EMBEDDING_RTL"

    const/16 v5, 0x202b

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/util/l10n/BidiMarker;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->e:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    const/4 v4, 0x3

    const-string v5, "EMBEDDING_LTR"

    const/16 v6, 0x202a

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/util/l10n/BidiMarker;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->d:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    .line 6
    sget-object v5, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->b:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->c:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->e:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->d:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->i:[Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-char p3, p0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->a:C

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/util/l10n/BidiMarker;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/util/l10n/BidiMarker;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->i:[Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/util/l10n/BidiMarker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    return-object v0
.end method


# virtual methods
.method public a()C
    .locals 1

    .line 19
    iget-char v0, p0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->a:C

    return v0
.end method
