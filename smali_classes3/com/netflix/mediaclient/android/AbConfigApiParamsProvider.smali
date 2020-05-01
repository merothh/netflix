.class public final enum Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/cC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;",
        ">;",
        "Lo/cC;"
    }
.end annotation


# static fields
.field private static final synthetic c:[Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;

.field public static final enum e:Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;->e:Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;

    .line 17
    sget-object v2, Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;->e:Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;->c:[Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;
    .locals 1

    .line 17
    const-class v0, Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;
    .locals 1

    .line 17
    sget-object v0, Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;->c:[Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/android/AbConfigApiParamsProvider;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;Lo/aec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/aec<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
